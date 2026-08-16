/*!
 * docmd (v0.9.0)
 * Copyright (c) 2025-present docmd.io
 * License: MIT
 */
function syncBodyTheme(t="data-theme"){const e=document.documentElement.dataset.theme;if(t.trim().length===0||document.body.hasAttribute(t)&&document.body.getAttribute(t)===e)return;document.body.setAttribute(t,e),new MutationObserver(n=>{for(const o of n)o.type==="attributes"&&o.attributeName===t&&syncBodyTheme("")}).observe(document.body,{attributes:!0,attributeFilter:[t]})}setTimeout(syncBodyTheme,1),document.addEventListener("docmd:page-mounted",t=>syncBodyTheme());
