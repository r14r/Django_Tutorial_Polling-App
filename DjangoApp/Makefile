PREFIX_PKG := django_tutorial_polls

VERSION_BOOTSTRAP := 4.4.1

default:
	grep -E ':\s+#' Makefile

clearcache:	# Clear Cache
	python3 manage.py clearcache

run:		# Run Server
	python3 manage.py runserver 8000

deploy:		# Deploy
	rm -rf dist $(PREFIX_PKG)*
	rm -rf polls.dist
	cd polls && python3 setup.py sdist
	mkdir polls.dist && mv polls/dist/* polls/$(PREFIX_PKG)* polls.dist


jquery_install:		# Install jQuery Library
	cd .. && yarn add jquery
	rm -rf polls/static/jquery
	mkdir  polls/static/jquery
	cp ../node_modules/jquery/dist/* polls/static/jquery

bootstrap_install:	# Install Bootstrap Library
	cd .. && yarn add bootstrap
	rm -rf  polls/static/bootstrap
	mkdir   polls/static/bootstrap
	cp -R ../node_modules/bootstrap/dist/* polls/static/bootstrap

bootstrap_download:	# Install Bootstrap from Source
	mkdir -p install/bootstrap
	rm -rf polls/static/vendor/bootstrap/bootstrap-$(VERSION_BOOTSTRAP)-dist
	wget -q https://github.com/twbs/bootstrap/releases/download/v$(VERSION_BOOTSTRAP)/bootstrap-$(VERSION_BOOTSTRAP)-dist.zip -O install/bootstrap/$(VERSION_BOOTSTRAP).zip && \
	unzip install/bootstrap/$(VERSION_BOOTSTRAP).zip -d polls/static/vendor/bootstrap/
	mv polls/static/vendor/bootstrap/bootstrap-$(VERSION_BOOTSTRAP)-dist polls/static/vendor/bootstrap/$(VERSION_BOOTSTRAP)

