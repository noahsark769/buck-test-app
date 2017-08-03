apple_library(
  name = 'TinyConstraints',
  visibility = ['PUBLIC'],
  exported_headers = glob([]),
  srcs = glob([
    'Pods/TinyConstraints/**/*.swift',
  ]),
  frameworks = [
    '$SDKROOT/System/Library/Frameworks/Foundation.framework'
  ],
)

apple_resource(
  name = 'BuckTestAppResources',
  files = glob(['BuckTest/*.png']),
  dirs = [],
)

apple_bundle(
  name = 'BuckTestApp',
  binary = ':BuckTestAppBinary',
  extension = 'app',
  info_plist = 'BuckTest/Info.plist',
  tests = [],
)

apple_binary(
  name = 'BuckTestAppBinary',
  deps = [':BuckTestAppResources', ':TinyConstraints'],
  preprocessor_flags = ['-fobjc-arc', '-Wno-objc-designated-initializers'],
  bridging_header = 'BuckTest/BuckTest-Bridging-Header.h',
  headers = glob([
    'BuckTest/**/*.h',
  ]),
  srcs = glob([
    'BuckTest/**/*.swift',
    'BuckTest/**/*.m',
  ]),
  frameworks = [
    '$SDKROOT/System/Library/Frameworks/UIKit.framework',
    '$SDKROOT/System/Library/Frameworks/Foundation.framework',
  ],
)

apple_package(
  name = 'BuckTestAppPackage',
  bundle = ':BuckTestApp',
)
