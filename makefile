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