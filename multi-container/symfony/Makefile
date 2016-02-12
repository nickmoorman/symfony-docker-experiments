all: vendor-install clear-assets clear-cache assets-install

clean:
	rm -rf var/cache/* vendor/*

vendor-install:
	composer install

cache-clear:
	php bin/console cache:clear --no-warmup

clear-cache: cache-clear

assets:
	php bin/console assets:install web

clear-assets:
	rm -fr web/bundles/*

assets-install:
	php bin/console assets:install --symlink --relative
