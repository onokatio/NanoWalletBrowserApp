make:
	#713,543
	cd src \
	$(RM) -rf mijin.io \
	wget -nv http://mijin.io/nanowallet/images/background.jpg && \
	wget -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot?v=4.6.3 && \
	wget -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.eot? && \
	wget -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff2?v=4.6.3 && \
	wget -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.woff?v=4.6.3 && \
	wget -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.ttf?v=4.6.3 && \
	wget -x -m -p -k -nv -e "robots = off" http://mijin.io/nanowallet/css/fonts/fontawesome-webfont.svg?v=4.6.3 && \
	wget -x -m -p -k -nv -e "robots = off" -R eot,woff,woff2,ttf,svg http://mijin.io/nanowallet/start.html && \
	cat mijin.io/nanowallet/css/font-awesome.min.css|sed -e "s/http:\/\/mijin.io\/nanowallet\/css\///g" | sed -e "s/?v=/%3Fv=/g" > tmp ;cat tmp > mijin.io/nanowallet/css/font-awesome.min.css && \
	$(RM) tmp && \
	wget -nv https://raw.githubusercontent.com/NemProject/nem-artwork/master/Nem%20logo%20100x100.png -O logo.png

