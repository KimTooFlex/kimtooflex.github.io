// 1. Define a reusable sync function


function syncBodyTheme(qualifiedName = "data-theme") {
    const theme =document.documentElement.dataset.theme;
    
    if (qualifiedName.trim().length===0 || (document.body.hasAttribute(qualifiedName) && document.body.getAttribute(qualifiedName)===theme))
        return;

    document.body.setAttribute(qualifiedName,  theme);

    const observer = new MutationObserver((mutationsList) => {
        for (const mutation of mutationsList) {
            if (mutation.type === 'attributes' && mutation.attributeName === qualifiedName)
                syncBodyTheme("");
        }
    });

    observer.observe(document.body, {
        attributes: true,
        attributeFilter: [qualifiedName] // High performance: only fires for this exact attribute
    });
}

// 2. Run immediately on initial load (since script is at the bottom)
setTimeout(syncBodyTheme,1);





document.addEventListener('docmd:page-mounted', (event) => syncBodyTheme());