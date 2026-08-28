---
type: concept
title: "KimTools / Color"
description: "KimTools Color System"
source: "https://kimtoo.net/utilities/kt-color/"
path: /utilities/kt-color/
updated: 2026-08-28
okf:
  generated_by: "@docmd/plugin-okf"
  generated_at: "2026-08-28T16:10:21.237Z"
---
---
title: "KimTools / Color"
description: "KimTools Color System"
toc: false
layout: "full"
---

# Kt `Color`

`KtColor` is an HSL-based color type for KimTools WinForms controls. It replaces `System.Drawing.Color` with named palette colors, semantic theme variables, per-shade indexing, and operators for the common adjustments (lighten/darken, opacity, contrast, blending). It converts implicitly to and from `Color`, so it drops into any WinForms API that expects one.

Every example below builds a `KtColor` through an implicit conversion, an operator, or a static factory - never the constructor directly.

## Creating a Color

The most common path is assigning a string; it's parsed automatically:

```csharp "🔴 🟡 🟢"
KtColor named    = "Blue";              // palette color using system named colors
KtColor tailwind  = "@Blue";             // palette color using Tailwind color system
KtColor variable = "$Primary";          // theme variable
KtColor hex      = "#FF5733";
KtColor rgb      = "rgb(255,87,51)";
KtColor rgba     = "rgba(255,87,51,0.5)";
KtColor hsl      = "hsl(9,100%,60%)";

KtColor shaded   = "Blue[70]";          // 70% lightness baked into the string
KtColor faded    = "Blue[70]%50";       // 70% lightness, 50% opacity
```

From `System.Drawing`:

```csharp "🔴 🟡 🟢"
KtColor fromColor = Color.Red;
KtColor fromKnown = KnownColor.CornflowerBlue;
KtColor fromArgb  = 0xFF3B82F6;         // packed ARGB int
```

From a `KtBrush` (explicit - a gradient's start/stop colors are averaged):

```csharp "🔴 🟡 🟢"
KtColor fromBrush = (KtColor)someBrush;
```

Static factories, for when you have raw components instead of a string:

```csharp "🔴 🟡 🟢"
KtColor c1 = KtColor.FromRGBA(59, 130, 246);        // r, g, b, alpha?
KtColor c2 = KtColor.HSL(217f, 0.91f, 0.60f);       // hue, saturation, lightness
KtColor c3 = KtColor.Random();                      // random palette color
KtColor c4 = KtColor.Random(30);                    // random palette color at 30% lightness
```

For untrusted input, `TryParse` avoids throwing:

```csharp "🔴 🟡 🟢"
if (KtColor.TryParse(userInput, out var parsed)) { /* ... */ }
```

## Palette

21 named colors, grouped as 4 neutral bases and 17 accents. Each is a static property and also carries the full shade range (see **Shades**).

| Base / Neutral               |                                          |
|------------------------------|------------------------------------------|
| ::: tag "Stone" icon:at-sign | ::: tag "78716C" color:#78716C icon:hash |
| ::: tag "Zinc" icon:at-sign  | ::: tag "71717A" color:#71717A icon:hash |
| ::: tag "Gray" icon:at-sign  | ::: tag "6B7280" color:#6B7280 icon:hash |
| ::: tag "Slate" icon:at-sign | ::: tag "64748B" color:#64748B icon:hash |

|                                |                                          |                                 |                                          |
|--------------------------------|------------------------------------------|---------------------------------|------------------------------------------|
| ::: tag "Rose"    icon:at-sign | ::: tag "F43F5E" color:#F43F5E icon:hash | ::: tag "Emerald"  icon:at-sign | ::: tag "10B981" color:#10B981 icon:hash |
| ::: tag "Pink"    icon:at-sign | ::: tag "EC4899" color:#EC4899 icon:hash | ::: tag "Green"    icon:at-sign | ::: tag "22C55E" color:#22C55E icon:hash |
| ::: tag "Fuchsia" icon:at-sign | ::: tag "D946EF" color:#D946EF icon:hash | ::: tag "Lime"     icon:at-sign | ::: tag "84CC16" color:#84CC16 icon:hash |
| ::: tag "Purple"  icon:at-sign | ::: tag "A855F7" color:#A855F7 icon:hash | ::: tag "Yellow"   icon:at-sign | ::: tag "EAB308" color:#EAB308 icon:hash |
| ::: tag "Violet"  icon:at-sign | ::: tag "8B5CF6" color:#8B5CF6 icon:hash | ::: tag "Amber"    icon:at-sign | ::: tag "F59E0B" color:#F59E0B icon:hash |
| ::: tag "Indigo"  icon:at-sign | ::: tag "6366F1" color:#6366F1 icon:hash | ::: tag "Orange"   icon:at-sign | ::: tag "F97316" color:#F97316 icon:hash |
| ::: tag "Blue"    icon:at-sign | ::: tag "3B82F6" color:#3B82F6 icon:hash | ::: tag "Red"      icon:at-sign | ::: tag "EF4444" color:#EF4444 icon:hash |
| ::: tag "Sky"     icon:at-sign | ::: tag "0EA5E9" color:#0EA5E9 icon:hash |                                 |                                          |
| ::: tag "Cyan"    icon:at-sign | ::: tag "06B6D4" color:#06B6D4 icon:hash |                                 |                                          |
| ::: tag "Teal"    icon:at-sign | ::: tag "14B8A6" color:#14B8A6 icon:hash |                                 |                                          |

Plus four fixed colors that sit outside the shade system: `KtColor.Empty`, `KtColor.White`, `KtColor.Transparent`, `KtColor.Black`.

`KtColor.All`, `KtColor.PaletteMainColors`, and `KtColor.PaletteBaseColors` return these as arrays - useful for building a color picker.

## Theme Variables

13 static properties represent semantic, re-themeable colors:

| Variable                                            | Default                                         |
|-----------------------------------------------------|-------------------------------------------------|
| ::: tag "PRIMARY" icon:dollar-sign                  | ::: tag "RoyalBlue"   color:RoyalBlue           |
| ::: tag "SECONDARY" icon:dollar-sign                | ::: tag "BlueViolet"   color:BlueViolet         |
| ::: tag "ACCENT" icon:dollar-sign                   | ::: tag "DarkTurquoise"   color:DarkTurquoise   |
| ::: tag "NEUTRAL" icon:dollar-sign                  | ::: tag "#515765"   color:#515765               |
| ::: tag "CONTENT" icon:dollar-sign                  | ::: tag "White"   color:White                   |
| ::: tag "SUCCESS" icon:dollar-sign                  | ::: tag "MediumSeaGreen"   color:MediumSeaGreen |
| ::: tag "INFO" icon:dollar-sign                     | ::: tag "DodgerBlue"   color:DodgerBlue         |
| ::: tag "WARNING" icon:dollar-sign                  | ::: tag "Goldenrod"   color:Goldenrod           |
| ::: tag "ERROR" icon:dollar-sign                    | ::: tag "Red"   color:Red                       |
| ::: tag "BASE_1 / BASE_2 / BASE_3" icon:dollar-sign | `#0F172B` / `#1E2939` / `#314158`               |
| ::: tag "BASE" icon:dollar-sign                     | alias for `BASE_2`                              |

Every variable except `BASE`/`CONTENT` has a matching `*Content` counterpart (`$PrimaryContent`, `$ErrorContent`, etc.) for text/icons drawn on top of it. There's no static property for these - reach them with the `!` operator (see **Content & Contrast**).

## Shades

Every palette color and theme variable exposes 0–100% lightness through an indexer:

```csharp "🔴 🟡 🟢"
KtColor light  = KtColor.Blue[70];      // 70% lightness (percent, int)
KtColor light2 = KtColor.Blue[0.7f];    // 70% lightness (fraction, float)
KtColor root   = KtColor.Blue[null];    // back to the root/default shade

KtColor themed = KtColor.PRIMARY[80, 20]; // 80% in light mode, 20% in dark mode - picked automatically
```

`foreach (var shade in KtColor.Blue)` iterates 11 shades from ~5% to ~95% lightness in 10% steps.

## Adjusting Lightness, Saturation & Opacity

```csharp "🔴 🟡 🟢" 
var hover   = baseColor + 10;    // +10% lightness (int = percentage points)
var hover2  = baseColor + 0.10f; // +10% lightness (float = fraction)
var pressed = baseColor - 10;    // -10% lightness
var step    = ++baseColor;       // +10% lightness, one "step"
var stepD   = --baseColor;       // -10% lightness

var vivid  = baseColor.Saturate(0.9f); // set saturation directly (same hue & lightness)
var dimmed = baseColor.Luminate(0.3f); // set lightness directly - alternative to baseColor[30]

var faded  = baseColor % 40;     // opacity -> 40% (int/int? on the right = opacity)
var same   = 40 % baseColor;     // order doesn't matter
var halved = baseColor / 2;      // opacity divided by 2
```

## Content & Contrast

```csharp "🔴 🟡 🟢"
KtColor text    = !background;  // content / contrast color
KtColor inverse = ~background;  // contrast from lightness only, ignoring theme name mapping
```

- `!color` returns a readable foreground color. For a theme variable's root value it looks up that variable's dedicated `*Content` counterpart (`!PRIMARY` → PrimaryContent, `!BASE` → CONTENT, `!CONTENT` → BASE, and this applies to `BASE_1`/`BASE_2`/`BASE_3` as well). For anything else - palette colors, hex, custom RGB, or a *shade* of a theme variable (e.g. `PRIMARY[70]`) - it falls back to computing near-black or near-white from lightness.
- `~color` always computes contrast from lightness directly, skipping the theme name lookup.

## Blending & Compositing

```csharp "🔴 🟡 🟢"
KtColor midpoint  = colorA + colorB;                // channel-wise average of both colors
KtColor flattened = translucentColor % background;  // alpha-composite onto a background
KtColor blend30   = KtColor.Mix(colorA, colorB, 30f); // 30% colorB, 70% colorA
```

`%` has two meanings depending on the right-hand type: an `int`/`int?` sets opacity (above); a `Color` or `KtColor` composites - flattening a translucent color onto that background. `+` between two colors is a simple average, not alpha-aware; use `%` when one side is meant to be translucent.

## Conditional & Fallback

```csharp "🔴 🟡 🟢"
KtColor a = isActive & KtColor.PRIMARY;   // PRIMARY when true, its content color when false
KtColor b = isActive | KtColor.PRIMARY;   // content color when true, PRIMARY when false
KtColor c = userColor | KtColor.PRIMARY;  // userColor, unless it's empty - then PRIMARY
```

## Comparison & Equality

```csharp "🔴 🟡 🟢"
if (colorA == colorB) { }
if (colorA != colorB) { }
bool brighter = colorA > colorB;   // compares packed ARGB int
```

- `==`/`!=` compare the canonical string form (name, hex, or token) rather than the resolved pixel - a theme variable and a literal that currently render the same color won't necessarily be `==`. Compare `.Render()` results (or the implicit `Color` conversion) if you need pixel equality.
- `<` and `>` are both implemented as `Int() > Int()` in the current source, so ordering comparisons - and `<=`/`>=`, which build on them - don't currently distinguish direction. Worth verifying before relying on it.

## Formatting & Inspection

```csharp "🔴 🟡 🟢"
string hex   = someColor.Hex();    // "#3B82F6"
string rgb   = someColor.RGB();    // "rgb(59,130,246)" or "rgba(...)" if translucent
string hsl   = someColor.HSL();    // "hsl(217.0,91.2%,59.8%)"
string web   = someColor.Web();    // named color if it is one, otherwise hex
string token = someColor;          // implicit -> canonical token, e.g. "Blue[60]%80"
int    argb  = someColor.Int();

if (someColor) { }                 // implicit bool: true unless Empty
```

Common state checks: `IsEmpty`, `IsOpaque`, `IsTranslucent`, `IsVariable`, `IsTheme`, `IsRoot`.

## Global Theming

```csharp "🔴 🟡 🟢"
KtColor.Render(true);   // dark mode - derives Base_1–3 & Content from the current BASE
KtColor.Render(false);  // light mode, same idea
KtColor.Render(null);   // no palette change - just re-raises ThemeChanged (e.g. after editing variables)
KtColor.DarkMode();     // same as Render(true)
KtColor.LightMode();    // same as Render(false)
KtColor.Toggle();       // flips based on the current mode

bool dark = KtColor.IsDark();

KtColor.@default("Primary", Color.FromArgb(96, 93, 255)); // set a variable at runtime
KtColor.Presets.Dracula();                                  // apply a built-in preset
```

```csharp "🔴 🟡 🟢"
KtColor.ThemeChanged   += isDark => RefreshUI();
KtColor.VariableChanged += (value, e) => Invalidate(); // e.PropertyName, e.g. "Primary"
```

35 built-in presets (`KtColor.Presets.<Name>()`), ported from DaisyUI:

`Light, Dark, Cupcake, Bumblebee, Emerald, Corporate, Synthwave, Retro, Cyberpunk, Valentine, Halloween, Garden, Forest, Aqua, Lofi, Pastel, Fantasy, Wireframe, Black, Luxury, Dracula, CMYK, Autumn, Business, Acid, Lemonade, Night, Coffee, Winter, Dim, Nord, Sunset, CaramelLatte, Abyss, Silk`
 

**KtBrush**:

```csharp "🔴 🟡 🟢"
KtBrush fill = KtColor.PRIMARY;      // implicit: becomes a solid brush
KtColor back = (KtColor)someBrush;   // explicit: gradients average their start/stop colors
```

**Design-time** - a `public KtColor` property on a control gets full Visual Studio designer support automatically (PropertyGrid dropdown of palette/theme names, color picker for custom values, correct serialization) with no extra code required.
