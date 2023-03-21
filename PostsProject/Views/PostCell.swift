//
//  PostCell.swift
//  PostsProject
//
//  Created by Nick Rodriguez on 21/03/2023.
//

import UIKit

class PostCell: UITableViewCell{
    var id: Int!
//    var image: UIImage?
    @IBOutlet var lblTitle: UILabel!
    
    @IBOutlet var lblDate: UILabel!
    // set this lbl in titleDateStack to horizontal content hugging priority higher than lblTitle because this one should not stretch
    
    @IBOutlet var lblImageName: UILabel!
    
    @IBOutlet var imgImageName: UIImageView!
    
    
    
}
