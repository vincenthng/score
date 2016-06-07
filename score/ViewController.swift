//
//  ViewController.swift
//  score
//
//  Created by Vincenthng on 16/6/6.
//  Copyright © 2016年 Vincenthng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url:NSURL=NSURL(string:"http://score.ynzs.cn/gktk20163/checkimage.php")!
        let data:NSData=NSData(contentsOfURL: url)!
        let image=UIImage(data:data,scale:1.0)
        let imageview:UIImageView=UIImageView(image:image)
        let frame=CGRectMake(100, 320, 60, 20)
        imageview.frame=frame
        self.view.addSubview(imageview)
        print(data)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var Reset: UIButton!

    @IBAction func ReSet(sender: UIButton) {
        self.viewDidLoad()
    }
}

