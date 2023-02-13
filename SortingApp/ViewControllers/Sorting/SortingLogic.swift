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
    }
    
    func nextIteration() {
        guard self.isLastStep() else {
            return
        }
        
        let sortResult = self.sortedList.selectionSort(step: step)
        self.history.append(sortResult)
        
        self.sortedList = sortResult
        self.step += 1
        
        print(self.sortedList)
    }
    
    func previousIteration() {
        guard self.isFirstStep() else {
            return
        }
        
        self.step -= 1
        _ = self.history.popLast()
        
        self.sortedList = history.last ?? list
        
        print(self.sortedList)
    }
    
    private func isFirstStep() -> Bool {
        return self.step > 0
    }
    
    private func isLastStep() -> Bool {
        return self.step < self.list.count - 1
    }
    
    func generateViewModel() -> SortingViewModel {
        return SortingViewModel(isPreviousActive: self.isFirstStep(),
                                isNextActive: self.isLastStep(),
                                sortItems: self.sortedList)
    }
    
    
}

