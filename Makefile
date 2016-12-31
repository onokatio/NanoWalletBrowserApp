allmake: dist/chrome_app.crx dist/chrome_extension.crx

dist/chrome_app.crx: src/mijin.io
	mkdir -p dist/chrome_app
	cp -R src/mijin.io dist/chrome_app/
	cp src/chrome_app/background.js dist/chrome_app
	cp src/chrome_app/manifest.json dist/chrome_app
	cp src/logo16.png dist/chrome_app
	cp src/logo128.png dist/chrome_app
	google-chrome --pack-extension=$(shell pwd)/dist/chrome_app
	$(RM) -rf dist/chrome_app
	$(RM) dist/chrome_app.pem

dist/chrome_extension.crx: src/mijin.io
	mkdir -p dist/chrome_extension
	cp -R src/mijin.io dist/chrome_extension/
	cp src/chrome_extension/manifest.json dist/chrome_extension
	cp src/chrome_extension/bg.js dist/chrome_extension
	cp src/logo16.png dist/chrome_extension
	cp src/logo128.png dist/chrome_extension
	google-chrome --pack-extension=$(shell pwd)/dist/chrome_extension
	$(RM) -rf dist/chrome_extension
	$(RM) dist/chrome_extension.pem

src/mijin.io:
	cd src && \
	$(RM) -rf mijin.io &&\
	wget -x -m -p -k -nv http://mijin.io/nanowallet/images/background.jpg && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot?v=4.6.3 && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot? && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff2?v=4.6.3 && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff?v=4.6.3 && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.ttf?v=4.6.3 && \
	wget -x -m -p -k -nv http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.svg?v=4.6.3 && \
	wget -x -m -p -k -nv -e "robots = off" -R eot,woff,woff2,ttf,svg http://mijin.io/nanowallet/start.html && \
	echo "html {overflow-y:scroll;}" >> mijin.io/nanowallet/css/nano.css && \
	cat mijin.io/nanowallet/css/font-awesome.min.css|sed -e "s/http:\/\/mijin.io\/nanowallet\/css\///g" | sed -e "s/?v=/%3Fv=/g" > tmp ;cat tmp > mijin.io/nanowallet/css/font-awesome.min.css && \
	$(RM) tmp && \
	wget -nv https://raw.githubusercontent.com/NemProject/nem-artwork/master/Nem%20logo%20100x100.png -O logo.png
