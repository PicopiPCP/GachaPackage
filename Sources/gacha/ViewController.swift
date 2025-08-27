//
//  ViewController.swift
//  gacha
//
// 
//

import UIKit
import SwiftGifOrigin //gifを使用するためのライブラリ


class ViewController: UIViewController{
    
    
    //引いた回数を数えるカウンター
    var counter : Int = 0
    //タイマー（アニメーション用）
    var timer = Timer()
    
    let closedCapcel: UIImage = UIImage(named: "capcel")!
    
    //画像格納用の配列 64個
    let gachaImageArray: [UIImage] = [
        UIImage(named: "isyoku")!,
        UIImage(named: "chunigirl")!,
        UIImage(named: "otaku")!,
        UIImage(named: "unicorn")!,
        UIImage(named: "vrgame")!,
        UIImage(named: "vrhiji")!,
        UIImage(named: "jirai")!,
        UIImage(named: "yokokarashitsurei")!,
        UIImage(named: "ai")!,
        UIImage(named: "airgun")!,
        UIImage(named: "bangya")!,
        UIImage(named: "canbadge")!,
        UIImage(named: "chunigirl")!,
        UIImage(named: "chuniboy")!,
        UIImage(named: "darkOrganization")!,
        UIImage(named: "ishikitakai")!,
        UIImage(named: "kawaiiOtaku")!,
        UIImage(named: "mayo")!,
        UIImage(named: "mitsugu")!,
        UIImage(named: "mitsuryo")!,
        UIImage(named: "oilKing")!,
        UIImage(named: "parnto")!,
        UIImage(named: "pien")!,
        UIImage(named: "seijinshiki")!,
        UIImage(named: "sercnum")!,
        UIImage(named: "ahiruguchi")!,
        UIImage(named: "dotan")!,
        UIImage(named: "animalDance")!,
        UIImage(named: "furyo")!,
        UIImage(named: "futonsumaho")!,
        UIImage(named: "gosic")!,
        UIImage(named: "isyoku")!,
        UIImage(named: "tsundere")!,
        UIImage(named: "muscle")!,
        UIImage(named: "walksumoho")!,
        UIImage(named: "oko")!,
        UIImage(named: "koraeru")!,
        UIImage(named: "uchiwa")!,
        UIImage(named: "sumahochudoku")!,
        UIImage(named: "fukakimonodono")!,
        UIImage(named: "accident")!,
        UIImage(named: "caste")!,
        UIImage(named: "gobaku")!,
        UIImage(named: "h2o")!,
        UIImage(named: "gyangBaby")!,
        UIImage(named: "hacker")!,
        UIImage(named: "hokkaido")!,
        UIImage(named: "hugu")!,
        UIImage(named: "icing")!,
        UIImage(named: "imageCertification")!,
        UIImage(named: "kabedon")!,
        UIImage(named: "kabedon2")!,
        UIImage(named: "kanicrane")!,
        UIImage(named: "kawauso")!,
        UIImage(named: "korokoro")!,
        UIImage(named: "nomadoWorker")!,
        UIImage(named: "otagei")!,
        UIImage(named: "peterpan")!,
        UIImage(named: "poolWater")!,
        UIImage(named: "reiwaOjisan")!,
        UIImage(named: "runbaCat")!,
        UIImage(named: "sabori")!,
        UIImage(named: "satsutaba")!,
        UIImage(named: "twitter")!,
        UIImage(named: "vrPockey")!,
        UIImage(named: "zombi")!,
    ]
    
    //UI部品の接続
    @IBOutlet weak var gachaImageView: UIImageView!
    @IBOutlet weak var capcelImageView: UIImageView!
    @IBOutlet weak var gachaStartImageView: UIImageView!
    @IBOutlet weak var lottery1Button: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //ガチャを回した時用のアニメーションを隠しておく
        self.capcelImageView.isHidden = true
        self.gachaImageView.isHidden = true
        
        //ガチャボタンのデザイン
        lottery1Button.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        lottery1Button.center = self.view.center
        lottery1Button.backgroundColor = .yellow
        lottery1Button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        lottery1Button.layer.cornerRadius = 15
        lottery1Button.layer.shadowOffset = CGSize(width: 3, height: 3 )
        lottery1Button.layer.shadowOpacity = 0.5
        lottery1Button.layer.shadowRadius = 10
        lottery1Button.layer.shadowColor = UIColor.gray.cgColor
        
    }
    
    //ガチャボタン(array)
    @IBAction func lottery1Button(_ sender: Any) {
            
            //初期化
            lottery1Button.isHidden = true
            gachaImageView.isHidden = true
            capcelImageView.isHidden = true
            gachaStartImageView.isHidden = true
            
            //ガチャ機能
            gachaAnimation()
            gachaResult()
        
            //Timeline(dispatch que)
            //after 0 second : gacha drop(capcelgif animation) animationtime is 3.75
            //after 3.75 seconds :gacha open(capcelgif2 animarion) animationtime is 2.0
            //after 5.25 seconds : gacha open animation is hidden
            //after 5.25 seconds : result display
        
            //引いた回数をプラス１する
            counter += counter
 
        
    }
    
    //ガチャの結果を表示する機能
    func gachaResult(){
        
        //結果の表示
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.25) {
            
            //配列からランダムに画像を取り出し、取り出した画像をUIImageViewにセット
            self.gachaImageView.image = self.gachaImageArray.randomElement()
            
            //結果を表示　カプセルのアニメーションを非表示
            self.gachaImageView.isHidden = false
            self.capcelImageView.isHidden = true
            
            //ボタンを再度表示させる。
            self.lottery1Button.isHidden = false
            
            //2回目以降はボタンの文字を変える
            self.lottery1Button.setTitle("もう一度引く", for: .normal)
        }
        
        //引いた回数カウンターをプラス１
        counter = counter + 1
    }
    
    //ガチャカプセルのアニメーション機能
    func gachaAnimation (){
        //loadGifメソッドを追記し、引数としてGIFファイル名を与える
        self.capcelImageView.isHidden = false
        capcelImageView.loadGif(name: "capcelgif")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.75) {
            self.capcelImageView.loadGif(name: "capcelgif2")
        }
        
        //DispatchQueue.main.asyncAfter(deadline: .now() + 3.75){
            //self.fadeout(self.capcel)
        //}
        
    }
    
    //フェードアウトアニメーション機能
    func fadeout(_ viewAnimate: UIView){
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn) {
                    viewAnimate.alpha = 0
                } completion: { (_) in
                    UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseIn) {
                        viewAnimate.alpha = 1
                    }
                }
    }
    
    
    
    //シェア機能
    @IBAction func shareButton(_ sender: Any) {
        let text = "#いらすとやガチャ"
        let sampleUrl = NSURL(string: "https://www.irasutoya.com")!
        let image = gachaImageView
            
        let items = [text, sampleUrl, image as Any] as [Any]
            
            // UIActivityViewControllerをインスタンス化
            let activityVc = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
            // UIAcitivityViewControllerを表示
        self.present(activityVc, animated: true, completion: nil)
    }
    
}

