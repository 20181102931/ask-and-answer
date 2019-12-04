//
//  ViewController.swift
//  ask and answer
//
//  Created by s20181102931 on 2019/11/27.
//  Copyright © 2019 s20181102931. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
   var question = ["北京是中国的首都吗？","马云是中国的首富吗？","你喜欢吃北京烤鸭吗？","你热爱学习吗？","你是傻瓜吗","今天好好学习了没呢？","去吃好吃的吗？"]
   var question_answer = [true,false,false,true,true,false,true]
    var number = 0
    var score = 0
    @IBOutlet weak var answer: UILabel!
   // answer.text = question[0]
   
    @IBAction func yes(_ sender: UIButton) {
        next();
        charge(users:true)
        progress1()
    }
    @IBAction func no(_ sender: UIButton) {
         next();
         charge(users:false)
         progress1()
    }
    func next()
    {
        number = number + 1
        if(number == 7)
        {
            print(score)
            number = 0;
        }
        answer.text = question[number]
    }
    func charge(users:Bool)
    {
        if(question_answer[number] == users )
        {
            print("回答正确")
            score = score + 5;
        }
        else
        {
            print("回答错误")
            score =  score - 5 ;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
   
    
    @IBOutlet weak var www: UIProgressView!
    var i = 0;
    func progress1()
    {
        www.progress = www.progress + 0.1
        if(www.progress==1)
        {
            www.progress = 0
        }
    }
}

