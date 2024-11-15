importScripts(
  'https://www.gstatic.com/firebasejs/11.0.2/firebase-app-compat.js'
);
importScripts(
  'https://www.gstatic.com/firebasejs/11.0.2/firebase-messaging-compat.js'
);

console.log('sw-11.0.2');

firebase.initializeApp({
  apiKey: '',
  authDomain: '',
  projectId: '',
  storageBucket: '',
  messagingSenderId: '',
  appId: '',
  measurementId: '',
});
const messaging = firebase.messaging();

messaging.onMessage(function (payload) {
  console.log(
    '[firebase-messaging-sw.js] Received background message ',
    payload
  );
  // Customize notification here
  const notificationTitle = 'Background Message Title';
  const notificationOptions = {
    body: 'Background Message body.',
    icon: '/firebase-logo.png',
  };

  self.registration.showNotification(notificationTitle, notificationOptions);
});
