//
//  SecondViewController.swift
//  TodoList
//
//  Created by Thomas Liu on 2017/1/17.
//  Copyright © 2017年 ThomasLiu. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var button: UIButton!
    @IBAction func MENG(_ sender: UIButton) {
        let device:AVCaptureDevice=AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
        do{
            try device.lockForConfiguration()
            switch device.torchMode {
                case AVCaptureTorchMode.on:
                    //AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)//震动
                    button.setTitle("开手电", for: .normal)
                    device.torchMode=AVCaptureTorchMode.off
                case AVCaptureTorchMode.off:
                    button.setTitle("关手电", for: .normal)
                    device.torchMode=AVCaptureTorchMode.on
                default:
                    break
            }
            device.unlockForConfiguration()}
        catch{
            button.setTitle("爆炸!", for: .normal)
        }
    }

}
