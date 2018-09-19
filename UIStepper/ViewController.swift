//
//  ViewController.swift
//  UIStepper步进控制器
//
//  Created by 李维强 on 2018/9/19.
//  Copyright © 2018 李维强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let stepper = UIStepper(frame: CGRect(x: 100, y: 100, width: 0, height: 0))
        
        self.view.addSubview(stepper)

        //设置最大小值
        stepper.minimumValue = 1
        stepper.maximumValue = 10
        
        //设置一次的步长
        stepper.stepValue = 2
        
        //按住是否持续触发交互方法
        stepper.isContinuous = false
        //监听
        stepper.addTarget(self, action: #selector(step), for: UIControl.Event.valueChanged)
    }

    @objc func step(step:UIStepper) {
        print("步进控制器的值\(step.value)")
    }

}

