function watchBuildFile(pollMs = 1000) {

    if (!/^(localhost|127\.0\.0\.1)$/.test(location.hostname))
        return;

    const url = '/kimtoo.net.docs/site/build.txt';
    let lastValue = null;

    setInterval(() => {
        fetch(url, { cache: 'no-store' })
            .then(res => res.ok ? res.text() : null)
            .then(text => {
                if (text === null) return;
                if (lastValue === null) { lastValue = text; return; }
                if (text !== lastValue) location.reload();
            }).catch(() => {});
    }, pollMs);
}

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

   watchBuildFile();   

    observer.observe(document.body, {
        attributes: true,
        attributeFilter: [qualifiedName] // High performance: only fires for this exact attribute
    });
}

// 2. Run immediately on initial load (since script is at the bottom)
setTimeout(syncBodyTheme,1);





document.addEventListener('docmd:page-mounted', (event) => syncBodyTheme());