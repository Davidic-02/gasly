.PHONY: runner clean get analyze test build watch fix-runner

runner:
	flutter pub run build_runner build --delete-conflicting-outputs

watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

# Use this if you get Error 78 again
fix-runner:
	rm -rf .dart_tool/build
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs

clean:
	flutter clean
    
get:
	flutter pub get

analyze:
	flutter analyze

test:
	flutter test

setup: clean get

build-dev:
	flutter build apk --debug

build-prod:
	flutter build apk --release