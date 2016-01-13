/*
UITableViewExtensions.swift

Easily animate a UITableView between two data sources.

Ensure that the objects in your data source implement the Equatable protocol.

This means they must have a declaration `MyClass: Equatable` followed by

`public func ==(lhs: MyClass, rhs: MyClass) -> Bool {
return lhs.identifier == rhs.identifier
}`

<https://gist.github.com/tannernelson/6d140c5ce2a701e4b710>
*/

import UIKit

extension UITableView {
    
    
    /**
     Easily animate a `UITableView` between two data sources.
     
     Ensure that the objects in your data source implement the Equatable protocol.
     
     This means they must have a declaration `MyClass: Equatable` followed by
     
     `public func ==(lhs: MyClass, rhs: MyClass) -> Bool {
        return lhs.identifier == rhs.identifier
     }`
    */
    func switchDataSourceFrom<T:Equatable>(oldData: [T], to newData: [T], withAnimation animation: UITableViewRowAnimation) {
        self.switchDataSourceFrom(oldData, to: newData, withAnimation: animation, inSection: 0)
    }
    
    /**
     Easily animate a `UITableView` section between two data sources.
     
     Ensure that the objects in your data source implement the Equatable protocol.
     
     This means they must have a declaration `MyClass: Equatable` followed by
     
     `public func ==(lhs: MyClass, rhs: MyClass) -> Bool {
        return lhs.identifier == rhs.identifier
     }`
     */
    func switchDataSourceFrom<T:Equatable>(oldData: [T], to newData: [T], withAnimation animation: UITableViewRowAnimation, inSection section: Int) {
        
        if oldData == newData {
            return
        }
        
        var indexPathsToInsert = [NSIndexPath]()
        var indexPathsToDelete = [NSIndexPath]()
        
        //Look for new items
        for (index, newItem) in newData.enumerate() {
            var found = false
            
            for oldItem in oldData {
                if newItem == oldItem {
                    found = true
                }
            }
            
            if !found {
                indexPathsToInsert.append(
                    NSIndexPath(forRow: index, inSection: section)
                )
            }
        }
        
        //Look for deleted items
        for (index, oldItem) in oldData.enumerate() {
            var found = false
            
            for newItem in newData {
                if oldItem == newItem {
                    found = true
                }
            }
            
            if !found {
                indexPathsToDelete.append(
                    NSIndexPath(forRow: index, inSection: section)
                )
            }
        }
        
        if abs(oldData.count - newData.count) != abs(indexPathsToInsert.count - indexPathsToDelete.count) {
            print("[UITableViewExtension] [Error] Change in data source inconsitent with change change in index paths. Performing table reload instead of transition to prevent application crash. This is most likely due to multiple objects of class <T> comparing as equal in the data source.")
            
            self.reloadData()
            return
        }
        
        self.beginUpdates()
        
        //Look for moved items
        var movedIndexPaths = [NSIndexPath]()
        for (oldIndex, oldItem) in oldData.enumerate() {
            for (newIndex, newItem) in newData.enumerate() {
                if oldItem == newItem && oldIndex != newIndex {
                    let oldIndexPath = NSIndexPath(forRow: oldIndex, inSection: section)
                    let newIndexPath = NSIndexPath(forRow: newIndex, inSection: section)
                    self.moveRowAtIndexPath(oldIndexPath, toIndexPath: newIndexPath)
                    
                    movedIndexPaths.append(newIndexPath)
                }
            }
        }
        
        self.insertRowsAtIndexPaths(indexPathsToInsert, withRowAnimation: animation)
        self.deleteRowsAtIndexPaths(indexPathsToDelete, withRowAnimation: animation)
        
        self.endUpdates()
    }
    
    ///Reloads only the visible cells of the `UITableView`
    func reloadVisibleCells() {
        if let rows = self.indexPathsForVisibleRows {
            self.reloadRowsAtIndexPaths(rows, withRowAnimation: .None)
        }
    }
    
}
