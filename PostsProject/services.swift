//
//  services.swift
//  PostsProject
//
//  Created by Nick Rodriguez on 21/03/2023.
//

import UIKit


let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .none
    return formatter
}()

func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {

   let scale = newWidth / image.size.width
   let newHeight = image.size.height * scale
   UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight))
//       image.drawInRect(CGRectMake(0, 0, newWidth, newHeight))
    image.draw(in: CGRectMake(0, 0, newWidth, newHeight))
   let newImage = UIGraphicsGetImageFromCurrentImageContext()
   UIGraphicsEndImageContext()

   return newImage!
}
