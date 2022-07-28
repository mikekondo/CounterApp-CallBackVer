//
//  CountViewModel.swift
//  CounterApp-CallBackVer
//
//  Created by 近藤米功 on 2022/07/28.
//

import UIKit

class CountViewModel {
    private(set) var count = 0

    func incrementCount(completion: (Int) -> Void){
        count += 1
        completion(count)
    }

    func decrementCount(completion: (Int) -> Void){
        count -= 1
        completion(count)
    }

    func resetCount(completion: (Int) -> Void){
        count = 0
        completion(count)
    }
}
