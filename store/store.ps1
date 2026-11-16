<#
  store.ps1 - product pages for kimtoo.net/store (static HTML, Tailwind CDN)
    .\store.ps1                 build every published product
    .\store.ps1 -New browser    scaffold browser\product.json + pricing.json (draft), then build
    .\store.ps1 -Only browser   build just that product
    .\store.ps1 -Watch          watch essential files for write changes, log affected files, and rebuild
  Put screenshot-0.png, screenshot-1.png ... (png/jpg/webp), box.png, box.plus.png in the product folder.
  pricing.json options: "cta": "Download" (main button label), "buttons": [ { "label": "Download Demo", "url": "..." }, { "label": "Watch Demo", "url": "..." } ]
    (optional secondary buttons under the main button; a YouTube/Vimeo/.mp4 url gets a play icon, anything else a download icon).
    A paid product's "download": { url, label } is also shown as a secondary button when "buttons" is not set.
  Set "status": "published" in product.json when ready. Edit the CONFIG & TEMPLATES block below for site-wide settings.
#>
[CmdletBinding()]
param([string]$New, [string]$Only, [switch]$Watch)

$ErrorActionPreference = 'Stop'
$Root = $PSScriptRoot
if (-not $Root) { $Root = (Get-Location).Path }
$Inv = [System.Globalization.CultureInfo]::InvariantCulture
$Utf8 = New-Object System.Text.UTF8Encoding($false)

# ============================== CONFIG & TEMPLATES ==============================
$SITE = @{
    Name = 'KimToo Store'; BaseUrl = 'https://kimtoo.net/store/'; Home = 'https://kimtoo.net'
    Support = 'support@kimtoo.net'; Currency = 'USD'; Symbol = '$'
    LogoLight = 'https://kimtoo.net/images/logo-wide.webp'; LogoDark = 'https://kimtoo.net/images/logo-wide-dark.webp'
}
$SLIDESHOW = @{ Autoplay = $true; Interval = 5000 }   # Interval in ms; autoplay is off for visitors who prefer reduced motion
# Google Analytics 4. Enabled = $false turns it off everywhere. Events = $true also tracks view_item, begin_checkout (pay buttons),
# cta_click and demo_click. Per product in product.json: "analytics": false to disable, "analyticsId": "G-XXXX" to use another property.
$ANALYTICS = @{ Enabled = $true; Id = 'G-8RDLCMTFXX'; Events = $true }
# Tawk.to live chat. Enabled = $false removes it everywhere; per product in product.json: "chat": false to disable, "chatSrc": "https://embed.tawk.to/<property>/<widget>" to use another widget.
$CHAT = @{ Enabled = $true; Src = 'https://embed.tawk.to/6306a5d437898912e964fc2b/1gb8vfi4s' }
# Embed mode (page inside an iframe, or ?embed=1): clicking anywhere on the page does this. 'self' reloads the page inside the frame
# as the full interactive page (the frame grows to fit if the host page uses the resize snippet), 'tab' opens the full page in a new tab, 'top' navigates the host page.
$EMBED = @{ Click = 'top' }
$CTA_DEFAULT = 'Download'        # main button label; override per product with "cta" in pricing.json
$PRICE_LABEL = 'As low as'       # shown above the lowest price when a product has more than one paid plan
$SALE = @{ Active = $false; Label = 'Black Friday'; Message = 'Sale prices applied automatically.' }
$PLANS = [ordered]@{
    single = @{ name = 'Portable Template'; short = 'Portable'; tagline = 'The template with one KimTools version bundled'
                who = 'For teams that want the template only, or already own KimTools.'; box = 'box.png'; badge = ''
                includes = @('Full project source', 'One KimTools version bundled for offline use', 'Bug fixes for buyers') }
    bundle = @{ name = 'Template + KimTools'; short = 'Bundle'; tagline = 'The template plus a full KimTools license'
                who = 'For developers who want the template and KimTools for every project.'; box = 'box.plus.png'; badge = 'Popular'
                includes = @('Everything in Portable Template', 'Full KimTools license', 'KimTools updates under your license') }
}
$PROVIDERS = @(
    @{ id = 'polar'; name = 'Polar'; logo = ''; color = 'blue'; note = 'Card, Google Pay, Apple Pay'; tags = @('Instant delivery', 'Card', 'Apple Pay', 'Google Pay'); rec = $true },
    @{ id = 'payhip'; name = 'Payhip'; logo = ''; color = ''; note = 'PayPal & Card checkout'; tags = @('PayPal', 'Card'); rec = $true },
    @{ id = 'gumroad'; name = 'Gumroad'; logo = ''; color = ''; note = 'Alternative checkout'; tags = @('Gumroad'); rec = $false }
)
# Checkout card colors (use the name in pricing.json "color", or any #rrggbb / #rgb). fg = text color on the card.
$PROVIDER_COLORS = @{
    blue    = @{ bg = '#2563eb'; fg = '#ffffff' }
    indigo  = @{ bg = '#4f46e5'; fg = '#ffffff' }
    violet  = @{ bg = '#7c3aed'; fg = '#ffffff' }
    purple  = @{ bg = '#9333ea'; fg = '#ffffff' }
    pink    = @{ bg = '#db2777'; fg = '#ffffff' }
    rose    = @{ bg = '#e11d48'; fg = '#ffffff' }
    red     = @{ bg = '#dc2626'; fg = '#ffffff' }
    orange  = @{ bg = '#ea580c'; fg = '#ffffff' }
    amber   = @{ bg = '#f59e0b'; fg = '#1c1303' }
    gold    = @{ bg = '#e6b422'; fg = '#1c1303' }
    emerald = @{ bg = '#059669'; fg = '#ffffff' }
    green   = @{ bg = '#16a34a'; fg = '#ffffff' }
    teal    = @{ bg = '#0d9488'; fg = '#ffffff' }
    cyan    = @{ bg = '#0891b2'; fg = '#ffffff' }
    slate   = @{ bg = '#1e293b'; fg = '#ffffff'; dbg = '#e2e8f0'; dfg = '#020617' }
}
$TRUST_ITEMS = @('Lifetime license, no subscription', 'Offline activation', 'Bug fixes for buyers')
$TIER_LABELS = @{ free = 'Free'; premium = 'Premium' }
$LANG_LABELS = @{ csharp = 'C#'; vb = 'VB.NET'; blazor = 'Blazor' }
$TYPE_LABELS = @{ 'ui-framework' = 'UI framework'; 'project-template' = 'Project template'; 'item-template' = 'Item / Control template' }

$SLIDE_TEMPLATE = @'
      <figure class="w-full h-full shrink-0 basis-full" role="group" aria-roledescription="slide" aria-label="{{n}} of {{total}}">
        <a href="{{href}}" data-lb data-alt="{{alt}}" draggable="false" class="block w-full h-full cursor-zoom-in">
          <img src="{{src}}" alt="{{alt}}"{{sizeAttr}} loading="{{load}}"{{prio}} draggable="false" class="block w-full h-full object-contain select-none">
        </a>
      </figure>
'@

$THUMB_TEMPLATE = @'
        <button type="button" data-i="{{i}}" aria-label="Show screenshot {{n}}"{{current}} class="ss-t shrink-0 overflow-hidden rounded-md border-2 border-transparent opacity-60 transition hover:opacity-100 aria-[current=true]:border-blue-500 aria-[current=true]:opacity-100 focus-visible:outline focus-visible:outline-2 focus-visible:outline-blue-500">
          <img src="{{src}}" alt="" loading="lazy" draggable="false" class="block h-14 w-24 object-cover">
        </button>
'@

$SLIDESHOW_CONTROLS_TEMPLATE = @'
      <button id="ss-p" type="button" aria-label="Previous screenshot" class="absolute left-3 top-1/2 -translate-y-1/2 flex h-10 w-10 items-center justify-center rounded-full bg-black/50 text-white transition hover:bg-black/70 lg:opacity-0 group-hover/ss:opacity-100 focus-visible:opacity-100">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M15 18l-6-6 6-6"/></svg>
      </button>
      <button id="ss-n" type="button" aria-label="Next screenshot" class="absolute right-3 top-1/2 -translate-y-1/2 flex h-10 w-10 items-center justify-center rounded-full bg-black/50 text-white transition hover:bg-black/70 lg:opacity-0 group-hover/ss:opacity-100 focus-visible:opacity-100">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M9 18l6-6-6-6"/></svg>
      </button>
      <span id="ss-count" class="absolute bottom-3 right-3 rounded-full bg-black/50 px-2.5 py-1 text-[11px] text-white" aria-hidden="true">1 / {{total}}</span>
'@

$SLIDESHOW_TEMPLATE = @'
    <div id="ss" role="region" aria-roledescription="carousel" aria-label="{{label}}">
      <div id="ss-view" data-auto="{{auto}}" class="group/ss relative w-full max-h-[75vh] overflow-hidden rounded-xl bg-gray-100 shadow-lg shadow-black/15 dark:bg-slate-900 dark:shadow-black/60" style="aspect-ratio:{{ratio}};touch-action:pan-y">
        <div id="ss-track" class="absolute inset-0 flex transition-transform duration-500 ease-out">
{{slides}}
        </div>
{{controls}}
      </div>
{{thumbs}}
    </div>
'@

$SECONDARY_BTN_TEMPLATE = @'
<a href="{{url}}"{{ext}} data-track="demo" data-label="{{label}}" class="flex min-w-[9rem] flex-1 items-center justify-center gap-2 rounded-lg border border-black/20 px-4 py-2.5 text-xs font-medium uppercase tracking-wider text-gray-900 transition-all hover:bg-black/5 dark:border-white/20 dark:text-white dark:hover:bg-white/10">{{icon}}<span>{{label}}</span></a>
'@

$ICON_PLAY = '<svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><path d="M8 5v14l11-7z"/></svg>'
$ICON_DOWNLOAD = '<svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M12 3v12m0 0l-5-5m5 5l5-5M5 21h14"/></svg>'

$FEATURE_ITEM_TEMPLATE = @'
        <li class="flex gap-3 py-2.5 border-b border-black/10 dark:border-white/10 text-sm">
          <span class="shrink-0 text-blue-500">{{index}}</span>
          <div>
            <p class="font-medium text-gray-900 dark:text-white">{{title}}</p>
            {{textHtml}}
          </div>
        </li>
'@

$CHANGELOG_ROW_TEMPLATE = @'
        <li class="grid sm:grid-cols-[7rem_7rem_1fr] gap-2 sm:gap-4 py-3 border-t border-black/10 dark:border-white/10 text-sm">
          <span class="font-medium">v{{version}}</span>
          <time class="opacity-60">{{date}}</time>
          <p>{{notes}}</p>
        </li>
'@

$FAQ_ITEM_TEMPLATE = @'
      <details class="py-3 border-t border-black/10 dark:border-white/10">
        <summary class="cursor-pointer font-medium">{{q}}</summary>
        <p class="mt-2 text-sm opacity-80 max-w-3xl">{{a}}</p>
      </details>
'@

$PLAN_CARD_TEMPLATE = @'
      <label class="group relative flex flex-col gap-1 cursor-pointer rounded-lg border p-5 shadow-sm bg-white border-black/15 dark:bg-slate-900 dark:border-white/15 has-[:checked]:border-blue-500 has-[:checked]:ring-2 has-[:checked]:ring-blue-500 has-[:focus-visible]:outline has-[:focus-visible]:outline-2 has-[:focus-visible]:outline-offset-2 has-[:disabled]:cursor-not-allowed has-[:disabled]:opacity-60">
        <input class="sr-only" type="radio" name="plan" value="{{key}}"{{checked}}{{disabled}}>
        {{checkSvg}}
        <span class="pr-8 font-display font-medium text-lg text-gray-900 dark:text-white">{{name}}{{badge}}</span>
        <span class="text-sm opacity-80">{{tagline}}</span>
        {{whoHtml}}
        <span class="mt-3 flex flex-wrap items-baseline gap-2 text-xl font-medium text-blue-600 dark:text-blue-400">{{oldPrice}}{{priceText}}{{offLabel}}</span>
      </label>
'@

$CHECKOUT_CARD_TEMPLATE = @'
          <a href="{{url}}" target="_blank" rel="noopener"{{extra}}{{track}} class="{{cardCls}} group flex items-stretch overflow-hidden rounded-xl shadow-md shadow-black/25 ring-1 ring-black/20 transition-all hover:-translate-y-0.5 hover:shadow-lg hover:shadow-black/30 hover:brightness-110 dark:shadow-black/60 dark:ring-white/15"{{styleAttr}}>
            <div class="min-w-0 flex-1 p-4">
              <p class="font-display font-medium text-base leading-snug">{{title}}</p>
              {{descHtml}}
              {{tagsHtml}}
            </div>
            <div class="logo-fade flex shrink-0 items-center gap-2.5 pl-10 pr-4">
              {{logoHtml}}
              <span class="text-base text-slate-700 transition-transform group-hover:translate-x-0.5" aria-hidden="true">&rarr;</span>
            </div>
          </a>
'@

$PLAN_SUMMARY_TEMPLATE = @'
      <div data-links="{{key}}" class="rounded-lg border shadow-sm bg-white border-black/15 dark:bg-slate-900 dark:border-white/15">
        <div class="flex items-start justify-between gap-4 px-6 pt-6">
          <div class="flex gap-4 min-w-0">
            {{boxImg}}
            <div class="min-w-0">
              <p class="font-display font-medium text-lg text-gray-900 dark:text-white">{{name}}</p>
              <p class="mt-1 text-sm opacity-70">{{tagline}}</p>
            </div>
          </div>
          <div class="text-right shrink-0">
            {{oldPriceHtml}}
            <div class="flex items-baseline justify-end gap-2">
              <p class="font-display font-medium text-2xl sm:text-3xl text-gray-900 dark:text-white">{{priceText}}</p>
              {{offLabelHtml}}
            </div>
          </div>
        </div>
        <ul class="space-y-1 px-6 pt-5 pb-5 text-sm">{{includesHtml}}</ul>
        <div class="border-t border-black/10 dark:border-white/10 p-6">
          <p class="mb-3 text-[11px] uppercase tracking-widest opacity-60">Pay with</p>
          <div class="grid gap-3">{{recHtml}}</div>
          {{altHtml}}
          <p class="mt-4 text-center text-xs opacity-60">Secure checkout. One-time payment.</p>
        </div>
      </div>
'@

$PAGE_TEMPLATE = @'
<!-- generated by store.ps1 - edit store.ps1 or the product json files, not this file -->
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{{title}}</title>
<meta name="description" content="{{desc}}">
<meta name="author" content="Kimutai Kipngetich">
{{keywords}}
<link rel="canonical" href="{{canonical}}">
<meta property="og:type" content="product">
<meta property="og:site_name" content="{{siteName}}">
<meta property="og:title" content="{{title}}">
<meta property="og:description" content="{{desc}}">
<meta property="og:url" content="{{canonical}}">
{{ogimage}}
<link rel="icon" href="https://kimtoo.net/favicon.ico">
<script>(function(){var t=null;try{t=localStorage.getItem('docmd-theme')}catch(e){}var d=t?t==='dark':window.matchMedia('(prefers-color-scheme: dark)').matches;document.documentElement.classList.toggle('dark',d)})();</script>
<script>(function(){var e=false;try{e=window.self!==window.top}catch(x){e=true}try{var q=location.search;if(/[?&]embed=1(&|$)/.test(q))e=true;else if(/[?&]embed=0(&|$)/.test(q))e=false}catch(x){}if(e)document.documentElement.classList.add('embed')})();(function(){try{if(window.self!==window.top)document.documentElement.classList.add('framed')}catch(x){document.documentElement.classList.add('framed')}})();</script>
<script src="https://cdn.tailwindcss.com"></script>
<script>tailwind.config={darkMode:'class',theme:{extend:{fontFamily:{mono:['JetBrains Mono','monospace'],display:['Plus Jakarta Sans','sans-serif']}}}}</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;500;600&family=Plus+Jakarta+Sans:wght@400;500;600&display=swap" rel="stylesheet">
<style>
html{scroll-behavior:smooth}
@media (prefers-reduced-motion:reduce){html{scroll-behavior:auto}*{transition:none!important}}
.font-display{font-family:'Plus Jakarta Sans',sans-serif;letter-spacing:0}
.btn-grad{background:#111827;color:#ffffff}
.btn-grad:hover{background:#1f2937}
.pcard{background:var(--c);color:var(--ct)}
.dark .pcard{background:var(--dc,var(--c));color:var(--dct,var(--ct))}
.logo-fade{background:linear-gradient(90deg,rgba(255,255,255,0),#fff 2.25rem)}
.dark .btn-grad{background:#ffffff;color:#080b10}
.dark .btn-grad:hover{background:#e5e7eb}
.banner-bar{background:linear-gradient(90deg,#28A8B7,#198DB2,#0F7AAF,#1569AD,#575DAE,#9153B0)}
::-webkit-scrollbar{width:6px;height:6px}::-webkit-scrollbar-thumb{background:#3B82F644;border-radius:3px}
.aside-scroll{max-height:calc(100vh - 7rem);overflow-y:auto}
.embed nav,.embed footer,.embed #pricing,.embed #bar,.embed #changelog,.embed #faq,.embed .embed-hide{display:none!important}
.embed body{cursor:pointer}
.framed aside{position:static!important}
.framed .aside-scroll{max-height:none;overflow:visible;padding-right:0}
.framed #ss-view{max-height:none}
@media (max-width:1023px){.aside-scroll{max-height:none;overflow:visible}}
</style>
<script type="application/ld+json">{{jsonld}}</script>
{{ga}}
</head>
<body class="font-mono bg-white text-gray-700 dark:bg-[#080b10] dark:text-gray-300 transition-colors duration-300">
{{saleBanner}}
<nav class="sticky top-0 z-50 border-b shadow-sm bg-white/95 border-black/10 dark:bg-slate-800/95 dark:border-white/10" style="backdrop-filter:blur(16px)">
  <div class="max-w-[110rem] mx-auto px-6 lg:px-10 flex items-center justify-between h-16">
    <div class="flex items-center gap-2">
      <a href="{{home}}" aria-label="Back to kimtoo.net" class="-ml-2 w-10 h-10 rounded-full flex items-center justify-center text-blue-600 hover:bg-black/5 dark:text-blue-400 dark:hover:bg-white/10 transition-colors">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M15 18l-6-6 6-6"/></svg>
      </a>
      <a href="{{home}}" class="flex items-center">
        <img src="{{logoLight}}" alt="KimTools" class="py-2 dark:hidden" style="height:46px">
        <img src="{{logoDark}}" alt="KimTools" class="py-2 hidden dark:block" style="height:46px">
      </a>
    </div>
    <button id="theme" type="button" aria-label="Toggle light and dark theme" class="w-9 h-9 rounded-lg flex items-center justify-center text-gray-500 hover:text-gray-900 hover:bg-black/10 dark:text-gray-400 dark:hover:text-white dark:hover:bg-white/10">
      <svg class="hidden dark:block" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="4"/><path d="M12 2v2M12 20v2M4.93 4.93l1.41 1.41M17.66 17.66l1.41 1.41M2 12h2M20 12h2M6.34 17.66l-1.41 1.41M19.07 4.93l-1.41 1.41"/></svg>
      <svg class="dark:hidden" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 3a6 6 0 0 0 9 9 9 9 0 1 1-9-9Z"/></svg>
    </button>
  </div>
</nav>

<main id="main">
<section class="max-w-[110rem] mx-auto px-6 lg:px-10 py-8 grid lg:grid-cols-5 gap-10 items-start">
  <div class="lg:col-span-3 min-w-0">
{{slideshow}}
  </div>

  <aside class="lg:col-span-2 lg:sticky lg:top-24 lg:self-start min-w-0" aria-label="Product details">
   <div class="aside-scroll lg:pr-2">
    <p class="text-xs uppercase tracking-widest opacity-60 mb-3">{{kicker}}</p>
    <h1 class="font-display font-medium text-2xl md:text-3xl leading-snug text-gray-900 dark:text-white">{{h1}}</h1>
    <p class="mt-3 text-sm opacity-80">{{tagline}}</p>
    <div class="mt-5 rounded-xl border border-black/10 dark:border-white/10 bg-gray-50/80 dark:bg-slate-900/70 p-5">
      <p class="text-xl font-medium text-blue-600 dark:text-blue-400">{{priceHtml}}</p>
      <a href="#pricing" data-track="cta" data-loc="top" class="btn-grad mt-4 flex items-center justify-center rounded-lg px-6 py-3 text-xs font-medium uppercase tracking-wider transition-all">{{ctaLabel}}</a>
      {{secondary}}
      {{features}}
    </div>
    <p class="mt-6 flex flex-wrap gap-2">{{chips}}</p>
    <div class="embed-hide">
    <div class="mt-6 space-y-3 text-sm leading-relaxed">{{descHtml}}</div>
    {{highlights}}
    {{reqs}}
    {{boxes}}
    </div>
   </div>
  </aside>
</section>

{{changelog}}
{{pricing}}
{{faq}}
</main>

<footer class="border-t mt-20 border-black/10 bg-white dark:border-white/10 dark:bg-[#0d0f14]">
  <div class="max-w-[110rem] mx-auto px-6 lg:px-10 py-10 flex flex-col sm:flex-row gap-4 justify-between text-sm">
    <p class="opacity-60">&copy; {{year}} KimTools. All Rights Reserved.</p>
    <p><a class="text-blue-500 hover:underline" href="mailto:{{support}}">{{support}}</a></p>
  </div>
</footer>

<div id="bar" class="lg:hidden fixed bottom-0 inset-x-0 z-40 flex items-center justify-between gap-4 px-5 py-3 border-t bg-white border-black/10 dark:bg-slate-900 dark:border-white/10 transition-transform">
  <span class="font-medium text-blue-600 dark:text-blue-400">{{priceRange}}</span>
  <a href="#pricing" data-track="cta" data-loc="bar" class="btn-grad rounded-lg px-5 py-2.5 text-xs font-medium uppercase tracking-wider">{{ctaLabel}}</a>
</div>

<div id="lb" class="hidden fixed inset-0 z-[100] bg-black/90 items-center justify-center" role="dialog" aria-modal="true" aria-label="Screenshot viewer">
  <button id="lb-x" type="button" aria-label="Close" class="absolute top-4 right-4 w-11 h-11 rounded-lg bg-white/10 text-white text-2xl hover:bg-white/20">&times;</button>
  <button id="lb-p" type="button" aria-label="Previous" class="absolute left-4 top-1/2 w-11 h-11 rounded-lg bg-white/10 text-white text-xl hover:bg-white/20">&larr;</button>
  <img id="lb-i" src="" alt="" class="max-w-[92vw] max-h-[86vh] rounded-lg shadow-2xl">
  <button id="lb-n" type="button" aria-label="Next" class="absolute right-4 top-1/2 w-11 h-11 rounded-lg bg-white/10 text-white text-xl hover:bg-white/20">&rarr;</button>
</div>

<script>
(function(){
  var root=document.documentElement;
  document.getElementById('theme').addEventListener('click',function(){var d=!root.classList.contains('dark');root.classList.toggle('dark',d);try{localStorage.setItem('docmd-theme',d?'dark':'light')}catch(e){}});
  var lastT=undefined;
  var readT=function(){var t=null;try{t=localStorage.getItem('docmd-theme')}catch(e){}return t==='dark'||t==='light'?t:null};
  var applyT=function(t){var d=t?t==='dark':window.matchMedia('(prefers-color-scheme: dark)').matches;root.classList.toggle('dark',d)};
  var syncTheme=function(){var t=readT();if(t===lastT)return;lastT=t;applyT(t)};
  lastT=readT();
  window.addEventListener('storage',function(e){if(e.key===null||e.key==='docmd-theme')syncTheme()});
  if(root.classList.contains('embed')||root.classList.contains('framed')){
    setInterval(syncTheme,400);
    document.addEventListener('visibilitychange',function(){if(!document.hidden)syncTheme()});window.addEventListener('focus',syncTheme);
    window.addEventListener('message',function(e){var m=e.data;if(!m||typeof m!=='object')return;var t=m.type==='docmd-theme'||m.type==='kt-theme'?(m.theme||m.value):null;if(t==='dark'||t==='light'){lastT=t;applyT(t)}});
  }

  var shots=[].slice.call(document.querySelectorAll('[data-lb]')),lb=document.getElementById('lb'),img=document.getElementById('lb-i'),cur=-1,last=null;
  function show(i){cur=(i+shots.length)%shots.length;img.src=shots[cur].getAttribute('href');img.alt=shots[cur].getAttribute('data-alt')||''}
  function open(i){last=document.activeElement;stop();show(i);lb.classList.remove('hidden');lb.classList.add('flex');document.body.style.overflow='hidden';document.getElementById('lb-x').focus()}
  function close(){var k=cur;lb.classList.add('hidden');lb.classList.remove('flex');document.body.style.overflow='';cur=-1;if(k>=0)go(k);play();if(last)last.focus()}
  shots.forEach(function(a,i){a.addEventListener('click',function(e){e.preventDefault();open(i)})});
  document.getElementById('lb-x').onclick=close;
  document.getElementById('lb-p').onclick=function(){show(cur-1)};
  document.getElementById('lb-n').onclick=function(){show(cur+1)};
  lb.addEventListener('click',function(e){if(e.target===lb)close()});
  document.addEventListener('keydown',function(e){
    if(cur<0)return;
    if(e.key==='Escape')close();else if(e.key==='ArrowRight')show(cur+1);else if(e.key==='ArrowLeft')show(cur-1);
    else if(e.key==='Tab'){var b=[].slice.call(lb.querySelectorAll('button')),f=b[0],l=b[b.length-1];
      if(e.shiftKey&&document.activeElement===f){e.preventDefault();l.focus()}else if(!e.shiftKey&&document.activeElement===l){e.preventDefault();f.focus()}}
  });

  var view=document.getElementById('ss-view'),track=document.getElementById('ss-track'),cnt=document.getElementById('ss-count'),tc=document.getElementById('ss-thumbs'),
      slides=track?[].slice.call(track.children):[],thumbs=[].slice.call(document.querySelectorAll('.ss-t')),idx=0,timer=null,paused=false,dragX=null,swiped=false,
      auto=view?(parseInt(view.getAttribute('data-auto'),10)||0):0;
  if(window.matchMedia&&window.matchMedia('(prefers-reduced-motion: reduce)').matches)auto=0;
  function stop(){if(timer){clearTimeout(timer);timer=null}}
  function play(){stop();if(auto>0&&!paused&&slides.length>1&&!document.hidden)timer=setTimeout(function(){go(idx+1);play()},auto)}
  function go(i,user){
    if(!track||!slides.length)return;
    idx=(i+slides.length)%slides.length;
    track.style.transform='translateX(-'+(idx*100)+'%)';
    if(cnt)cnt.textContent=(idx+1)+' / '+slides.length;
    slides.forEach(function(f,k){f.setAttribute('aria-hidden',k===idx?'false':'true');var a=f.querySelector('a');if(a)a.tabIndex=k===idx?0:-1});
    thumbs.forEach(function(t,k){if(k===idx){t.setAttribute('aria-current','true');if(tc)tc.scrollLeft=t.offsetLeft-(tc.clientWidth-t.offsetWidth)/2}else t.removeAttribute('aria-current')});
    if(user)play();
  }
  if(view&&slides.length){
    go(0);
    var bp=document.getElementById('ss-p'),bn=document.getElementById('ss-n');
    if(bp)bp.addEventListener('click',function(){go(idx-1,true)});
    if(bn)bn.addEventListener('click',function(){go(idx+1,true)});
    if(tc)tc.addEventListener('click',function(e){var b=e.target.closest?e.target.closest('button[data-i]'):null;if(b)go(parseInt(b.getAttribute('data-i'),10),true)});
    view.addEventListener('pointerdown',function(e){if(e.pointerType==='mouse'&&e.button!==0)return;dragX=e.clientX;swiped=false});
    view.addEventListener('pointerup',function(e){if(dragX===null)return;var dx=e.clientX-dragX;dragX=null;if(Math.abs(dx)>40){swiped=true;go(idx+(dx<0?1:-1),true)}});
    view.addEventListener('pointercancel',function(){dragX=null});
    view.addEventListener('click',function(e){if(swiped){e.preventDefault();e.stopPropagation();swiped=false}},true);
    document.getElementById('ss').addEventListener('keydown',function(e){if(cur>=0)return;if(e.key==='ArrowLeft'){go(idx-1,true)}else if(e.key==='ArrowRight'){go(idx+1,true)}});
    view.addEventListener('mouseenter',function(){paused=true;stop()});
    view.addEventListener('mouseleave',function(){paused=false;play()});
    view.addEventListener('focusin',function(){paused=true;stop()});
    view.addEventListener('focusout',function(){paused=false;play()});
    document.addEventListener('visibilitychange',function(){if(document.hidden)stop();else play()});
    play();
  }
  var pr=document.getElementById('pricing'),bar=document.getElementById('bar');
  if(pr&&bar&&'IntersectionObserver' in window)new IntersectionObserver(function(en){bar.style.transform=en[0].isIntersecting?'translateY(110%)':''}).observe(pr);

  function sel(){var r=document.querySelector('input[name=plan]:checked');if(!r)return;
    [].forEach.call(document.querySelectorAll('[data-links]'),function(e){e.hidden=e.getAttribute('data-links')!==r.value})}
  [].forEach.call(document.querySelectorAll('input[name=plan]'),function(r){r.addEventListener('change',sel)});sel();

  var TRK={{trk}};
  document.addEventListener('click',function(e){
    var a=e.target.closest?e.target.closest('a[data-track]'):null;if(!a||typeof gtag!=='function')return;
    var now=Date.now();if(a._t&&now-a._t<1500)return;a._t=now;
    var t=a.getAttribute('data-track'),d=a.dataset;
    if(t==='checkout')gtag('event','begin_checkout',{currency:TRK.cur,value:parseFloat(d.value)||0,payment_provider:d.provider,items:[{item_id:TRK.id,item_name:TRK.name,item_variant:d.plan}]});
    else if(t==='demo')gtag('event','demo_click',{link_text:d.label,link_url:a.href,item_id:TRK.id});
    else gtag('event','cta_click',{location:d.loc,item_id:TRK.id});
  });

  if(root.classList.contains('embed')){[].forEach.call(document.querySelectorAll('a[data-track=cta]'),function(a){a.href=TRK.url+'#pricing';a.target=TRK.click==='top'?'_top':'_blank';a.rel='noopener'})}

  if(root.classList.contains('framed')&&window.parent!==window){
    var hs=0,raf=0;
    var sendH=function(){raf=0;var h=Math.ceil(document.body.getBoundingClientRect().height);if(h&&h!==hs){hs=h;try{window.parent.postMessage({type:'kt-embed-height',height:h,id:TRK.id},'*')}catch(e){}}};
    var qh=function(){if(!raf)raf=requestAnimationFrame(sendH)};
    if('ResizeObserver' in window)new ResizeObserver(qh).observe(document.body);
    window.addEventListener('load',qh);window.addEventListener('resize',qh);qh();
  }

  if(root.classList.contains('embed')){
    var px=0,py=0;
    document.addEventListener('pointerdown',function(e){px=e.clientX;py=e.clientY},true);
    document.addEventListener('click',function(e){
      var t=e.target;if(!t||!t.closest)return;
      if(t.closest('button,a[target=_blank],a[target=_top]'))return;
      if(Math.abs(e.clientX-px)>10||Math.abs(e.clientY-py)>10)return;
      e.preventDefault();e.stopPropagation();
      if(typeof gtag==='function')gtag('event','embed_click',{item_id:TRK.id});
      if(TRK.click==='tab'){window.open(TRK.url,'_blank','noopener')}
      else if(TRK.click==='top'){try{window.top.location.href=TRK.url}catch(x){window.open(TRK.url,'_blank','noopener')}}
      else{location.href=location.pathname+'?embed=0'+location.hash}
    },true);
  }

  var polar=false;
  document.addEventListener('click',function(e){
    var a=e.target.closest?e.target.closest('a[data-polar-checkout]'):null;if(!a||polar)return;
    e.preventDefault();polar=true;
    a.setAttribute('data-polar-checkout-theme',root.classList.contains('dark')?'dark':'light');
    var s=document.createElement('script');s.src='https://cdn.jsdelivr.net/npm/@polar-sh/checkout@0.1/dist/embed.global.js';s.setAttribute('data-auto-init','');
    s.onload=function(){setTimeout(function(){a.click()},60)};
    s.onerror=function(){window.open(a.href,'_blank','noopener')};
    document.head.appendChild(s);
  });
})();
</script>
{{chat}}
</body>
</html>
'@
# ====================================================================

function Render-Tpl([string]$Tpl, [hashtable]$Vars) {
    $out = $Tpl
    foreach ($k in $Vars.Keys) {
        $out = $out.Replace('{{' + $k + '}}', [string]$Vars[$k])
    }
    return $out
}

function Esc($v) { if ($null -eq $v) { return '' } return [System.Net.WebUtility]::HtmlEncode([string]$v) }
function L($x) { if ($null -eq $x) { return @() } return @($x) }
function V($o, [string]$name, $def) {
    if ($null -eq $o) { return $def }
    $p = $o.PSObject.Properties[$name]
    if ($null -eq $p -or $null -eq $p.Value) { return $def }
    return $p.Value
}
function S($v) { if ($v -is [datetime]) { return $v.ToString('yyyy-MM-dd', $Inv) } if ($null -eq $v) { return '' } return [string]$v }
function Todo($v) { return ((S $v) -match '^\s*TODO') }

function Unlock-Target([string]$Path) {
    if (-not (Test-Path -LiteralPath $Path)) { return }
    try {
        $item = Get-Item -LiteralPath $Path -Force -ErrorAction Stop
        if (($item.Attributes -band [System.IO.FileAttributes]::ReadOnly) -ne 0) {
            $item.Attributes = $item.Attributes -band (-bnot [System.IO.FileAttributes]::ReadOnly)
        }
    } catch { }
    try {
        Unblock-File -LiteralPath $Path -ErrorAction SilentlyContinue
    } catch { }
}

function Unlock-Self {
    $self = $PSCommandPath
    if (-not $self) { $self = $MyInvocation.MyCommand.Path }
    if ($self -and (Test-Path -LiteralPath $self)) {
        Unlock-Target $self
    }
}

function Write-Out([string]$Path, [string]$Text) {
    $parent = Split-Path -Parent $Path
    if ($parent -and -not (Test-Path -LiteralPath $parent)) {
        New-Item -ItemType Directory -Path $parent -Force | Out-Null
    }
    Unlock-Target $Path
    for ($attempt = 1; $attempt -le 5; $attempt++) {
        try {
            [System.IO.File]::WriteAllText($Path, $Text, $Utf8)
            return
        } catch {
            if ($attempt -eq 5) { throw }
            Unlock-Target $Path
            Start-Sleep -Milliseconds (60 * $attempt)
        }
    }
}

function Money([double]$n) {
    if ($n -eq [math]::Floor($n)) { return $SITE.Symbol + $n.ToString('0', $Inv) }
    return $SITE.Symbol + $n.ToString('0.00', $Inv)
}
function Money2([double]$n) { return $n.ToString('0.00', $Inv) }
function SizeAttr($s) { if ($s[0] -gt 0 -and $s[1] -gt 0) { return (' width="' + $s[0] + '" height="' + $s[1] + '"') } return '' }

function Get-ImageSize([string]$Path) {
    try {
        $b = [System.IO.File]::ReadAllBytes($Path)
        if ($b.Length -gt 24 -and $b[0] -eq 0x89 -and $b[1] -eq 0x50) {
            return @((([int]$b[16] -shl 24) -bor ([int]$b[17] -shl 16) -bor ([int]$b[18] -shl 8) -bor [int]$b[19]),
                     (([int]$b[20] -shl 24) -bor ([int]$b[21] -shl 16) -bor ([int]$b[22] -shl 8) -bor [int]$b[23]))
        }
        if ($b.Length -gt 4 -and $b[0] -eq 0xFF -and $b[1] -eq 0xD8) {
            $i = 2
            while (($i + 9) -lt $b.Length) {
                if ($b[$i] -ne 0xFF) { $i++; continue }
                $m = [int]$b[$i + 1]
                if ($m -eq 0xFF) { $i++; continue }
                if (($m -ge 0xC0) -and ($m -le 0xCF) -and ($m -ne 0xC4) -and ($m -ne 0xC8) -and ($m -ne 0xCC)) {
                    return @((([int]$b[$i + 7] -shl 8) -bor [int]$b[$i + 8]), (([int]$b[$i + 5] -shl 8) -bor [int]$b[$i + 6]))
                }
                if ($m -eq 0xD8 -or $m -eq 0x01 -or (($m -ge 0xD0) -and ($m -le 0xD7))) { $i += 2; continue }
                $i += 2 + (([int]$b[$i + 2] -shl 8) -bor [int]$b[$i + 3])
            }
        }
        if ($b.Length -gt 30 -and [System.Text.Encoding]::ASCII.GetString($b, 8, 4) -eq 'WEBP') {
            $fc = [System.Text.Encoding]::ASCII.GetString($b, 12, 4)
            if ($fc -eq 'VP8 ') { return @(((([int]$b[26]) -bor ([int]$b[27] -shl 8)) -band 0x3FFF), ((([int]$b[28]) -bor ([int]$b[29] -shl 8)) -band 0x3FFF)) }
            if ($fc -eq 'VP8X') { return @((1 + (([int]$b[24]) -bor ([int]$b[25] -shl 8) -bor ([int]$b[26] -shl 16))), (1 + (([int]$b[27]) -bor ([int]$b[28] -shl 8) -bor ([int]$b[29] -shl 16)))) }
            if ($fc -eq 'VP8L') {
                $bits = (([int]$b[21]) -bor ([int]$b[22] -shl 8) -bor ([int]$b[23] -shl 16) -bor ([int]$b[24] -shl 24))
                return @((($bits -band 0x3FFF) + 1), ((($bits -shr 14) -band 0x3FFF) + 1))
            }
        }
    } catch { }
    return @(0, 0)
}

function Get-ContrastText([string]$Hex) {
    $h = $Hex.TrimStart('#')
    if ($h.Length -eq 3) { $h = ($h.ToCharArray() | ForEach-Object { [string]$_ + [string]$_ }) -join '' }
    $lin = @()
    foreach ($i in 0, 2, 4) {
        $v = [Convert]::ToInt32($h.Substring($i, 2), 16) / 255.0
        if ($v -le 0.03928) { $lin += ($v / 12.92) } else { $lin += [math]::Pow(($v + 0.055) / 1.055, 2.4) }
    }
    $l = (0.2126 * $lin[0]) + (0.7152 * $lin[1]) + (0.0722 * $lin[2])
    if ($l -gt 0.28) { return '#0f172a' }
    return '#ffffff'
}

# Returns @{ cls; style; colored }. Named colors and #hex become the .pcard class with CSS variables.
function Resolve-ProviderColor([string]$ColorName, [bool]$IsRec) {
    $c = $ColorName.Trim().ToLowerInvariant()
    if ($c -and $PROVIDER_COLORS.ContainsKey($c)) {
        $d = $PROVIDER_COLORS[$c]
        $st = '--c:' + $d.bg + ';--ct:' + $d.fg + ';'
        if ($d.ContainsKey('dbg')) { $st += '--dc:' + $d.dbg + ';--dct:' + $d.dfg + ';' }
        return @{ cls = 'pcard'; style = $st; colored = $true }
    }
    if ($c -match '^#([0-9a-f]{6}|[0-9a-f]{3})$') {
        return @{ cls = 'pcard'; style = ('--c:' + $c + ';--ct:' + (Get-ContrastText $c) + ';'); colored = $true }
    }
    if ($IsRec) { return @{ cls = 'btn-grad'; style = ''; colored = $false } }
    return @{ cls = 'border border-black/15 dark:border-white/15 bg-gray-50/70 dark:bg-slate-800/50'; style = ''; colored = $false }
}

function Scaffold([string]$Id) {
    $dir = Join-Path $Root $Id
    if (-not (Test-Path -LiteralPath $dir)) { New-Item -ItemType Directory -Path $dir | Out-Null }
    $pj = Join-Path $dir 'product.json'
    $prj = Join-Path $dir 'pricing.json'
    if (-not (Test-Path -LiteralPath $pj)) {
        $t = $Inv.TextInfo.ToTitleCase($Id.Replace('-', ' '))
        $o = [ordered]@{
            status = 'draft'; featured = $false; order = 10; title = $t; tagline = 'TODO'; tier = 'premium'; type = 'project-template'
            languages = @('csharp'); tags = @(); frameworks = @('.NET Framework 4.6.2+', '.NET 8+'); version = '1.0.0'; kimtoolsVersion = 'TODO'
            updated = (Get-Date).ToString('yyyy-MM-dd', $Inv)
            seo = [ordered]@{ title = ''; description = ''; keywords = @() }
            description = @('TODO'); highlights = @('TODO')
            features = @([ordered]@{ title = 'TODO'; text = '' })
            screenshotAlt = @('TODO'); requirements = @('TODO')
            changelog = @()
            faq = @()
        }
        Write-Out $pj ((ConvertTo-Json -InputObject $o -Depth 8) + "`n")
        Write-Host "created $Id/product.json (draft)"
    }
    if (-not (Test-Path -LiteralPath $prj)) {
        $co = @(
            [ordered]@{ provider = 'polar'; title = 'Buy with Polar'; description = 'Card, Apple Pay, Google Pay'; logo = ''; color = 'blue'; tags = @('Card', 'Apple Pay', 'Google Pay'); url = 'TODO' },
            [ordered]@{ provider = 'payhip'; title = 'Buy with Payhip'; description = 'PayPal & Card checkout'; logo = ''; color = ''; tags = @('PayPal', 'Card'); url = ''; productKey = 'TODO' },
            [ordered]@{ provider = 'gumroad'; title = 'Buy with Gumroad'; description = 'Alternative checkout'; logo = ''; color = ''; tags = @('Gumroad'); url = 'TODO' }
        )
        $o = [ordered]@{ free = $false; cta = 'Download'; download = [ordered]@{ url = ''; label = 'Download' }
            buttons = @([ordered]@{ label = 'Download Demo'; url = '' }, [ordered]@{ label = 'Watch Demo'; url = '' })
            plans = [ordered]@{ single = [ordered]@{ price = 0; salePrice = $null; checkout = $co }
                                bundle = [ordered]@{ price = 0; salePrice = $null; checkout = $co } } }
        Write-Out $prj ((ConvertTo-Json -InputObject $o -Depth 8) + "`n")
        Write-Host "created $Id/pricing.json"
    }
}

function Build-Product([string]$Id) {
    $dir = Join-Path $Root $Id
    $rawP = Get-Content -LiteralPath (Join-Path $dir 'product.json') -Raw -Encoding UTF8
    $rawR = Get-Content -LiteralPath (Join-Path $dir 'pricing.json') -Raw -Encoding UTF8
    $p = $rawP | ConvertFrom-Json
    $r = $rawR | ConvertFrom-Json
    if ((S (V $p 'status' 'draft')) -ne 'published') { Write-Host "skip   $Id (draft, set status to published)"; return }
    $warn = @()
    if (($rawP -match 'TODO') -or ($rawR -match 'TODO')) { $warn += 'TODO fields present' }

    $title = S (V $p 'title' $Id)
    $tagline = S (V $p 'tagline' '')
    $tier = (S (V $p 'tier' 'premium')).ToLowerInvariant()
    $type = S (V $p 'type' 'project-template')
    $updated = S (V $p 'updated' '')
    $free = ((V $r 'free' $false) -eq $true)
    $base = $SITE.BaseUrl.TrimEnd('/') + '/'
    $canon = $base + $Id + '/'
    $script:secN = 0
    function H2([string]$id2, [string]$text) {
        $script:secN++
        return '<h2 id="' + $id2 + '-h" class="font-display font-medium text-xl mb-8 text-gray-900 dark:text-white"><span class="text-sm font-mono font-normal opacity-50 mr-2">' + $script:secN.ToString('00') + ' /</span>' + $text + '</h2>'
    }
    $wrapCls = 'max-w-[110rem] mx-auto px-6 lg:px-10'
    $sec = $wrapCls + ' py-10 border-t border-black/10 dark:border-white/10'

    $shots = @()
    $found = @()
    foreach ($f in @(Get-ChildItem -LiteralPath $dir -File)) {
        if ($f.Name -match '^screenshot-(\d+)\.(png|jpe?g|webp)$') { $found += [pscustomobject]@{ n = [int]$Matches[1]; file = $f.Name; path = $f.FullName } }
    }
    foreach ($f in @($found | Sort-Object n)) {
        $sz = Get-ImageSize $f.path
        $shots += [pscustomobject]@{ n = $f.n; src = $f.file; abs = ($base + $Id + '/' + $f.file); w = $sz[0]; h = $sz[1] }
    }
    if ($shots.Count -eq 0) {
        $u = 0
        foreach ($x in @(L (V $p 'screenshots' $null))) {
            if ((S $x) -match '^https?://') { $shots += [pscustomobject]@{ n = $u; src = (S $x); abs = (S $x); w = 0; h = 0 }; $u++ }
        }
    }
    if ($shots.Count -eq 0) { $warn += 'no screenshots' } elseif ($shots[0].n -ne 0) { $warn += 'missing screenshot-0' }
    $alts = @(L (V $p 'screenshotAlt' $null) | ForEach-Object { S $_ })
    $slides = ''; $thumbs = ''
    $i = 0
    foreach ($s in $shots) {
        $alt = ''
        if ($s.n -lt $alts.Count) { $alt = $alts[$s.n] }
        if ([string]::IsNullOrWhiteSpace($alt) -or (Todo $alt)) { $alt = "$title screenshot $($i + 1)" }
        $load = 'lazy'; $prio = ''
        if ($i -eq 0) { $load = 'eager'; $prio = ' fetchpriority="high"' }
        $slides += (Render-Tpl $SLIDE_TEMPLATE @{
            href = (Esc $s.src)
            src = (Esc $s.src)
            alt = (Esc $alt)
            sizeAttr = (SizeAttr @($s.w, $s.h))
            load = $load
            prio = $prio
            n = ($i + 1)
            total = $shots.Count
        })
        $cur = ''; if ($i -eq 0) { $cur = ' aria-current="true"' }
        $thumbs += (Render-Tpl $THUMB_TEMPLATE @{ i = $i; n = ($i + 1); src = (Esc $s.src); current = $cur })
        $i++
    }
    if ($shots.Count -gt 0) {
        $ratio = '16 / 10'
        if ($shots[0].w -gt 0 -and $shots[0].h -gt 0) { $ratio = "$($shots[0].w) / $($shots[0].h)" }
        $multi = ($shots.Count -gt 1)
        $controls = ''; $thumbsHtml = ''; $auto = 0
        if ($multi) {
            $controls = Render-Tpl $SLIDESHOW_CONTROLS_TEMPLATE @{ total = $shots.Count }
            $thumbsHtml = '      <div id="ss-thumbs" role="group" aria-label="Choose screenshot" class="relative mt-3 flex gap-2 overflow-x-auto pb-1">' + "`n" + $thumbs + '      </div>'
            if ($SLIDESHOW.Autoplay -eq $true) { $auto = [int]$SLIDESHOW.Interval }
        }
        $slideshow = Render-Tpl $SLIDESHOW_TEMPLATE @{
            label = (Esc "$title screenshots"); auto = $auto; ratio = $ratio
            slides = $slides; controls = $controls; thumbs = $thumbsHtml
        }
    } else {
        $slideshow = '    <div class="rounded-xl shadow-md p-16 text-center text-sm opacity-60 w-full">Screenshots coming soon</div>'
    }
    # social thumbnail: screenshot-0 (falls back to the first screenshot found)
    $thumb = $null
    foreach ($t in $shots) { if ($t.n -eq 0) { $thumb = $t; break } }
    if ($null -eq $thumb -and $shots.Count -gt 0) { $thumb = $shots[0] }

    $saleOn = ($SALE.Active -eq $true)
    $rootOfferRaw = V $r 'offer' $null
    $rootOfferPct = 0.0
    $hasRootOffer = $false
    if ($null -ne $rootOfferRaw -and (S $rootOfferRaw) -ne '') {
        try {
            $parsedOffer = [double]$rootOfferRaw
            if ($parsedOffer -gt 0) {
                $rootOfferPct = $parsedOffer
                $hasRootOffer = $true
            }
        } catch { }
    }
    $rootOfferLabel = ''
    if ($hasRootOffer) {
        $rootOfferLabel = '-' + $rootOfferPct.ToString('0.##', $Inv) + '%'
    }

    $planKeys = @()
    if ($null -ne $r.plans) { $planKeys = @($r.plans.PSObject.Properties | ForEach-Object { $_.Name }) }
    if ($planKeys.Count -eq 0) { $planKeys = @($PLANS.Keys) }
    $pl = @()
    foreach ($key in $planKeys) {
        $pj = $r.plans.$key
        $d0 = $PLANS[$key]
        $nm = $Inv.TextInfo.ToTitleCase($key)
        if ($null -eq $d0) { $d0 = @{ name = $nm; short = $nm; tagline = ''; who = ''; box = ''; badge = ''; includes = @() } }
        $inc0 = @(L (V $pj 'includes' $null) | ForEach-Object { S $_ })
        if ($inc0.Count -eq 0) { $inc0 = @($d0.includes) }
        $cfg = @{ name = (S (V $pj 'name' $d0.name)); short = (S (V $pj 'short' $d0.short)); tagline = (S (V $pj 'tagline' $d0.tagline))
                  who = (S (V $pj 'who' $d0.who)); box = (S (V $pj 'box' $d0.box)); badge = (S (V $pj 'badge' $d0.badge)); includes = $inc0 }
        $price = 0.0
        try { $price = [double](V $pj 'price' 0) } catch { }
        $eff = $price; $onSale = $false; $offPctText = ''
        if ($hasRootOffer -and $price -gt 0) {
            $eff = [math]::Round($price * (1.0 - ($rootOfferPct / 100.0)), 2)
            if ($eff -lt 0) { $eff = 0 }
            $onSale = $true
            $offPctText = $rootOfferLabel
        } else {
            $sp = V $pj 'salePrice' $null
            if ($saleOn -and $null -ne $sp -and $price -gt 0) {
                try {
                    if ([double]$sp -gt 0) {
                        $eff = [double]$sp
                        $onSale = $true
                        $pctCalc = [math]::Round((($price - $eff) / $price) * 100.0, 0)
                        if ($pctCalc -gt 0) { $offPctText = '-' + $pctCalc.ToString('0', $Inv) + '%' }
                    }
                } catch { }
            }
        }
        $links = @()
        foreach ($c in @(L (V $pj 'checkout' $null))) {
            $pid2 = (S (V $c 'provider' '')).ToLowerInvariant()
            $url = S (V $c 'url' ''); $pk = S (V $c 'productKey' '')
            if (Todo $url) { $url = '' }
            if (Todo $pk) { $pk = '' }
            if ($pid2 -eq 'payhip' -and -not $url -and $pk) { $url = 'https://payhip.com/b/' + $pk }
            if ($url -notmatch '^https?://') { continue }
            $def = $PROVIDERS | Where-Object { $_.id -eq $pid2 } | Select-Object -First 1
            if ($null -eq $def) { $warn += "unknown provider $pid2"; continue }
            $cTitle = S (V $c 'title' '')
            $cDesc = S (V $c 'description' '')
            $cLogo = S (V $c 'logo' '')
            if (Todo $cLogo) { $cLogo = '' }
            if ([string]::IsNullOrWhiteSpace($cLogo) -and $null -ne $def.logo) { $cLogo = S $def.logo }
            $cColor = S (V $c 'color' '')
            if ([string]::IsNullOrWhiteSpace($cColor) -and $null -ne $def.color) { $cColor = S $def.color }
            $cTags = @(L (V $c 'tags' $null) | ForEach-Object { S $_ } | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })
            if ($cTags.Count -eq 0 -and $null -ne $def.tags) {
                $cTags = @($def.tags | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })
            }
            $links += @{ id = $pid2; name = $def.name; note = $def.note; rec = $def.rec; url = $url; title = $cTitle; description = $cDesc; logo = $cLogo; color = $cColor; tags = $cTags }
        }
        if (-not $free) {
            if ($price -le 0) { $warn += "plan ${key}: no price" } elseif ($links.Count -eq 0) { $warn += "plan ${key}: no checkout links" }
        }
        $box = ''; $boxSize = @(0, 0)
        if ($cfg.box -and (Test-Path -LiteralPath (Join-Path $dir $cfg.box))) { $box = $cfg.box; $boxSize = Get-ImageSize (Join-Path $dir $cfg.box) }
        $pl += @{ key = $key; cfg = $cfg; price = $price; eff = $eff; onSale = $onSale; offPctText = $offPctText; links = $links; buyable = (($eff -gt 0) -and ($links.Count -gt 0)); box = $box; boxSize = $boxSize }
    }
    $lo = $null; $hi = $null; $loReg = 0.0; $loOn = $false; $loOff = ''; $buyCount = 0
    foreach ($x in $pl) {
        if ($x.eff -gt 0) {
            $buyCount++
            if ($null -eq $lo -or $x.eff -lt $lo) { $lo = $x.eff; $loReg = $x.price; $loOn = $x.onSale; $loOff = $x.offPctText }
            if ($null -eq $hi -or $x.eff -gt $hi) { $hi = $x.eff }
        }
    }
    $barPrefix = ''
    if ($free) { $range = 'Free'; $lo = 0; $hi = 0; $priceHtml = 'Free' }
    elseif ($null -ne $lo) {
        $range = Money $lo
        $priceHtml = Esc $range
        if ($buyCount -gt 1) {
            $barPrefix = $PRICE_LABEL + ' '
            $priceHtml = '<span class="mb-1 block text-[11px] font-normal uppercase tracking-widest opacity-60">' + (Esc $PRICE_LABEL) + '</span>' + $priceHtml
        }
        if ($loOn) {
            $offTxt = if ($loOff) { $loOff } else { $SALE.Label }
            $priceHtml = $priceHtml.Replace((Esc $range), ('<s class="mr-2 text-base font-normal opacity-50">' + (Esc (Money $loReg)) + '</s> ' + (Esc $range) + ' <span class="ml-1.5 text-lg font-medium text-orange-500">' + (Esc $offTxt) + '</span>'))
        }
    }
    else { $range = 'Coming soon'; $priceHtml = $range; $lo = 0; $hi = 0 }

    $cta = S (V $r 'cta' '')
    if ([string]::IsNullOrWhiteSpace($cta)) { $cta = S (V $p 'cta' '') }
    if ([string]::IsNullOrWhiteSpace($cta) -or (Todo $cta)) { $cta = $CTA_DEFAULT }

    $btns = @(L (V $r 'buttons' $null))
    if ($btns.Count -eq 0 -and -not $free) { $dl = V $r 'download' $null; if ($null -ne $dl) { $btns = @($dl) } }
    $secondary = ''
    foreach ($bt in $btns) {
        $bu = (S (V $bt 'url' '')).Trim(); $bl = (S (V $bt 'label' '')).Trim()
        if (-not $bu -or (Todo $bu) -or ($bu -match '^\s*(javascript|data|vbscript):')) { continue }
        $isVideo = ($bu -match 'youtu\.?be|vimeo\.com|\.(mp4|webm)(\?|$)')
        if (-not $bl) { if ($isVideo) { $bl = 'Watch Demo' } else { $bl = 'Download Demo' } }
        $ico = $ICON_DOWNLOAD; if ($isVideo) { $ico = $ICON_PLAY }
        $ext = ''; if ($bu -match '^https?://') { $ext = ' target="_blank" rel="noopener"' }
        $secondary += (Render-Tpl $SECONDARY_BTN_TEMPLATE @{ url = (Esc $bu); ext = $ext; icon = $ico; label = (Esc $bl) })
    }
    if ($secondary) { $secondary = '<div class="mt-3 flex flex-wrap gap-2">' + $secondary + '</div>' }

    $chipCls = 'rounded border px-2 py-0.5 text-xs border-black/20 dark:border-white/20'
    $chips = ''
    foreach ($l in @(L (V $p 'languages' $null))) { $k = S $l; $lab = $k; if ($LANG_LABELS.ContainsKey($k)) { $lab = $LANG_LABELS[$k] }; $chips += '<span class="' + $chipCls + '">' + (Esc $lab) + '</span>' }
    foreach ($f in @(L (V $p 'frameworks' $null))) { if (-not (Todo $f)) { $chips += '<span class="' + $chipCls + '">' + (Esc (S $f)) + '</span>' } }
    $ver = S (V $p 'version' ''); if ($ver) { $chips += '<span class="' + $chipCls + '">v' + (Esc $ver.TrimStart('v')) + '</span>' }
    $kv = S (V $p 'kimtoolsVersion' ''); if ($kv -and -not (Todo $kv)) { $chips += '<span class="' + $chipCls + '">KimTools ' + (Esc $kv) + '</span>' }
    $paras = @(L (V $p 'description' $null) | ForEach-Object { S $_ })
    $descHtml = ''
    foreach ($t in $paras) { if ($t) { $descHtml += '<p>' + (Esc $t) + '</p>' } }
    $hl = ''
    foreach ($t in @(L (V $p 'highlights' $null))) { $hl += '<li class="py-2 border-b border-black/10 dark:border-white/10"><span class="text-blue-500">+</span> ' + (Esc (S $t)) + '</li>' }
    if ($hl) { $hl = '<ul class="mt-6 text-sm border-t border-black/10 dark:border-white/10">' + $hl + '</ul>' }

    $features = ''
    $fi = ''; $k = 0
    foreach ($f in @(L (V $p 'features' $null))) {
        $ft = S (V $f 'title' ''); $fx = S (V $f 'text' '')
        if (-not $ft -and -not $fx) { continue }
        $k++
        $txt = ''; if ($fx) { $txt = '<p class="mt-0.5 opacity-70">' + (Esc $fx) + '</p>' }
        $fi += Render-Tpl $FEATURE_ITEM_TEMPLATE @{
            index = $k.ToString('00')
            title = (Esc $ft)
            textHtml = $txt
        }
    }
    if ($fi) {
        $features = '<div class="mt-5 pt-4 border-t border-black/10 dark:border-white/10"><p class="text-[11px] uppercase tracking-widest opacity-60 mb-2">Included features</p><ul class="border-t border-black/10 dark:border-white/10">' + $fi + '</ul></div>'
    } else {
        $warn += 'no features'
    }

    $ri = ''
    foreach ($t in @(L (V $p 'requirements' $null))) { if (-not (Todo $t)) { $ri += '<li>' + (Esc (S $t)) + '</li>' } }
    $reqs = ''
    if ($ri) { $reqs = '<div class="mt-6"><h2 class="text-xs uppercase tracking-widest opacity-60 mb-2">Requirements</h2><ul class="list-disc pl-5 text-sm space-y-1">' + $ri + '</ul></div>' }

    $boxes = ''
    if (-not $free) {
        foreach ($x in $pl) {
            if (-not $x.box) { continue }
            $tag = ''; if ($x.cfg.badge) { $tag = '<span class="absolute top-0 left-0 rounded px-2 py-0.5 text-[10px] font-medium uppercase bg-blue-600 text-white">' + (Esc $x.cfg.badge) + '</span>' }
            $boxes += '<figure class="relative text-center">' + $tag + '<img src="' + (Esc $x.box) + '" alt="' + (Esc $x.cfg.name) + ' box"' + (SizeAttr $x.boxSize) + ' loading="lazy" class="w-full h-auto"><figcaption class="text-[11px] opacity-60 mt-1">' + (Esc $x.cfg.short) + '</figcaption></figure>'
        }
        if ($boxes) { $boxes = '<div class="mt-6 grid grid-cols-2 gap-4">' + $boxes + '</div>' }
    }
    $changelog = ''
    $ci = ''
    foreach ($c in @(L (V $p 'changelog' $null))) {
        $cn = S (V $c 'notes' ''); $cv = S (V $c 'version' '')
        if ((-not $cn -and -not $cv) -or (Todo $cn)) { continue }
        $ci += Render-Tpl $CHANGELOG_ROW_TEMPLATE @{
            version = (Esc $cv.TrimStart('v'))
            date = (Esc (S (V $c 'date' '')))
            notes = (Esc $cn)
        }
    }
    if ($ci) {
        $changelog = '<section id="changelog" class="' + $sec + '" aria-labelledby="changelog-h">' + (H2 'changelog' 'Changelog') + '<ol>' + $ci + '</ol></section>'
    }

    $trustHtml = '<ul class="mt-8 flex flex-wrap gap-x-8 gap-y-2 text-sm">'
    foreach ($t in $TRUST_ITEMS) { $trustHtml += '<li><span class="text-blue-500">+</span> ' + (Esc $t) + '</li>' }
    $trustHtml += '</ul>'

    $pricing = ''
    if ($free) {
        $btn = '<span class="inline-block rounded-lg px-6 py-3.5 text-xs font-medium uppercase opacity-50 border">Coming soon</span>'
        $dlu = S (V $r.download 'url' '')
        if ($dlu -match '^https?://' -and -not (Todo $dlu)) {
            $btn = '<a class="btn-grad inline-block rounded-lg px-8 py-3.5 text-xs font-medium uppercase tracking-wider" href="' + (Esc $dlu) + '" target="_blank" rel="noopener">' + (Esc (S (V $r.download 'label' 'Download'))) + '</a>'
        } else {
            $warn += 'free product has no download.url'
        }
        $pricing = '<section id="pricing" class="border-t border-black/10 dark:border-white/10 bg-gray-50 dark:bg-[#0d0f14]"><div class="' + $wrapCls + ' py-14">' + (H2 'pricing' 'Download') + '<p class="mb-6 text-sm opacity-80">This template is free. No account needed.</p>' + $btn + $trustHtml + '</div></section>'
    } elseif ($pl.Count -gt 0) {
        $defKey = $pl[0].key
        foreach ($x in $pl) { if ($x.buyable) { $defKey = $x.key; break } }
        $intro = @(L (V $r 'intro' $null) | ForEach-Object { S $_ })
        if ($intro.Count -eq 0 -and $planKeys -contains 'single' -and $planKeys -contains 'bundle') {
            $intro = @(($PLANS.single.name + ': the template with one specific KimTools version bundled for offline use and bound to this template. If you own a KimTools license, you can upgrade the bundled version through NuGet.'),
                       ($PLANS.bundle.name + ': the same project plus a full KimTools license.'))
        }
        $introHtml = ''
        foreach ($t in $intro) { $introHtml += '<p>' + (Esc $t) + '</p>' }
        if ($introHtml) { $introHtml = '<div class="max-w-3xl space-y-2 text-sm opacity-80 mb-6">' + $introHtml + '</div>' }
        $cards = ''; $groups = ''
        $check = '<svg class="hidden group-has-[:checked]:block absolute top-4 right-4 h-5 w-5 text-blue-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.857-9.809a.75.75 0 00-1.214-.882l-3.483 4.79-1.88-1.88a.75.75 0 10-1.06 1.061l2.5 2.5a.75.75 0 001.137-.089l4-5.5z" clip-rule="evenodd"/></svg>'
        foreach ($x in $pl) {
            $c = $x.cfg
            $checked = ''; if ($x.key -eq $defKey) { $checked = ' checked' }
            $dis = ''; $priceText = 'Coming soon'; $old = ''; $offLbl = ''
            if ($x.buyable) {
                $priceText = Money $x.eff
                if ($x.onSale) {
                    $old = '<s class="text-sm font-normal opacity-50">' + (Esc (Money $x.price)) + '</s>'
                    $bText = if ($x.offPctText) { $x.offPctText } else { $SALE.Label }
                    $offLbl = '<span class="text-base font-medium text-orange-500">' + (Esc $bText) + '</span>'
                }
            } else {
                $dis = ' disabled'
            }
            $badge = ''; if ($c.badge) { $badge = ' <span class="ml-2 align-middle rounded px-2 py-0.5 text-[10px] font-medium uppercase bg-blue-600 text-white">' + (Esc $c.badge) + '</span>' }
            $who = ''; if ($c.who) { $who = '<span class="text-xs opacity-60">' + (Esc $c.who) + '</span>' }
            $cards += Render-Tpl $PLAN_CARD_TEMPLATE @{
                key = $x.key
                checked = $checked
                disabled = $dis
                checkSvg = $check
                name = (Esc $c.name)
                badge = $badge
                tagline = (Esc $c.tagline)
                whoHtml = $who
                oldPrice = $old
                priceText = (Esc $priceText)
                offLabel = $offLbl
            }
            if (-not $x.buyable) { continue }
            $img = ''; if ($x.box) { $img = '<img src="' + (Esc $x.box) + '" alt=""' + (SizeAttr $x.boxSize) + ' loading="lazy" class="h-16 w-16 object-contain shrink-0">' }
            $incL = ''; foreach ($t in $c.includes) { $incL += '<li><span class="text-blue-500">+</span> ' + (Esc $t) + '</li>' }
            $oldSummaryPrice = ''; $offSummaryLabel = ''
            if ($x.onSale) {
                $oldSummaryPrice = '<p class="text-xs opacity-50"><s>' + (Esc (Money $x.price)) + '</s></p>'
                $bText = if ($x.offPctText) { $x.offPctText } else { $SALE.Label }
                $offSummaryLabel = '<span class="text-lg font-medium text-orange-500">' + (Esc $bText) + '</span>'
            }

            $recH = ''; $altH = ''
            foreach ($lk in @($x.links | Sort-Object @{ Expression = { if ($_.rec) { 0 } else { 1 } } })) {
                $cardTitle = $lk.title
                if ([string]::IsNullOrWhiteSpace($cardTitle)) {
                    $cardTitle = 'Buy ' + $c.short + ' with ' + $lk.name
                }
                $descText = $lk.description
                if ([string]::IsNullOrWhiteSpace($descText)) {
                    $descText = $lk.note
                }
                $descLine = ''
                if (-not [string]::IsNullOrWhiteSpace($descText)) {
                    $descLine = '<p class="mt-1 text-xs opacity-75">' + (Esc $descText) + '</p>'
                }
                $logoLine = ''
                if (-not [string]::IsNullOrWhiteSpace($lk.logo)) {
                    $logoLine = '<img src="' + (Esc $lk.logo) + '" alt="' + (Esc $lk.name) + ' logo" loading="lazy" class="h-7 w-auto max-w-[6rem] object-contain rounded">'
                }
                $extra = ''; if ($lk.id -eq 'polar') { $extra = ' data-polar-checkout' }
                $trackAttr = ' data-track="checkout" data-provider="' + (Esc $lk.id) + '" data-plan="' + (Esc $x.key) + '" data-value="' + (Money2 $x.eff) + '"'
                $rc = Resolve-ProviderColor $lk.color $lk.rec
                $cardCls = $rc.cls
                $styleAttr = ''
                if ($rc.style) { $styleAttr = ' style="' + (Esc $rc.style) + '"' }
                if (-not $lk.rec) { $cardCls += ' opacity-90 hover:opacity-100' }
                if ($rc.colored -or $lk.rec) {
                    $pillCls = 'rounded-full px-2.5 py-0.5 text-[11px] bg-black/15 text-current'
                } else {
                    $pillCls = 'rounded-full px-2.5 py-0.5 text-[11px] border border-black/15 dark:border-white/15 opacity-80'
                }
                $tagsLine = ''
                if ($null -ne $lk.tags -and $lk.tags.Count -gt 0) {
                    $pills = ''
                    foreach ($tg in $lk.tags) {
                        $pills += '<span class="' + $pillCls + '">' + (Esc $tg) + '</span>'
                    }
                    $tagsLine = '<div class="mt-3 flex flex-wrap gap-1.5">' + $pills + '</div>'
                }
                $cardHtml = Render-Tpl $CHECKOUT_CARD_TEMPLATE @{
                    url = (Esc $lk.url)
                    extra = $extra
                    track = $trackAttr
                    styleAttr = $styleAttr
                    cardCls = $cardCls
                    title = (Esc $cardTitle)
                    descHtml = $descLine
                    logoHtml = $logoLine
                    tagsHtml = $tagsLine
                }
                if ($lk.rec) { $recH += $cardHtml } else { $altH += $cardHtml }
            }
            if ($altH) { $altH = '<p class="mt-4 mb-2 text-[11px] uppercase tracking-widest opacity-60">Alternative</p><div class="grid gap-3">' + $altH + '</div>' }
            $groups += Render-Tpl $PLAN_SUMMARY_TEMPLATE @{
                key = $x.key
                boxImg = $img
                name = (Esc $c.name)
                tagline = (Esc $c.tagline)
                oldPriceHtml = $oldSummaryPrice
                priceText = (Esc (Money $x.eff))
                offLabelHtml = $offSummaryLabel
                includesHtml = $incL
                recHtml = $recH
                altHtml = $altH
            }
        }
        $pricing = '<section id="pricing" class="border-t border-black/10 dark:border-white/10 bg-gray-50 dark:bg-[#0d0f14]"><div class="' + $wrapCls + ' py-14">' + (H2 'pricing' 'Choose your plan') +
            '<div class="grid lg:grid-cols-12 gap-10 items-start"><div class="lg:col-span-7">' + $introHtml + '<div role="radiogroup" aria-label="License plan" class="grid gap-4 xl:grid-cols-2">' + $cards + '</div>' + $trustHtml + '</div><div class="lg:col-span-5 lg:sticky lg:top-24">' + $groups + '</div></div></div></section>'
    }

    $faq = ''
    foreach ($f in @(L (V $p 'faq' $null))) {
        $q = S (V $f 'q' ''); if (-not $q) { continue }
        $faq += Render-Tpl $FAQ_ITEM_TEMPLATE @{
            q = (Esc $q)
            a = (Esc (S (V $f 'a' '')))
        }
    }
    if ($faq) { $faq = '<section id="faq" class="' + $sec + '" aria-labelledby="faq-h">' + (H2 'faq' 'FAQ') + $faq + '</section>' }

    $o = V $p 'seo' $null
    $seoT = S (V $o 'title' ''); $seoD = S (V $o 'description' '')
    $pageTitle = $seoT
    if (-not $pageTitle) { if ($tagline) { $pageTitle = "$title - $tagline | $($SITE.Name)" } else { $pageTitle = "$title | $($SITE.Name)" } }
    if (-not $seoD) {
        $first = ''; foreach ($t in $paras) { if ($t) { $first = $t; break } }
        if (-not $first) { $first = $tagline }
        $seoD = ($first -replace '\s+', ' ').Trim()
        if ($seoD.Length -gt 155) { $seoD = $seoD.Substring(0, 155); $sp = $seoD.LastIndexOf(' '); if ($sp -gt 100) { $seoD = $seoD.Substring(0, $sp) }; $seoD = $seoD.TrimEnd(' ', ',', '.') + '...' }
    }
    $ogimage = ''
    if ($null -ne $thumb) {
        $og = $thumb.abs
        $ogAlt = "$title screenshot"
        $ogLines = @(
            ('<meta property="og:image" content="' + (Esc $og) + '">'),
            ('<meta property="og:image:secure_url" content="' + (Esc $og) + '">'),
            ('<meta property="og:image:alt" content="' + (Esc $ogAlt) + '">')
        )
        if ($thumb.w -gt 0 -and $thumb.h -gt 0) {
            $ogLines += ('<meta property="og:image:width" content="' + $thumb.w + '">')
            $ogLines += ('<meta property="og:image:height" content="' + $thumb.h + '">')
        }
        $ogLines += '<meta name="twitter:card" content="summary_large_image">'
        $ogLines += ('<meta name="twitter:title" content="' + (Esc $pageTitle) + '">')
        $ogLines += ('<meta name="twitter:description" content="' + (Esc $seoD) + '">')
        $ogLines += ('<meta name="twitter:image" content="' + (Esc $og) + '">')
        $ogLines += ('<meta name="twitter:image:alt" content="' + (Esc $ogAlt) + '">')
        $ogimage = $ogLines -join "`n"
    }
    $kw = @(L (V $o 'keywords' $null) | ForEach-Object { S $_ } | Where-Object { $_ })
    $kwMeta = ''; if ($kw.Count -gt 0) { $kwMeta = '<meta name="keywords" content="' + (Esc ($kw -join ', ')) + '">' }
    $offers = @()
    foreach ($x in $pl) {
        if ($free) { $offers += [ordered]@{ '@type' = 'Offer'; name = $title; price = '0.00'; priceCurrency = $SITE.Currency; availability = 'https://schema.org/InStock'; url = $canon }; break }
        if ($x.buyable) { $offers += [ordered]@{ '@type' = 'Offer'; name = $x.cfg.name; price = (Money2 $x.eff); priceCurrency = $SITE.Currency; availability = 'https://schema.org/InStock'; url = ($canon + '#pricing') } }
    }
    $app = [ordered]@{ '@type' = 'SoftwareApplication'; name = $title; description = $seoD; applicationCategory = 'DeveloperApplication'; operatingSystem = 'Windows'; url = $canon }
    if ($ver) { $app.softwareVersion = $ver }
    if ($null -ne $thumb) { $app.image = $thumb.abs }
    if ($updated) { $app.dateModified = $updated }
    if ($offers.Count -gt 0) { $app.offers = [ordered]@{ '@type' = 'AggregateOffer'; lowPrice = (Money2 $lo); highPrice = (Money2 $hi); priceCurrency = $SITE.Currency; offerCount = $offers.Count; offers = @($offers) } }
    $bc = [ordered]@{ '@type' = 'BreadcrumbList'; itemListElement = @([ordered]@{ '@type' = 'ListItem'; position = 1; name = $SITE.Name; item = $base }, [ordered]@{ '@type' = 'ListItem'; position = 2; name = $title; item = $canon }) }
    $jsonld = (ConvertTo-Json -InputObject ([ordered]@{ '@context' = 'https://schema.org'; '@graph' = @($app, $bc) }) -Depth 10 -Compress).Replace('<', '\u003c')

    $embedClick = [string]$EMBED.Click; if (@('self', 'tab', 'top') -notcontains $embedClick) { $embedClick = 'self' }
    $trk = (ConvertTo-Json -InputObject ([ordered]@{ id = $Id; name = $title; cur = $SITE.Currency; url = $canon; click = $embedClick }) -Compress).Replace('<', '\u003c')
    $chatHtml = ''
    if ($CHAT.Enabled -eq $true -and (V $p 'chat' $true) -ne $false) {
        $chatSrc = S (V $p 'chatSrc' '')
        if ([string]::IsNullOrWhiteSpace($chatSrc) -or (Todo $chatSrc)) { $chatSrc = [string]$CHAT.Src }
        if ($chatSrc -match '^https://embed\.tawk\.to/[A-Za-z0-9/_-]+$') {
            $chatHtml = '<!-- Tawk.to -->' + "`n" + '<script>var Tawk_API=Tawk_API||{},Tawk_LoadStart=new Date();Tawk_API.customStyle={visibility:{mobile:{position:"br",xOffset:10,yOffset:70}}};(function(){if(document.documentElement.classList.contains("embed"))return;var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];s1.async=true;s1.src="' + $chatSrc + '";s1.charset="UTF-8";s1.setAttribute("crossorigin","*");s0.parentNode.insertBefore(s1,s0)})();</script>'
        } else { $warn += 'invalid chatSrc' }
    }
    $banner = ''
    if ($saleOn) { $banner = '<div class="banner-bar text-white text-xs py-2 px-4 text-center"><strong>' + (Esc $SALE.Label) + '</strong> ' + (Esc $SALE.Message) + '</div>' }
    $ga = ''
    $gaId = ''
    if ($ANALYTICS.Enabled -eq $true -and (V $p 'analytics' $true) -ne $false) {
        $gaId = S (V $p 'analyticsId' '')
        if ([string]::IsNullOrWhiteSpace($gaId) -or (Todo $gaId)) { $gaId = [string]$ANALYTICS.Id }
        if ($gaId -notmatch '^[A-Za-z0-9-]+$') { $warn += 'invalid analytics id'; $gaId = '' }
    }
    if ($gaId) {
        $viewEvt = ''
        if ($ANALYTICS.Events -eq $true) {
            $viewEvt = 'gtag("event","view_item",' + ((ConvertTo-Json -InputObject ([ordered]@{ currency = $SITE.Currency; value = [double]$lo; items = @([ordered]@{ item_id = $Id; item_name = $title }) }) -Depth 5 -Compress).Replace('<', '\u003c')) + ');'
        }
        $ga = '<script async src="https://www.googletagmanager.com/gtag/js?id=' + $gaId + '"></script><script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments)}gtag("js",new Date());gtag("config","' + $gaId + '");' + $viewEvt + '</script>'
    }
    $kick = $type; if ($TYPE_LABELS.ContainsKey($type)) { $kick = $TYPE_LABELS[$type] }
    $tl = $tier; if ($TIER_LABELS.ContainsKey($tier)) { $tl = $TIER_LABELS[$tier] }

    $html = Render-Tpl $PAGE_TEMPLATE @{
        title = (Esc $pageTitle); desc = (Esc $seoD); keywords = $kwMeta; canonical = (Esc $canon); siteName = (Esc $SITE.Name); ogimage = $ogimage
        jsonld = $jsonld; ga = $ga; saleBanner = $banner; home = (Esc $SITE.Home); logoLight = (Esc $SITE.LogoLight); logoDark = (Esc $SITE.LogoDark)
        slideshow = $slideshow; kicker = (Esc "$kick / $tl"); h1 = (Esc $title)
        tagline = (Esc $tagline); priceHtml = $priceHtml; priceRange = (Esc ($barPrefix + $range)); ctaLabel = (Esc $cta); secondary = $secondary; trk = $trk; chat = $chatHtml; chips = $chips; descHtml = $descHtml
        highlights = $hl; features = $features; reqs = $reqs; boxes = $boxes; changelog = $changelog; pricing = $pricing; faq = $faq
        year = (Get-Date).Year; support = (Esc $SITE.Support)
    }
    Write-Out (Join-Path $dir 'index.html') $html

    if ((V $p 'featured' $false) -eq $true) {
        $parentDir = Split-Path -Parent $Root
        if ($parentDir) {
            $shortDir = Join-Path $parentDir $Id
            $shortFile = Join-Path $shortDir 'index.html'
            if (-not (Test-Path -LiteralPath $shortDir)) { New-Item -ItemType Directory -Path $shortDir -Force | Out-Null }
            if (-not (Test-Path -LiteralPath $shortFile)) {
                $rel = '../' + (Split-Path -Leaf $Root) + '/' + $Id + '/'
                $redir = "<!doctype html>`n<html lang=`"en`">`n<head>`n<meta charset=`"utf-8`">`n<title>Redirecting...</title>`n<meta name=`"robots`" content=`"noindex`">`n<meta http-equiv=`"refresh`" content=`"0;url=$rel`">`n<script>location.replace('$rel'+location.search+location.hash)</script>`n</head>`n<body><a href=`"$rel`">Continue to $(Esc $title)</a></body>`n</html>`n"
                Write-Out $shortFile $redir
                Write-Host "link   ../$Id/ -> $rel"
            }
        }
    }

    $w = ''; if ($warn.Count -gt 0) { $w = '  warnings: ' + ($warn -join '; ') }
    Write-Host ("built  {0}  {1} screenshot(s)  {2}{3}" -f $Id, $shots.Count, $range, $w)
}

function New-Sample {
    $id = 'kimtools'
    $dir = Join-Path $Root $id
    if (-not (Test-Path -LiteralPath $dir)) { New-Item -ItemType Directory -Path $dir | Out-Null }
    $today = (Get-Date).ToString('yyyy-MM-dd', $Inv)
    $prod = @'
{
  "status": "published",
  "featured": true,
  "order": 1,
  "title": "KimTools WinForms",
  "tagline": "Modern UI framework for WinForms C# and VB.NET",
  "tier": "premium",
  "type": "ui-framework",
  "languages": ["csharp", "vb"],
  "tags": ["winforms", "ui", "themes", "icons", "controls"],
  "frameworks": [".NET Framework 4.6.2+", ".NET 8, 9, 10"],
  "version": "26.0.0",
  "kimtoolsVersion": "26.0.0",
  "updated": "@@TODAY@@",
  "seo": {
    "title": "KimTools WinForms - Modern UI Framework for C# and VB.NET",
    "description": "KimTools is a modern UI framework and SDK for WinForms C# and VB.NET: 35+ themes, 10,000+ SVG icons, from .NET Framework 4.6 to .NET 10.",
    "keywords": ["WinForms UI", "C# WinForms controls", "VB.NET WinForms", ".NET UI framework", "WinForms theming", "KimTools"]
  },
  "screenshots": [
    "https://kimtoo.net/images/top_img.png",
    "https://kimtoo.net/images/ui-kit-dark.png",
    "https://kimtoo.net/images/ui-kit-light.png"
  ],
  "screenshotAlt": ["KimTools WinForms controls overview", "KimTools UI kit, dark theme", "KimTools UI kit, light theme"],
  "description": [
    "KimTools is a modern UI framework and SDK for WinForms developers. It upgrades classic WinForms apps with customizable controls, stylable themes, a semantic color system and a large vector icon library.",
    "It supports C# and VB.NET on .NET Framework and modern .NET, with designer editors so you can style everything visually in the WinForms Designer. Built by Kimutai Kipngetich, 5x Microsoft MVP."
  ],
  "highlights": [
    "35+ enterprise-grade stylable themes",
    "10,000+ precision vector icons (SVG)",
    "Available on NuGet.org"
  ],
  "features": [
    { "title": "40 modern customizable controls", "text": "Double-buffered GDI+ rendering and DPI-aware layout." },
    { "title": "C# and VB.NET language support", "text": "Shared API surface and designer serialization." },
    { "title": ".NET Framework and .NET Core targets", "text": "Supports .NET Framework 4.6.2+ and .NET 8, 9, 10." },
    { "title": "35+ enterprise-grade stylable themes", "text": "Light, dark, and custom semantic palettes." },
    { "title": "Tailwind-style semantic color system", "text": "Consistent tokens across controls and dialogs." },
    { "title": "10,000+ precision vector icons (SVG)", "text": "Sharp scaling at any DPI." },
    { "title": "WYSIWYG designer UI editors", "text": "Visual editors integrated into Visual Studio and Rider." },
    { "title": "Available on NuGet.org", "text": "Direct package installation and offline bundling." }
  ],
  "requirements": [
    ".NET Framework 4.6.2, 4.7 or 4.8+, or .NET 8, 9 or 10",
    "Visual Studio or JetBrains Rider (WinForms designer)"
  ],
  "changelog": [],
  "faq": [
    { "q": "Is it a subscription?", "a": "No. It is a one-time purchase with a lifetime license." },
    { "q": "How many projects and activations do I get?", "a": "Unlimited projects and unlimited activations, and it is 100% royalty free." },
    { "q": "Which languages are supported?", "a": "C# and Visual Basic (VB.NET)." },
    { "q": "Where can I get the package?", "a": "KimTools.WinForms is available on NuGet.org." }
  ]
}
'@
    $price = @'
{
  "free": false,
  "download": { "url": "", "label": "Download" },
  "intro": ["One-time purchase, lifetime license. Unlimited projects and activations, royalty free. Pick the target that matches your apps, or PLUS for both."],
  "plans": {
    "plus": {
      "name": "PLUS (All in One)", "short": "PLUS", "badge": "Popular",
      "tagline": "Full control suite for .NET Framework and .NET Core, the ultimate developer bundle.",
      "who": "", "price": 37, "salePrice": 17.76,
      "includes": [".NET Framework 4.6.2+", ".NET Core 8.0, 9.0, 10", ".NET latest + preview", "Lifetime license", "Unlimited activations", "Royalty free"],
      "checkout": [
        {
          "provider": "polar",
          "title": "Checkout with Polar",
          "description": "Instant license key & NuGet access via Polar overlay.",
          "logo": "",
          "color": "blue",
          "tags": ["Card", "Apple Pay", "Google Pay", "Instant"],
          "url": "https://buy.polar.sh/polar_cl_OnsNuTwvD0ezuF1ydTLqPFFfKeggFH2QAesui17ln52"
        },
        {
          "provider": "payhip",
          "title": "Checkout with Payhip",
          "description": "Pay with PayPal or major credit/debit cards.",
          "logo": "",
          "color": "",
          "tags": ["PayPal", "Card"],
          "url": "https://payhip.com/buy?s=1&variant_combination%5BiVNGX%5D=1788107902105&qty%5BiVNGX%5D=1&cart_links%5B%5D=iVNGX"
        },
        {
          "provider": "gumroad",
          "title": "Checkout with Gumroad",
          "description": "Alternative checkout hosted on Gumroad.",
          "logo": "",
          "color": "",
          "tags": ["Gumroad", "Card"],
          "url": "https://kimtooflex.gumroad.com/l/kimtools?referrer=https%3A%2F%2Fkimtoo.net&wanted=true&option=iEzCAUtpfn6l3wk4CVfadQ%3D%3D"
        }
      ]
    },
    "framework": {
      "name": ".NET Framework", "short": "Framework", "badge": "",
      "tagline": "Full control suite for .NET Framework.",
      "who": "", "price": 22, "salePrice": 10.56,
      "includes": [".NET Framework 4.6.2", ".NET Framework 4.7 - 4.7.2", ".NET Framework 4.8 - 4.8.1", "Lifetime license", "Unlimited activations", "Royalty free"],
      "checkout": [
        {
          "provider": "polar",
          "title": "Checkout with Polar",
          "description": "Instant license key & NuGet access via Polar overlay.",
          "logo": "",
          "color": "blue",
          "tags": ["Card", "Apple Pay", "Google Pay", "Instant"],
          "url": "https://buy.polar.sh/polar_cl_saf77n0vfTql1dF31HbFYnKbCElIhMp0AuV5K1PAYcK"
        },
        {
          "provider": "payhip",
          "title": "Checkout with Payhip",
          "description": "Pay with PayPal or major credit/debit cards.",
          "logo": "",
          "color": "",
          "tags": ["PayPal", "Card"],
          "url": "https://payhip.com/buy?s=1&variant_combination%5BiVNGX%5D=1788107980141&qty%5BiVNGX%5D=1&cart_links%5B%5D=iVNGX"
        },
        {
          "provider": "gumroad",
          "title": "Checkout with Gumroad",
          "description": "Alternative checkout hosted on Gumroad.",
          "logo": "",
          "color": "",
          "tags": ["Gumroad", "Card"],
          "url": "https://kimtooflex.gumroad.com/l/kimtools?referrer=https%3A%2F%2Fkimtoo.net&wanted=true&option=kZvb1wvedojNu0twPUUhXg%3D%3D"
        }
      ]
    },
    "core": {
      "name": ".NET Core", "short": "Core", "badge": "",
      "tagline": "Full control suite for .NET 8.0, 9.0 and .NET 10.",
      "who": "", "price": 28, "salePrice": 13.44,
      "includes": [".NET 8.0", ".NET 9.0", ".NET 10.0", "Lifetime license", "Unlimited activations", "Royalty free"],
      "checkout": [
        {
          "provider": "polar",
          "title": "Checkout with Polar",
          "description": "Instant license key & NuGet access via Polar overlay.",
          "logo": "",
          "color": "blue",
          "tags": ["Card", "Apple Pay", "Google Pay", "Instant"],
          "url": "https://buy.polar.sh/polar_cl_SwoQMEH0oGPwvwdW29fBFpEEyKHyZxOSi36se4Q98kI"
        },
        {
          "provider": "payhip",
          "title": "Checkout with Payhip",
          "description": "Pay with PayPal or major credit/debit cards.",
          "logo": "",
          "color": "",
          "tags": ["PayPal", "Card"],
          "url": "https://payhip.com/buy?s=1&variant_combination%5BiVNGX%5D=1788107943104&qty%5BiVNGX%5D=1&cart_links%5B%5D=iVNGX"
        },
        {
          "provider": "gumroad",
          "title": "Checkout with Gumroad",
          "description": "Alternative checkout hosted on Gumroad.",
          "logo": "",
          "color": "",
          "tags": ["Gumroad", "Card"],
          "url": "https://kimtooflex.gumroad.com/l/kimtools?referrer=https%3A%2F%2Fkimtoo.net&wanted=true&option=qX8IwOf2-BDYxK99l8XVhQ%3D%3D"
        }
      ]
    }
  }
}
'@
    Write-Out (Join-Path $dir 'product.json') ($prod.Replace('@@TODAY@@', $today).Replace("`r`n", "`n") + "`n")
    Write-Out (Join-Path $dir 'pricing.json') ($price.Replace("`r`n", "`n") + "`n")
    Write-Host "no product folders found: created sample '$id' with real KimTools data."
}

function Get-ProductIds {
    $ids = @()
    foreach ($d in @(Get-ChildItem -LiteralPath $Root -Directory)) {
        if ($d.Name.StartsWith('_') -or $d.Name.StartsWith('.') -or $d.Name -eq 'assets') { continue }
        if ($d.Name -cnotmatch '^[a-z0-9-]+$') { Write-Host "skip   $($d.Name) (ids: lowercase letters, digits, hyphens)"; continue }
        $ids += $d.Name
    }
    return $ids
}

function Run-Build([string]$TargetOnly) {
    if ($New) {
        if ($New -cnotmatch '^[a-z0-9-]+$') { throw "Invalid id '$New': use lowercase letters, digits and hyphens." }
        Scaffold $New
    }
    $ids = Get-ProductIds
    if ($ids.Count -eq 0 -and -not $New) {
        New-Sample
        $ids = Get-ProductIds
    }
    if ($TargetOnly) {
        if ($ids -notcontains $TargetOnly) { throw "Product folder '$TargetOnly' not found." }
        $ids = @($TargetOnly)
    }
    foreach ($id in $ids) {
        try {
            Scaffold $id
            Build-Product $id
        } catch {
            Write-Host ("ERROR  {0}: {1}" -f $id, $_.Exception.Message) -ForegroundColor Red
        }
    }
}

function Start-WatchLoop([string]$TargetOnly) {
    $watcher = New-Object System.IO.FileSystemWatcher
    $watcher.Path = $Root
    $watcher.IncludeSubdirectories = $true
    $watcher.Filter = '*'
    $watcher.NotifyFilter = [System.IO.NotifyFilters]::FileName -bor [System.IO.NotifyFilters]::LastWrite -bor [System.IO.NotifyFilters]::CreationTime
    $watcher.EnableRaisingEvents = $true

    $pending = New-Object 'System.Collections.Generic.HashSet[string]'

    $handler = {
        $p = $Event.SourceEventArgs.FullPath
        if (-not $p) { return }
        $name = [System.IO.Path]::GetFileName($p)
        if ($name -eq 'index.html' -or $name.StartsWith('.') -or $name.EndsWith('.tmp')) { return }
        if ($p -match '[\\/](assets|_\w+)[\\/]') { return }
        $ext = [System.IO.Path]::GetExtension($p).ToLowerInvariant()
        if ($ext -notin @('.json', '.png', '.jpg', '.jpeg', '.webp', '.ps1')) { return }
        $set = $Event.MessageData
        [System.Threading.Monitor]::Enter($set)
        try { [void]$set.Add($p) } finally { [System.Threading.Monitor]::Exit($set) }
    }

    $sub1 = Register-ObjectEvent -InputObject $watcher -EventName Changed -Action $handler -MessageData $pending
    $sub2 = Register-ObjectEvent -InputObject $watcher -EventName Created -Action $handler -MessageData $pending
    $sub3 = Register-ObjectEvent -InputObject $watcher -EventName Renamed -Action $handler -MessageData $pending

    Write-Host "watching $Root for write changes (Ctrl+C to stop)..."
    try {
        while ($true) {
            Start-Sleep -Milliseconds 300
            $batch = @()
            [System.Threading.Monitor]::Enter($pending)
            try { if ($pending.Count -gt 0) { $batch = @($pending); $pending.Clear() } } finally { [System.Threading.Monitor]::Exit($pending) }
            if ($batch.Count -gt 0) {
                Start-Sleep -Milliseconds 200
                [System.Threading.Monitor]::Enter($pending)
                try { if ($pending.Count -gt 0) { $batch = @($batch + @($pending) | Select-Object -Unique); $pending.Clear() } } finally { [System.Threading.Monitor]::Exit($pending) }
                $ts = (Get-Date).ToString('HH:mm:ss', $Inv)
                $affectedProducts = New-Object 'System.Collections.Generic.HashSet[string]'
                $rebuildAll = $false
                foreach ($f in $batch) {
                    $rel = $f
                    if ($f.StartsWith($Root, [System.StringComparison]::OrdinalIgnoreCase)) {
                        $rel = $f.Substring($Root.Length).TrimStart('\', '/')
                    }
                    Write-Host ("[{0}] changed: {1}" -f $ts, $rel)
                    Unlock-Target $f
                    $leaf = [System.IO.Path]::GetFileName($f)
                    if ($leaf -ieq 'store.ps1') {
                        $rebuildAll = $true
                    } else {
                        $parts = $rel -split '[\\/]'
                        if ($parts.Count -ge 2 -and $parts[0] -cmatch '^[a-z0-9-]+$') {
                            [void]$affectedProducts.Add($parts[0])
                        }
                    }
                }
                if ($rebuildAll) {
                    Run-Build $TargetOnly
                } else {
                    foreach ($prodId in $affectedProducts) {
                        if (Test-Path -LiteralPath (Join-Path $Root $prodId)) {
                            Build-Product $prodId
                        }
                    }
                }
            }
        }
    } finally {
        $watcher.EnableRaisingEvents = $false
        Unregister-Event -SourceIdentifier $sub1.Name -ErrorAction SilentlyContinue
        Unregister-Event -SourceIdentifier $sub2.Name -ErrorAction SilentlyContinue
        Unregister-Event -SourceIdentifier $sub3.Name -ErrorAction SilentlyContinue
        $watcher.Dispose()
    }
}

# ---------------------------------------------------------------- main
try {
    Unlock-Self
    Run-Build $Only
    if ($Watch) {
        Start-WatchLoop $Only
    }
}
catch {
    Write-Host ('FATAL: ' + $_.Exception.Message) -ForegroundColor Red
    exit 1
}