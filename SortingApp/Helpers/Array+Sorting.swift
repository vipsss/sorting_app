//
//  Array+Sorting.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import Foundation

extension Array where Element: Comparable {
    
    func selectionSort(step: Int) -> Array<Element> {
        
        guard self.count > 1 else {
            return self
        }
        guard step >= 0 else {
            return self
        }
        
        //mutated copy
        var output: Array<Element> = self
        
        let primaryindex = step
        
        var minimum = primaryindex
        var secondaryindex = primaryindex + 1
        
        while secondaryindex < output.count {
            
            //store lowest value as minimum
            if output[minimum] > output[secondaryindex] {
                minimum = secondaryindex
            }
            secondaryindex += 1
        }
        
        
        //swap minimum value with array iteration
        if primaryindex != minimum {
            output.swapAt(primaryindex, minimum)
        }
        
        return output
    }
}
