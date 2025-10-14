'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "888483df48293866f9f41d3d9274a779",
"icons/Icon-512.png": "0c7f4392d25d63cc4ca8fc563c9760bb",
"icons/Icon-maskable-512.png": "0c7f4392d25d63cc4ca8fc563c9760bb",
"icons/Icon-192.png": "4690ed7a9fdcda35ad37e80b37f02809",
"icons/Icon-maskable-192.png": "4690ed7a9fdcda35ad37e80b37f02809",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"index.html": "0b8291088f954bb828e1d6c6d902c98e",
"/": "0b8291088f954bb828e1d6c6d902c98e",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "85dbb45a9abc2dda07e091fab8ad9b56",
"assets/assets/svgs/drawer_menu.svg": "1fb1d6d7bf7237fe7ba189444f6aaaca",
"assets/assets/svgs/css.svg": "c711865e5f6fa44733e3ba386b4171c1",
"assets/assets/svgs/supabase.svg": "357c209cd8c6fa1c20761fe5486aac22",
"assets/assets/svgs/postman.svg": "fbfb57a181ce251926d686d12e6cee5a",
"assets/assets/svgs/graphql.svg": "ca975c8abf5b387df77f299e4449b911",
"assets/assets/svgs/arrow_up_right.svg": "aabea8af768a03d8a0f7e0ddf808f9fd",
"assets/assets/svgs/dart.svg": "bd86c30d4f79a4e3582ab26b8fe823d7",
"assets/assets/svgs/linkedin.svg": "ec74cb1220de1f0ca4cab87c63f29e75",
"assets/assets/svgs/github.svg": "40f0f895711625c28efffd604bae0e0e",
"assets/assets/svgs/flutter.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/assets/svgs/vscode.svg": "fb04093bf828b3669791c89d47ca6f8c",
"assets/assets/svgs/figma.svg": "35cb806185da63b5a5d03dcaf288a4a4",
"assets/assets/svgs/twitter.svg": "487b96d315089fbc2b32d21923d8ef14",
"assets/assets/svgs/git.svg": "f7287ff316e284af16ce082c870c478f",
"assets/assets/svgs/android.svg": "47d679dfd0eba6a8bb3480ad79c4c738",
"assets/assets/svgs/html.svg": "85ed6b9882da9463001ad70ef5ca40b7",
"assets/assets/svgs/javascript.svg": "303ef5498c727e48194b34af3479e211",
"assets/assets/svgs/apple.svg": "534867df02696396fc5b553fd2b89e21",
"assets/assets/svgs/andorid_studio.svg": "063b0d9be396c12c7b998ecbda7a7e2c",
"assets/assets/svgs/whatsapp.svg": "691178a302a2d91e26b4094e437fac0d",
"assets/assets/svgs/webdevelopment.svg": "1815f29c0ed4468155100a0e687f211c",
"assets/assets/svgs/node_js.svg": "89ccb09060a7adf788ea2340c54d6d78",
"assets/assets/svgs/firebase.svg": "92ed4416ef316b0a25440b0222573da7",
"assets/assets/svgs/uiux.svg": "2804019d6c7926a0e2d1386a9a48c881",
"assets/assets/svgs/close_x.svg": "b39f282708821a92b762748a681b9b59",
"assets/assets/images/me.jpg": "37f8e9c3bec893ddf60b7c8513fbf371",
"assets/assets/images/about_me.png": "90ce9fa857e02884b8e27bb4431d0bc2",
"assets/assets/fonts/PlusJakartaSans-ExtraBold.ttf": "f90855567d2c693a26e66f7184645099",
"assets/assets/fonts/PlusJakartaSans-Regular.ttf": "dd3a1370a03dc0f2d7d093bd0ffe7c0b",
"assets/assets/fonts/DentonTextTest-BoldItalic.otf": "6fa8be9d9e93d80aac7570838e82367e",
"assets/assets/fonts/PlusJakartaSans-Medium.ttf": "0a825b3e08f62af5a9bc9130843b12ff",
"assets/assets/fonts/PlusJakartaSans-Bold.ttf": "bac8ecad2d6da4aa6b4200699a80a9dd",
"assets/assets/fonts/JetBrainsMono-Regular.ttf": "a0147b5ab9e4946e81879aef45313def",
"assets/assets/fonts/PlusJakartaSans-SemiBold.ttf": "73de6fb49299ccb6478575127008c120",
"assets/assets/fonts/PlusJakartaSans-Light.ttf": "96e9519e0b4b43793371e04336d658cb",
"assets/fonts/MaterialIcons-Regular.otf": "62f4dbb4b1142d6bd75606a803cb92eb",
"assets/NOTICES": "77652b3ec3f2e6641837d7bb23792ef4",
"assets/FontManifest.json": "f43a85ab4b74811367e01b6c254266cd",
"assets/AssetManifest.bin": "853de1fd268546a1a5771654062f02ea",
"assets/AssetManifest.json": "1deb408f70dd25d6776526ee47b3926e",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"favicon.png": "69a9b594a9da3b77db1fa72bd01f629a",
"flutter_bootstrap.js": "6cd6ac7a63a62da6411ed303e2f3f0d0",
"version.json": "009c9e65172e010890f7f65fde438006",
"main.dart.js": "d90403ae328cb0fead55d3f800480f1a"};
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
