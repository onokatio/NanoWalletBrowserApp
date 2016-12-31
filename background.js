chrome.app.runtime.onLaunched.addListener(function() {
  chrome.app.window.create('src/mijin.io/nanowallet/start.html', {
    'outerBounds': {
      'width': 713,
      'height': 543
    }
  });
});

