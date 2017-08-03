.PHONY: bundle
bundle:
	bundle install --path vendor/bundle

.PHONY: pods
pods:
	bundle exec pod install

.PHONY: install
install:
	buck install -r //BuckTest:BuckTestApp