//
//  ImageCacheManager.swift
//  ASHImageLoader
//
//  Created by Amais Sheikh on 17/04/2022.
//

import UIKit

class ImageCacheManager
{
    //MARK:- Init
    private init() {}
    
    //MARK:- Data Members
    static let shared = ImageCacheManager()
    let cache = NSCache<NSString, UIImage>()
    
    //MARK:- Public Methods
    func getImage(fromUrl: String, completion: @escaping (UIImage?) -> Void)
    {
//        if let values = cache.value(forKey: "allObjects") as? NSArray
//        {
//            for key in values
//            {
//                print(key)
//            }
//        }
        
        let nsUrl = NSString(string: fromUrl)
        if let image = cachedImage(forUrl: nsUrl)
        {
            completion(image)
            print("From function: \(#function) => got image from cache")
        }
        else
        {
            guard let url = URL(string: fromUrl)
            else
            {
                completion(nil)
                return
            }
            
            guard let imageData = try? Data(contentsOf: url)
            else
            {
                completion(nil)
                return
            }
            
            guard let image = UIImage(data: imageData)
            else
            {
                completion(nil)
                return
            }
            
            print("From function: \(#function) => got image from url and setting in cache")
            cache.setObject(image, forKey: nsUrl)
            completion(image)
        }
    }
    
    //MARK:- Class Internal Functionality
    private func cachedImage(forUrl: NSString) -> UIImage?
    {
        let image = cache.object(forKey: forUrl)
        return image
    }
}
