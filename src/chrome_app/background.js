chrome.app.runtime.onLaunched.addListener(function() {
  chrome.app.window.create('mijin.io/nanowallet/start.html', {
    'outerBounds': {
      'width': 768,
      'height': 543
    }
  });
});

