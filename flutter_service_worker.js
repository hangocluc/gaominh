'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "937539d4406998d0b15d7d74d9a87f73",
"version.json": "aead1405c16acab623932a0211feeb73",
"index.html": "0dc7630adfc6e4a9dbd4f2c465810920",
"/": "0dc7630adfc6e4a9dbd4f2c465810920",
"main.dart.js": "57b53a054e904458166dfeba5c54392b",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "39ab56cba66c0bd2bfe45bab8f8dca90",
"assets/AssetManifest.json": "799d85b3fc01cb5cd0225a4e84f754ba",
"assets/NOTICES": "11963e5d9a10eb56003d6a72e60c548a",
"assets/FontManifest.json": "69dd01aef7f3f9ec08f301af581fb734",
"assets/AssetManifest.bin.json": "d52b8402fa2bc76d1be366728d98e35e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "03d4d10f4ba51a280d186f2da3b9b456",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "62d5c428072f776d70e187df473607b3",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "a0adf345fa0d763cb13ecdd501f50480",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "0135911eebb46c24d2f6b40764d05655",
"assets/fonts/MaterialIcons-Regular.otf": "a79fe42d4cffcd3acb39892e9f22d55a",
"assets/assets/images/banner5.jpeg": "cca873fb0895cc1c785933a5179f4ad8",
"assets/assets/images/image8.jpg": "7e2cb4f755bb0f64448304ee6c6700b4",
"assets/assets/images/image9.jpg": "266ebd8bf832c6bd86d2991051798214",
"assets/assets/images/banner2.png": "823a4b7ede5ab205f8c0f2a7f23f75cb",
"assets/assets/images/image14.jpg": "0841d30ccef170ba674bc06fa187ae63",
"assets/assets/images/image15.jpg": "9b3ff3f68c3b12521b368839597ef7b9",
"assets/assets/images/banner3.png": "eda878631bb68eec7e1cc3ef16a53557",
"assets/assets/images/banner1.png": "09cdfe1075a4c4488f2121bf91f7fb05",
"assets/assets/images/image17.jpg": "5fe9619a24d8463fda949833f8091641",
"assets/assets/images/image16.jpg": "38e83d3b63862bd9592a2d8370691d6c",
"assets/assets/images/banner4.png": "a072b91ff5320fe7c0244a030d9ab00b",
"assets/assets/images/image12.jpg": "8664ecf0b666a7b95a3c8b74c96b0318",
"assets/assets/images/image13.jpg": "9aace101ef3675572c2ce55e88d25946",
"assets/assets/images/image11.jpg": "88f7ff4b6106e4f535b898562d349daa",
"assets/assets/images/image10.jpg": "58f11844bf6c7f85fc1c5f15c02f3f6f",
"assets/assets/images/banner6.jpg": "c1b6bae093aeede118ddba719a1c7056",
"assets/assets/images/logo.png": "a2d092b42528fce7f63f42e424dede22",
"assets/assets/images/image18.jpg": "e6a97c1da70e81044101c66e1378928d",
"assets/assets/images/product2.png": "75fb7e5c3699ab572900ce99d9993c0f",
"assets/assets/images/image7.jpg": "1f089a2de3c0f2ef1e47d1f59d5c4989",
"assets/assets/images/image6.jpg": "9f11234414986f4a0c12922ab8977d35",
"assets/assets/images/product3.png": "0854b6c1a2c2263c04afc93a2d89c1a2",
"assets/assets/images/product1.png": "659200b4224cda79d8f6e4398ba13b2e",
"assets/assets/images/image4.png": "b8901ea8ee1dffa696b2a42c8537e75f",
"assets/assets/images/image5.jpg": "057460b4b04df365102e7942efbea1ba",
"assets/assets/images/product4.png": "a1ec85f6ae2c16833027a342c89da28e",
"assets/assets/images/product5.png": "30c463975d657b53aaab3466b3988d84",
"assets/assets/images/image2.png": "c378bb1fc74b50025dc6bfe621afc6c2",
"assets/assets/images/image.png": "529e13b6fd7e8a705131a8e04347d1fe",
"assets/assets/images/image3.png": "b13de12720bb414784c83fa1e5f98b1d",
"assets/assets/fonts/Roboto-Light.ttf": "25e374a16a818685911e36bee59a6ee4",
"assets/assets/fonts/Roboto-Regular.ttf": "303c6d9e16168364d3bc5b7f766cfff4",
"assets/assets/fonts/Roboto-Bold.ttf": "8c9110ec6a1737b15a5611dc810b0f92",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
