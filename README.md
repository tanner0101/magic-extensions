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

### NSData

The NSData extensions contain a number of conversions from Ints and Strings to NSData and vice-versa.

### Math

#### ^^

This infix operator allows for easy 'to the power of' operations such as `2^^4 = 16`.

### CoreBluetooth

#### stateString

Easily read or print the current state of a `CBCentralManager` or `CBPeripheralManager` object instead of trying to inspect the enum's value.

## Installation

MagicExtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MagicExtensions"
```

## Author

Tanner Nelson, tanner@bluebite.com

## License

MagicExtensions is available under the MIT license. See the LICENSE file for more info.
