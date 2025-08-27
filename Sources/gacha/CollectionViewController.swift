//
//  collectionViewController.swift
//  gacha
//
//  
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
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
    
    //collectionViewの作成
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 配列の要素数を入れる
        return gachaImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
                let testCell:UICollectionViewCell =
                    collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell",
                                                       for: indexPath)
                
                //Tag番号を使ってImageViewのインスタンス生成
                let imageView = testCell.contentView.viewWithTag(1) as! UIImageView
                // 画像配列の番号で指定された要素の名前の画像をUIImageとする
                let cellImage = gachaImageArray [indexPath.row]
                // UIImageをUIImageViewのimageとして設定
                imageView.image = cellImage
                
                return testCell
    }
    
    // セルサイズ調整
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
            
        // スペース調整
        let horizontalSpace:CGFloat = 0.05
        let cellSize:CGFloat = self.view.bounds.width/2 - horizontalSpace
        // 正方形で返す
        return CGSize(width: cellSize, height: cellSize)
    }
    
    
}
