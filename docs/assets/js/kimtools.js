/*!
 * docmd (v0.9.0)
 * Copyright (c) 2025-present docmd.io
 * License: MIT
 */
function watchBuildFile(t=1e3){if(!/^(localhost|127\.0\.0\.1)$/.test(location.hostname))return;const o="/kimtoo.net.docs/site/build.txt";let e=null;setInterval(()=>{fetch(o,{cache:"no-store"}).then(n=>n.ok?n.text():null).then(n=>{if(n!==null){if(e===null){e=n;return}n!==e&&location.reload()}}).catch(()=>{})},t)}function talkTo(){const t=t||{},o=new Date;(function(){var e=document.createElement("script"),n=document.getElementsByTagName("script")[0];e.async=!0,e.src="https://embed.tawk.to/6306a5d437898912e964fc2b/1gb8vfi4s",e.charset="UTF-8",e.setAttribute("crossorigin","*"),n.parentNode.insertBefore(e,n)})()}function syncBodyTheme(t="data-theme"){const o=document.documentElement.dataset.theme;if(t.trim().length===0||document.body.hasAttribute(t)&&document.body.getAttribute(t)===o)return;document.body.setAttribute(t,o);const e=new MutationObserver(n=>{for(const r of n)r.type==="attributes"&&r.attributeName===t&&syncBodyTheme("")});talkTo(),e.observe(document.body,{attributes:!0,attributeFilter:[t]})}setTimeout(syncBodyTheme,1),document.addEventListener("docmd:page-mounted",t=>syncBodyTheme());
