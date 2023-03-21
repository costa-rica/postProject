//
//  DetailVC.swift
//  PostsProject
//
//  Created by Nick Rodriguez on 21/03/2023.
//

import UIKit

class DetailVC: UIViewController{
    
    @IBOutlet var lbdId: UITextField!
    @IBOutlet var lblTitle: UITextField!
    @IBOutlet var lblDate: UITextField!
    @IBOutlet var lblImageName: UITextField!
    
    @IBAction func updateNewData(_ sender:UIButton){
        print("- sending button -")
        
        print("New title: \(lblTitle.text!)")
        post.title = lblTitle.text!
        post.imageName = lblImageName.text!
        if lblImageName.text != nil {
            print("- there is an image name -")
            
        }
    }
    
    var post: Post!
//    let dateFormatter: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateStyle = .medium
//        formatter.timeStyle = .none
//        return formatter
//    }()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lblTitle.text = post.title
        lblDate.text! = dateFormatter.string(from:post.dateCreated)
        lbdId.text! = String(post.id)
        lblImageName.text = post.imageName
    }
    
    
}
