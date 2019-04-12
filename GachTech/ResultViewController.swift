//
//  ResultViewController.swift
//  GachTech
//
//  Created by Ryuma Harada on 2019/04/12.
//  Copyright © 2019 Ryuma Harada. All rights reserved.
//

import UIKit

class ResultViewController: UITableViewController {
//    一番後ろの背景画
    @IBOutlet var haikeiImageView: UIImageView!
    
//    モンスターを表示する画像
    @IBOutlet var monsterImageView: UIImageView!
    
//    モンスター画像を保存しておく配列
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //０〜９の間でランダムに数字を表示させる
        let number = Int.random (in: 0..<10)
        
//        モンスターの画像を１０枚発生させる
        monsterArray = [UIImage (named: "monster001.png")!,
        monsterArray = [UIImage (named: "monster002.png")!,
        monsterArray = [UIImage (named: "monster003.png")!,
        monsterArray = [UIImage (named: "monster004.png")!,
        monsterArray = [UIImage (named: "monster005.png")!,
        monsterArray = [UIImage (named: "monster006.png")!,
        monsterArray = [UIImage (named: "monster007.png")!,
        monsterArray = [UIImage (named: "monster008.png")!,
        monsterArray = [UIImage (named: "monster009.png")!,
        monsterArray = [UIImage (named: "monster010.png")!,
        ]
        
//        ランダムに選んだモンスターを表示させる
        monsterImageView.image = monsterArray[number]
        
            if number == 9 {
            haikeiImageView.image = UIImage (named: "bg_gold.png")
            } else if number > 6 {
            haikeiImageVoew.image = UIImage (named: "bg_red.png")
            } else {
            haikeiImageView.image = UIImage (named: "bg_blues.png")
        }
            
        }
    
//    このResultViewControllerが表示される度に呼び出されるメソッド
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear (true)
        
//        アニメーションの中でもtransform（変形）させるキーパスを設定
        let animation = CABasicAnimation (keyPath: "transform")
        
//        アニメーション開始時の数値
        animation.fromValue = NSNumber (value: 0)
        
//        アニメーション終了時の数値（M_PIとは角度の１８０度）
        animation.toValue = NSNumber (value: 2 * Double.pi)
        
//        Z軸を中心としたアニメーションにする
        animation.valueFunction = CAValueFunction (name: CAValueFunctionName.rotateZ)
        
//        アニメーションの速さを指定する
        animation.duration = 5
        
//        アニメーションを何回繰り返すか決める（今回の場合は無限に繰り返す）
        animation.repeatCount = Float.infinity
        
//        どのレイヤーをアニメーションさせるか指定する
        haikeiImageView.layer.add(animation, forKey: nil)
        
    }
    
    @IBAction func modoru () {
        self.dismiss (animation: true, completion: nil)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }



    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
