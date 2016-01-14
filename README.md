# MagicExtensions

[![CI Status](http://img.shields.io/travis/Tanner Nelson/MagicExtensions.svg?style=flat)](https://travis-ci.org/Tanner Nelson/MagicExtensions)
[![Version](https://img.shields.io/cocoapods/v/MagicExtensions.svg?style=flat)](http://cocoapods.org/pods/MagicExtensions)
[![License](https://img.shields.io/cocoapods/l/MagicExtensions.svg?style=flat)](http://cocoapods.org/pods/MagicExtensions)
[![Platform](https://img.shields.io/cocoapods/p/MagicExtensions.svg?style=flat)](http://cocoapods.org/pods/MagicExtensions)

A collection of Swift standard library extensions that simplify common tasks.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Extensions

### UITableView

#### switchDataSourceFrom(to:)
`func switchDataSourceFrom<T:Equatable>(oldData: [T], to newData: [T], withAnimation animation: UITableViewRowAnimation)`

This extensions takes the hassle out of adding, removing, and moving the `UITableViewCell`s of your table. Instead of calling `reloadData()`, use this extension to switch from the old data source to the new data source–just choose how you want the transition animated. You can even switch data sources for a given section. 

### UIScrollView

#### respondToKeyboard()

This simple function call allows any UIScrollView to dynamically respond to the touch keyboard opening and closing. It takes care of setting up the appropriate `NSNotificationCenter` subscriptions and even automatically scrolls to the active `UITextField`.

Just create a reference to the `UIScrollView` in your `UIViewController` and call this function in `viewDidLoad()`

### UIView

#### instantiateFromNib()

Easily instantiate a UIView object from a nib in the NSBundle by passing the name of the nib.

#### constrainToSuperview()

Constrain a subview to all the edges of its superview with one line.

### NSTimeInterval

#### readable

Make a human readable string like `5 hours` from any `NSTimeInterval`

### NSData

The NSData extensions contain a number of conversions from Ints and Strings to NSData and vice-versa.

### Math

#### ^^

This infix operator allows for easy 'to the power of' operations such as `2^^4 = 16`.

### MKMapView

#### zoomToAnnotations()

Zoom into and center the MKAnnotations on an MKMapView with one line. With our without animation.

### CoreBluetooth

#### stateString

Easily read or print the current state of a `CBCentralManager` or `CBPeripheralManager` object instead of trying to inspect the enum's value.

### UIFront

#### printFontNames()

Prints out all of the font families and names in UIFont. This is often a required step of including custom fonts in your application. 

## Installation

MagicExtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MagicExtensions"
```

When you want to use one of the extensions, open the `MagicExtensions` folder in the `Pods` folder in your project. Right click on the file you want, and select "Open in Finder". Then, drag the file into your main application, ensuring to select "Copy if Needed".

Add any of the extension files you want to your other Pods by clicking on them and checking the desired Pod in the `Target Membership` pane.

Note: Adding extensions this way is required because (as of this writing) Swift does not support exposing extensions from different modules.

## Author

Tanner Nelson, tanner@bluebite.com

## License

MagicExtensions is available under the MIT license. See the LICENSE file for more info.
