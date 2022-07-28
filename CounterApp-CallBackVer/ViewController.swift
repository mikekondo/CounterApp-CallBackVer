//
//  ViewController.swift
//  CounterApp-CallBackVer
//
//  Created by 近藤米功 on 2022/07/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var countLabel: UILabel!

    let countViewModel = CountViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapCountUpButton(_ sender: Any) {
        countViewModel.incrementCount { count in
            updateCountLabel(count: count)
        }
    }

    @IBAction func didTapCountDownButton(_ sender: Any) {
        countViewModel.decrementCount { count in
            updateCountLabel(count: count)
        }
    }

    @IBAction func didTapCountResetButton(_ sender: Any) {
        countViewModel.resetCount { count in
            updateCountLabel(count: count)
        }
    }

    private func updateCountLabel(count: Int){
        countLabel.text = String(count)
    }



}

