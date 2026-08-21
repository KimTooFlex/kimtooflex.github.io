/*!
 * docmd (v0.9.0)
 * Copyright (c) 2025-present docmd.io
 * License: MIT
 */
function watchBuildFile(t=1e3){if(!/^(localhost|127\.0\.0\.1)$/.test(location.hostname))return;const o="/kimtoo.net.docs/site/build.txt";let n=null;setInterval(()=>{fetch(o,{cache:"no-store"}).then(e=>e.ok?e.text():null).then(e=>{if(e!==null){if(n===null){n=e;return}e!==n&&location.reload()}}).catch(()=>{})},t)}function syncBodyTheme(t="data-theme"){const o=document.documentElement.dataset.theme;if(t.trim().length===0||document.body.hasAttribute(t)&&document.body.getAttribute(t)===o)return;document.body.setAttribute(t,o);const n=new MutationObserver(e=>{for(const r of e)r.type==="attributes"&&r.attributeName===t&&syncBodyTheme("")});watchBuildFile(),n.observe(document.body,{attributes:!0,attributeFilter:[t]})}setTimeout(syncBodyTheme,1),document.addEventListener("docmd:page-mounted",t=>syncBodyTheme());
