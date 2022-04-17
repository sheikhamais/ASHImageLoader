//
//  ExtensionUIImageView.swift
//  ASHImageLoader
//
//  Created by Amais Sheikh on 17/04/2022.
//

import UIKit

extension UIImageView
{
    //MARK:- Data Members
    private var genericPlaceholderImage: UIImage?
    {
        get
        {
            return ASHImageAssetsManager.genericPlaceholderImage
        }
    }
    
    //MARK:- Init
    public convenience init(url: String)
    {
        self.init()
        setImageFromUrl(fromUrl: url, placeholderImage: genericPlaceholderImage)
    }
    
    public convenience init(url: String, placeholderImage: UIImage?)
    {
        self.init()
        setImageFromUrl(fromUrl: url, placeholderImage: placeholderImage)
    }
    
    //MARK:- Public Methods
    public func loadImage(fromUrl url: String, placeholderImage: UIImage?)
    {
        setImageFromUrl(fromUrl: url, placeholderImage: placeholderImage)
    }
    
    public func loadImage(fromUrl url: String)
    {
        setImageFromUrl(fromUrl: url, placeholderImage: genericPlaceholderImage)
    }
    
    //MARK:- Internal functionality
    private func setImageFromUrl(fromUrl url: String, placeholderImage: UIImage?)
    {
        self.setImage(image: placeholderImage)
        ImageCacheManager.shared.getImage(fromUrl: url)
        { image in
            if let image = image
            {
                self.setImage(image: image)
            }
        }
    }
    
    private func setImage(image: UIImage?)
    {
        DispatchQueue.main.async {
            self.image = image
        }
    }
}
