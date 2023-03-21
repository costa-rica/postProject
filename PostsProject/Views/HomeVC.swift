//
//  ViewController.swift
//  PostsProject
//
//  Created by Nick Rodriguez on 21/03/2023.
//

import UIKit

class HomeVC: UIViewController {
    var username: String?
    var postModel: PostModel!
    
    @IBOutlet var btnLogin: UIButton!
    @IBOutlet var textFieldUsername: UITextField!
    
    @IBOutlet var titleImage: UIImageView!
    
    
    @IBAction func actionLogin() {
        
        username = textFieldUsername.text
        print("- user logged in as \(username!) - ")
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("- in prepare for segue -")
        print(segue)
//        print("- segue.destination: \(segue.destination.title!)")
//        print("- segue identifier is \(segue.identifier!)")
        
        let navController = segue.destination as! UINavigationController
        let feedVC = navController.topViewController as! FeedVC
        
        feedVC.postModel = postModel
        
    }
    override func viewWillAppear(_ animated: Bool) {
        titleImage.image = resizeImage(image:UIImage(named: "LootLoggerIcon")!, newWidth: 200)

    }
    
//    func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
//
//       let scale = newWidth / image.size.width
//       let newHeight = image.size.height * scale
//       UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight))
////       image.drawInRect(CGRectMake(0, 0, newWidth, newHeight))
//        image.draw(in: CGRectMake(0, 0, newWidth, newHeight))
//       let newImage = UIGraphicsGetImageFromCurrentImageContext()
//       UIGraphicsEndImageContext()
//
//       return newImage!
//   }
//    override func viewDidLoad() {
//        super.viewDidLoad()

//    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//
//    }

}

