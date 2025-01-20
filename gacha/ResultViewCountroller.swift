//
//  ResultViewCountroller.swift
//  gacha
//
//  Created by 鈴木廉太郎 on 2024/10/27.
//

import UIKit

class ResultViewCountroller: UIViewController {
    
    
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!
    
    @IBOutlet var label:UILabel!
    @IBOutlet var rarelabel:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        let gachaData: [Int: (imageName:String,bgImageName:String,labelText:String,rareValue: String)] = [
            9: ("IoTMesh", "bgBlue", "こんにちは", "1"),
            10: ("ぱっく君", "bgGreen", "ぱっく君", "2190"),
            8: ("Image", "bgRed", "みるく", "10000"),
            7: ("camera", "bgGreen", "camera", "10"),
            6: ("designer", "bgRed", "designer", "2"),
            5: ("line", "bgRed", "line", "3"),
            4: ("movie", "bgGreen", "movie", "4"),
            3: ("unity", "bgBlue", "unity", "5"),
            2: ("maya", "bgBlue", "maya", "6"),
            1: ("iphone", "bgRed", "iphone", "7")
        ]
        number = Int.random(in: 0...10)
        
        if let selected = gachaData[number] {
            characterImageView.image = UIImage(named: selected.imageName)
            backgroundImageView.image = UIImage(named:selected.bgImageName)
            label.text = selected.labelText
            rarelabel.text = selected.rareValue
        }else {
            characterImageView.image = UIImage(named:"defaultImage")
            backgroundImageView.image = UIImage(named:"defaultBG")
            label.text = "デフォルト"
            rarelabel.text = "0"
            
        }
       
        
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.characterImageView.center = self.view.center
        UIView.animate(withDuration:1.0, delay: 0, options:[.curveEaseIn, .autoreverse, .repeat], animations: {
            self .characterImageView.center.y += 10.0
            
            } ) { _ in
                self .characterImageView.center.y -= 10.0
            
        }
        
        
    }
    
    
    @IBAction func back() {
        self.dismiss(animated: true , completion: nil)
    }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


