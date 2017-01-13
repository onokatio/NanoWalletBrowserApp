browser.browserAction.onClicked.addListener(function() {
	createData = new Object();
	createData.url = browser.extension.getURL('build/start.html');
	createData.type = "popup";
	createData.width = 768;
	createData.height = 543;
	browser.windows.create(createData);
});
