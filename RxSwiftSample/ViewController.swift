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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

