import UIKit

extension UITableView {
    
    func switchDataSourceFrom<T:Equatable>(oldData: [T], to newData: [T], withAnimation animation: UITableViewRowAnimation) {
        
        var indexPathsToInsert = [NSIndexPath]()
        var indexPathsToDelete = [NSIndexPath]()
        
        var index = 0
        for newScan in newData {
            var found = false
            
            for oldScan in oldData {
                if newScan == oldScan {
                    found = true
                }
            }
            
            if !found {
                indexPathsToInsert.append(
                    NSIndexPath(forRow: index, inSection: 0)
                )
            }
            
            index++
        }
        
        index = 0
        for oldScan in oldData {
            var found = false
            
            for newScan in newData {
                if oldScan == newScan {
                    found = true
                }
            }
            
            if !found {
                indexPathsToDelete.append(
                    NSIndexPath(forRow: index, inSection: 0)
                )
            }
            
            index++
        }
        
        self.beginUpdates()
        
        self.insertRowsAtIndexPaths(indexPathsToInsert, withRowAnimation: animation)
        self.deleteRowsAtIndexPaths(indexPathsToDelete, withRowAnimation: animation)
        
        self.endUpdates()
        
        if let rows = self.indexPathsForVisibleRows {
            self.reloadRowsAtIndexPaths(rows, withRowAnimation: .None)
        }
    }
    
}