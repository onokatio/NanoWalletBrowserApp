REQUIRE = src/common/NanoWallet/build src/common/logo*.png


#allmake: chrome_app chrome_extension
allmake: chrome_extension

chrome_extension:
	cp -r ./NanoWallet/build ./chrome/
	zip -r NanoWallet.zip ./chrome
