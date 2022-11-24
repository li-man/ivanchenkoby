.PHONY: info

info:
	echo "\033[33m \n***IVANCHENKOBY WEBSERVER***\n \033[m"

jclear: info
	echo "\033[33m ***CLEANUP*** \033[m"
	rm -rf administrator/templates/atum/css;
	rm -rf templates/cassiopeia/css;
	rm -rf administrator/templates/system/css;
	rm -rf templates/system/css;
	rm -rf media/;
	rm -rf node_modules/;
	rm -rf libraries/vendor/;
	rm -f administrator/cache/autoload_psr4.php;
	rm -rf installation/template/css

jbuild: jclear
	echo "\033[33m ***BUILD*** \033[m"
	composer install
	npm ci
