//
//  ViewController.swift
//  ask and answer
//
//  Created by s20181102931 on 2019/11/27.
//  Copyright © 2019 s20181102931. All rights reserved.
//

import UIKit
   class ViewController: UIViewController {
   var question = ["北京是中国的首都吗？","马云是中国的首富吗？","你喜欢吃北京烤鸭吗？","你热爱学习吗？","你是傻瓜吗","今天好好学习了没呢？","去吃好吃的吗？","今天你吃饭了吗？","今天你熬夜了吗？","今天你开心吗？"]
    var question_answer = [true,false,false,true,true,false,true,true,true,true]
    var number = 0
    var score = 0
    @IBOutlet weak var answer: UILabel!
   // answer.text = question[0]
    @IBOutlet weak var progressBar: UIView!
    @IBAction func yes(_ sender: UIButton) {
        next();
        charge(users:true)
        //progress1()
    }
    @IBAction func no(_ sender: UIButton) {
         next();
         charge(users:false)
        
         //progress1()
    }
    func next()
    {
         number = number + 1
        
        if(number == 10)
        {
            //Countlabel.text = "\(number)/10"
            number = 0
            score = 0
            scorelabel.text = "\(score)"
        }
        Countlabel.text = "\(number+1)/10"
        answer.text = question[number]
       
        
    }
    var count = 0
    func actionOK(ac:UIAlertAction)
    {
        progressBar.frame.size.width=progressBar.frame.size.width + view.frame.width/10
        count = count + 1
        if(count==10)
        {
            progressBar.frame.size.width = view.frame.width/10
        }
    }
    func charge(users:Bool)
    {
        if(question_answer[number] == users )
        {
            print("回答正确")
            score = score + 5
            scorelabel.text = "\(score)"
        }
        else
        {
            print("回答错误")
        }
            let alert = UIAlertController(title: "提示", message: "您的当前分数为:\(score)", preferredStyle:.alert)//从中间弹出来
            alert.addAction(UIAlertAction(title:"确定", style:UIAlertAction.Style.default, handler:actionOK))
            alert.addAction(UIAlertAction(title:"取消", style:UIAlertAction.Style.default, handler:actionOK))
            present(alert,animated: true,completion: nil)//弹框
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        answer.text = question[number]
        scorelabel.text = "\(0)"
        Countlabel.text = "\(number+1)/10"
        //progress1()
    }
    @IBOutlet weak var Countlabel: UILabel!
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var www: UIProgressView!
//    func progress1()//用进度条做的方法
//    {
//        if(www.progress==1)
//        {
//            www.progress = 0
//        }
//        www.progress = www.progress + 0.1
//    }
//
}

