![logo](https://evok.ly/wp-content/uploads/2016/06/evo-ost.png)

#iOS SDK for Swift 3
*beacons proximity marketing platform*


##Installation

###Manual

1. Add `Evokly.framework` to **Embedded binaries** & **Linked Frameworks and Libraries** in target settings `General` tab.

2. `import Evokly` or `@import Evokly;`.

3. In `Build Phases` add run script phase: 
  	 `bash "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Evokly.framework/strip-frameworks.sh"
`


> For Obj-c target: under `Build Settings`, in section `Build Options` set `Embedded Content Contains Swift Code` to **YES**.


###CocoaPods

```ruby
use_frameworks!
pod 'Evokly'

```
###Carthage
```ruby
github "evokly/ios-sdk"
// and then
carthage checkout
```

##Using Evokly

### Register
Get your Public API Key from https://evok.ly and pass it along with subdomain to register funcion.
In `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil)`:

```swift
Evokly.register(subdomain: "mySweetDomain", publicApiKey: "Long api key")
```

### Handle URL
before iOS 9:

```swift
func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any)) -> Bool {
   let handled = Evokly.handleURL(url, sourceApplication: sourceApplication)
   //Custom logic here
   return handled
}
```

for iOS 9 and later:

```swift
func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        let handled = Evokly.handleURL(url, sourceApplication: options[UIApplicationOpenURLOptionsKey("UIApplicationOpenURLOptionsSourceApplicationKey")] as? String)
    //Custom logic here
    return handled
}
```

### Handle notifications
Right click your `Info.plist` and Open as Source Code. Paste the following code before the last`</dict>`.

```xml
<key>CFBundleURLTypes</key>
<array>
	<dict>
		<key>CFBundleURLSchemes</key>
		<array>
			<string>evokly-mySweetDomain</string>
		</array>
	</dict>
</array>	
```

Then in **AppDelegate**:

```swift
func application(_ application: UIApplication, didReceive notification: UILocalNotification) {
    let handled = Evokly.handleNotification(notification)
     //Cusom logic here
}
```

###Analytics
By default Evokly use `UIDevice.currentDevice().identifierForVendor` to track users. If you want to use Advertising Identifier, you can pass it to Evokly before registering.

```swift
Evokly.setAdvertisingIdentifier(someAdvertisingIdentifier)
```


###Debuging
There is a debug screen to help you see what's going on in Evokly. Present it with parent view controller.

```swift
func someButtonAction() {
	Evokly.presentDebugViewController(parent: self)
}
```

###Location 
Right click your `Info.plist` and Open as Source Code. Paste the following code before the last`</dict>`.

```xml
<key>NSLocationAlwaysUsageDescription</key>
<string>App needs your location to work with beacons.</string>
<key>NSBluetoothPeripheralUsageDescription</key>
<string>App needs bluetooth to work with beacons.</string>
```


