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
        
        number = Int.random(in: 0...10)
        
        if number == 9 {
            characterImageView.image = UIImage(named:"IoTMesh")
            backgroundImageView.image = UIImage(named:"bgBlue")
            label.text = "こんにちは"
            rarelabel.text = "1"
        }else if number == 10{
            characterImageView.image = UIImage(named:"ぱっく君")
            backgroundImageView.image = UIImage(named:"bgGreen")
            label.text = "ぱっく君"
            rarelabel.text = "219"
        }else if number == 8{
            
            characterImageView.image = UIImage(named:"Image")
            backgroundImageView.image = UIImage(named:"bgRed")
            label.text = "milk"
            rarelabel.text = "10000"
        }else if number == 7 {
            
            characterImageView.image = UIImage(named:"camera")
            backgroundImageView.image = UIImage(named: "bgGreen")
            label.text = "camera"
            rarelabel.text = "10"
        }else if number == 6 {
            characterImageView.image = UIImage(named:"designer")
            backgroundImageView.image = UIImage(named:"bgRed")
            label.text = "designer"
            rarelabel.text = "2"
        }else if number == 5 {
            characterImageView.image = UIImage(named:"line")
            backgroundImageView.image = UIImage(named:"bgRed")
            label.text = "line"
            rarelabel.text = "3"
        }else if number == 4 {
            characterImageView.image = UIImage(named:"movie")
            backgroundImageView.image = UIImage(named:"bgGreen")
            label.text = "movie"
            rarelabel.text = "4"
        }else if number == 3 {
            characterImageView.image = UIImage(named:"unity")
            backgroundImageView.image = UIImage(named:"bgBlue")
            label.text = "unity"
            rarelabel.text = "5"
        }else if number == 2 {
            characterImageView.image = UIImage(named:"maya")
            backgroundImageView.image = UIImage(named:"bgBlue")
            label.text = "maya"
            rarelabel.text = "6"
        }else {
            characterImageView.image = UIImage(named:"iphone")
            backgroundImageView.image = UIImage(named: "bgRed")
            label.text = "iphone"
            rarelabel.text = "7"
       
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


