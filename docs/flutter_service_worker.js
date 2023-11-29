'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c4ca71232c82d452437507ce21823981",
"assets/AssetManifest.bin.json": "7e2896f19ad89937584be324c0804039",
"assets/AssetManifest.json": "ffbbf45f4ad1332ea67fbf23354e1737",
"assets/assets/fonts/Lacquer-Regular.ttf": "ca7d6cd15125bda2d871da2307dfab7a",
"assets/assets/fonts/LondrinaOutline-Regular.ttf": "1205d80654ed28e2d42b8b9bce913a02",
"assets/assets/images/A.png": "262a7c636d860cd7aacbfbfdd164f219",
"assets/assets/images/A2.png": "7c18389710aa4d67f54c321dae9bf069",
"assets/assets/images/A3.png": "4d0209735d87326da0c4523394042841",
"assets/assets/images/A4.png": "f0a93d6611059f5ee0dc1c8cf58b3bd6",
"assets/assets/images/A5.png": "c238cca4600595e457e278fe746ed67a",
"assets/assets/images/A6.png": "cfc73a13d689a4947fb676b22b631741",
"assets/assets/images/airukamra.jpg": "2bb1337629d0a65604e7b32494f0327d",
"assets/assets/images/colleen.jpg": "25d93cb4f31231e330c1d8b7e1aafb28",
"assets/assets/images/devfest20cloud.jpg": "03efaf2ae5bf27099dffc8e82885570e",
"assets/assets/images/devfestlive.jpg": "84f56b7d93b2f7052a7263c52fac56fe",
"assets/assets/images/E.png": "71ade057c23788f93605a0b6caffa555",
"assets/assets/images/E2.png": "8ad5918b0819d1c40dda20504697603e",
"assets/assets/images/E3.png": "942670093cdbced4557593a14b6cc234",
"assets/assets/images/E4.png": "e369e626f620ea90f231fb23edca5ec1",
"assets/assets/images/E5.png": "0d9a5fe01eedcac70f336da9b7846d9d",
"assets/assets/images/E6.png": "3db1d1fa845dfe9d1b0d13211f33d730",
"assets/assets/images/ffe23.jpg": "cf948ff2352c0786dfaf2c87c8d25425",
"assets/assets/images/gdgglobal.jpg": "2dca67ff93e14175ca10c2092f9fb471",
"assets/assets/images/gdscliveflutter.jpg": "e8747b240e0c480e19f36a5cb8e3a559",
"assets/assets/images/gdscpak.jpg": "a4b14969672a9a5dff984b4e53e82853",
"assets/assets/images/H.png": "64bf5318b10c56b059a7a99a0d71abcb",
"assets/assets/images/H2.png": "a724ad9d8fa537260a202863ed8324bd",
"assets/assets/images/H3.png": "2a82a0ed33f5a1e27f17e936e9149358",
"assets/assets/images/H4.png": "697b42fa5d431708fb87a6349d68ed8b",
"assets/assets/images/harfanaurat.png": "8d5d37cfeb76fdc61fee67b8d627e1ed",
"assets/assets/images/K.png": "cdd914c240451a7495699bf17adbfe6d",
"assets/assets/images/K2.png": "b0c8611a8796e62de409cc91b66a0daa",
"assets/assets/images/logo.png": "2fa48f7797e3a2944cf4af4b46bf3741",
"assets/assets/images/profilepic.png": "fa48883b8aa86b4f6e325ce2572fd8e9",
"assets/assets/images/Q.png": "66e8a2acc0cc4a5ab01c19c7fae465d6",
"assets/assets/images/Q2.png": "fad487582421f2507e95bcb53b34ddd4",
"assets/assets/images/Q3.png": "b0ec05676090387beadc8d39befb7ca1",
"assets/assets/images/Q4.png": "1714a632be305c98bfc0a0116b193e2a",
"assets/assets/images/R.png": "d09ea1449d0279b5abbbc4c1b3286034",
"assets/assets/images/R2.png": "0270152213736ed22bd0dc985826758b",
"assets/assets/images/R3.png": "bd7a631bf5707347c3de97b0875afb7f",
"assets/assets/images/R4.png": "7efbbdfa2839a720ba7db0de6b6874f5",
"assets/assets/images/T.png": "6ccc9355dac93bc93150c460aca2679a",
"assets/assets/images/T2.png": "8cd95e0cc449178be2cfddea6f97b5a4",
"assets/assets/images/T3.png": "7f0b6741e07a1c38d350217ab4862efa",
"assets/assets/images/T4.png": "30b1b59434f3c9e0e5ca0a78b6bafff0",
"assets/assets/images/T5.png": "8fc0f8af9941271e0071157f0eac53d3",
"assets/assets/images/techfeb22.jpg": "8e76a33d46183f69a2dc5eff0f66d24e",
"assets/FontManifest.json": "e540ed77ded31662c6291b2a06897765",
"assets/fonts/MaterialIcons-Regular.otf": "d8718d1dfeaac3edc8c6bc37262e8840",
"assets/NOTICES": "09c5c408928a4ce43f2e54c7faa982f9",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "895127e0f1b5ab9bac0024f4a6e26917",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "64edb91684bdb3b879812ba2e48dd487",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "f87e541501c96012c252942b6b75d1ea",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "4124c42a73efa7eb886d3400a1ed7a06",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"flutter.js": "59a12ab9d00ae8f8096fffc417b6e84f",
"icons/Icon-192.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/Icon-512.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/Icon-maskable-192.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/Icon-maskable-512.png": "d41d8cd98f00b204e9800998ecf8427e",
"index.html": "c3fa64aa6f73c682093810937984cabb",
"/": "c3fa64aa6f73c682093810937984cabb",
"logo.png": "2fa48f7797e3a2944cf4af4b46bf3741",
"main.dart.js": "6049546ccafd2e6aced3835df817eea1",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
