const CACHE_NAME = 'docmd-cache-1787572084629';
    
    self.addEventListener('install', (event) => {
      self.skipWaiting();
    });

    self.addEventListener('activate', (event) => {
      event.waitUntil(
        caches.keys().then((cacheNames) => {
          return Promise.all(
            cacheNames.map((cacheName) => {
              if (cacheName !== CACHE_NAME && cacheName.startsWith('docmd-cache-')) {
                return caches.delete(cacheName);
              }
            })
          );
        }).then(() => self.clients.claim())
      );
    });

    self.addEventListener('fetch', (event) => {
      if (event.request.method !== 'GET') return;
      
      event.respondWith(
        caches.match(event.request).then((cachedResponse) => {
          if (cachedResponse) {
             // Return cached, but optionally fetch in background to update cache
             fetch(event.request).then(response => {
                if(response && response.status === 200 && response.type === 'basic' && !response.redirected) {
                   const responseToCache = response.clone();
                   caches.open(CACHE_NAME).then(cache => {
                     cache.put(event.request, responseToCache);
                   });
                }
             }).catch(() => {});
             return cachedResponse;
          }
          
          return fetch(event.request).then((response) => {
            // Safari WebKit Strict Security Policy: Service Workers cannot blindly use cache.put on redirected streams.
            // Rather than returning a 302 (Response.redirect) which triggers loop vulnerabilities in some SPAs,
            // we synthesize a literal clone of the stream masking the redirected boolean flag.
            let cacheResponse = response.clone();
            let returnResponse = response;
            
            if (response && response.redirected) {
                const clonedStream = response.clone().body;
                const headers = new Headers(response.headers);
                cacheResponse = new Response(clonedStream, {
                    headers: headers,
                    status: response.status,
                    statusText: response.statusText,
                });
                returnResponse = cacheResponse.clone();
            }

            if(!response || response.status !== 200 || response.type !== 'basic') {
              return returnResponse;
            }
            
            caches.open(CACHE_NAME)
              .then((cache) => {
                cache.put(event.request, cacheResponse);
              });
            return returnResponse;
          });
        })
      );
    });