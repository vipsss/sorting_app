//
//  SortingModel.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import Foundation

class SortingLogic{
    
    private var list: [Int]
    private var sortedList: [Int]
    
    private var history: [[Int]] = []
    private var step = 0
    
    init(list: [Int]) {
        self.list = list
        self.sortedList = list
        
        print("init list \(list)")
    }
    
    func nextIteration() {
        guard step < list.count - 1 else {
            return
        }
        
        let sortResult = sortedList.selectionSort(step: step)
        history.append(sortResult)
        
        sortedList = sortResult
        step += 1
        
        print(sortedList)
    }
    
    func previousIteration() {
        guard step > 0 else {
            return
        }
        
        step -= 1
        _ = history.popLast()
        
        sortedList = history.last ?? list
        
        print(sortedList)
    }
    
    func isFirstStep() -> Bool {
        return self.step > 0
    }
    
    func isLastStep() -> Bool {
        return step < list.count - 1
    }
    
    func generateViewModel() -> SortingViewModel {
        return SortingViewModel(isPreviousActive: self.isFirstStep(),
                                isNextActive: self.isLastStep(),
                                sortItems: self.sortedList)
    }
    
    
}

