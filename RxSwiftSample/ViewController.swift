//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by 千葉 建人 on 2017/03/29.
//  Copyright © 2017年 TaketoCHIBA. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

let disposeBag = DisposeBag()

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.rx.text.orEmpty
            .subscribe(onNext: { [weak self] text in
                guard let weakSelf = self else { return }
                weakSelf.label.text = text
            })
            .disposed(by: disposeBag)
        
        button.rx.tap
            .subscribe(onNext: { [weak self] x in
            print("button Tapped!")
        })
            .disposed(by: disposeBag)        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
