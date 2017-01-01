chrome.app.runtime.onLaunched.addListener(function() {
  chrome.app.window.create('build/start.html', {
    'outerBounds': {
      'width': 768,
      'height': 543
    }
  });
});

