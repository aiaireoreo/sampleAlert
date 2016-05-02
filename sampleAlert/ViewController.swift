//
//  ViewController.swift
//  sampleAlert
//
//  Created by AI Matsubara on 2016/04/29.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func tapBtn(sender: UIButton) {
        
        //アラートを作る
        var alertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .Alert)
        //titleやmessageは引数"タイトル""メッセージ"の説明の字

//        
//        //OKボタンを追加する
//        alertController.addAction(UIAlertAction(
//            title: "OK",
//            style: .Default,
//            handler: {action in self.myOK()}))
//        //handlerは押したときのアクション
//        
//        
//        //TODO:キャンセルボタンを追加しよう（押されたらキャンセルとデバックエリアに表示される）
//        alertController.addAction(UIAlertAction(
//            title: "キャンセル",
//            style: .Cancel,
//            handler: {action in self.myCancel()}))
        
        //削除ボタン
        alertController.addAction(UIAlertAction(
            title: "削除",
            style: UIAlertActionStyle.Destructive,
            handler: { action in print("Destructive")}))
        
        
        //アラートを表示する
        presentViewController(alertController, animated: true, completion: nil)
        //presentViewControllerは画面の上に画面をのせるとゆう動き
        //アラートの表示も画面の一枚と認識されているため
        //animated: true はなめらかなアニメーションの動き、falseにするとパキパキした動きになる
        //completion:nilは押したときに何もさせない
    }
    
    //OKが押された時に呼ばれるメソッド
    func myOK(){
        print("OK")
        //このprintはデバックエリアに表示されるもの

    }
    
    //キャンセルが押された時に呼ばれるメソッド
    func myCancel(){
        print("キャンセル")
        //このprintはデバックエリアに表示されるもの
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

