//
//  FeedVC.swift
//  PostsProject
//
//  Created by Nick Rodriguez on 21/03/2023.
//

import UIKit

class FeedVC: UITableViewController{
    var postModel: PostModel!
//    var post1 = Post(title:"post1")
//    var postArray = [
//    let dateFormatter: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateStyle = .medium
//        formatter.timeStyle = .none
//        return formatter
//    }()
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postModel.allPosts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        
        let post = postModel.allPosts[indexPath.row]
        cell.id = post.id
        cell.lblTitle.text = post.title
        cell.lblDate.text = dateFormatter.string(from:post.dateCreated)
        
        if let unwrapped = post.imageName {
            cell.lblImageName.text = unwrapped
            if UIImage(systemName: unwrapped) != nil{
                cell.imgImageName.image = UIImage(systemName: unwrapped)
            } else {
                print("* found new image name *")
                cell.imgImageName.image = resizeImage(image:UIImage(named: unwrapped)!, newWidth: 200)
            }

            
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 76
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("- segue.sender: \(segue.source) -")
        switch segue.identifier{
        case "goToDetailVC":
            if let row = tableView.indexPathForSelectedRow?.row {
                let post = postModel.allPosts[row]
                
                let detailVC = segue.destination as! DetailVC
                detailVC.post = post
            }
        default:
            preconditionFailure("Unexpected segue identifier")
        }

        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()

    }
    
    
}
