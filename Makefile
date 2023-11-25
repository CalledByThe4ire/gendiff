install:
	composer install

validate:
	composer validate

console:
	composer exec --verbose psysh

lint:
	composer exec --verbose phpcs -- --standard=PSR12 src tests
	composer exec --verbose phpstan

lint-fix:
	composer exec --verbose phpcbf -- --standard=PSR12 src tests

test:
	composer exec --verbose phpunit tests -- --coverage-clover build/logs/clover.xml

genDiff:
	./bin/gendiff tests/fixtures/file1.yaml tests/fixtures/file2.yaml
