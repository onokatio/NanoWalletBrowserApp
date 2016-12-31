chrome.browserAction.onClicked.addListener(function(tab) {
	createData = new Object();
	createData.url = chrome.extension.getURL('mijin.io/nanowallet/start.html');
	createData.type = "popup";
	createData.width = 768;
	createData.height = 543;
	chrome.windows.create(createData);
});
