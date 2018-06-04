//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by 大林拓実 on 2018/06/03.
//  Copyright © 2018年 TakumiObayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前","一週間前","昨日","今日"]
    let dokoArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let daregaArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let doshitaArray: [String] = ["叫んだ","演説した","怒った","踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokoArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        index += 1
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func reset(){
        itsuLabel.text = "---"
        dokodeLabel.text = "---"
        daregaLabel.text = "---"
        doshitaLabel.text = "---"
        
        index = 0
        print("reset!")
    }
    
    @IBAction func random(){
        let itsuindex = Int(arc4random_uniform(4))
        let dokodeindex = Int(arc4random_uniform(4))
        let daregaindex = Int(arc4random_uniform(4))
        let doshitaindex = Int(arc4random_uniform(4))
        
        print("いつ： \(itsuindex)")
        print("どこで： \(dokodeindex)")
        print("だれが： \(daregaindex)")
        print("どうした： \(doshitaindex)")
        
        itsuLabel.text = itsuArray[itsuindex]
        dokodeLabel.text = dokoArray[dokodeindex]
        daregaLabel.text = daregaArray[daregaindex]
        doshitaLabel.text = doshitaArray[doshitaindex]
    }


}

