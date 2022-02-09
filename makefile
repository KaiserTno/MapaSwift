#  https://gpgtools.org/ Keychain
#  https://rvm.io/
#  bash <(curl -Ls https://install.tuist.io) in https://docs.tuist.io/tutorial/get-started
#  gem install bundler:2.2.15
#  brew bundle
#  bundle install

setup:
	curl -Ls https://install.tuist.io | bash
	brew install carthage
	carthage update

project:
	killall Xcode || exit 0
	make clean_dir
	tuist generate
	xed .

clean_dir:
	find ./Targets* -name "*.xcodeproj" -exec rm -Rf {} \; || exit 0
	# rm -Rf ./**/*.xcodeproj
	rm -rf *.xcworkspace

clean:
	make clean_dir