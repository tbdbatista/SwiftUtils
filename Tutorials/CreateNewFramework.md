# Create XCFramework

## For start:

Start by enabling Build Libraries for Distribution from build settings in xcode.

Remember to get public access to classes will be imported and choose iOS target version.

## Creating XCFramework file:
Lets assume the new framework was created on Desktop path.

terminal> xcodebuild archive -scheme FrameworkName -archivePath ~/Desktop/FrameworkName-iphonesimulator.xcarchive -sdk iphonesimulator SKIP_INSTALL=NO

terminal> xcodebuild archive -scheme FrameworkName -archivePath ~/Desktop/FrameworkName-iphoneos.xcarchive SKIP_INSTALL=NO

terminal> xcodebuild -create-xcframework -framework ~/Desktop/FrameworkName-iphonesimulator.xcarchive/Products/Library/Frameworks/FrameworkName.framework -framework ~/Desktop/FrameworkName-iphoneos.xcarchive/Products/Library/Frameworks/FrameworkName.framework -output ~/Desktop/FrameworkName.xcframework

All done 😃
