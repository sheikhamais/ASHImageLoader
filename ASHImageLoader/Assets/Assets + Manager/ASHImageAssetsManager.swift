//
//  ASHImageAssetsManager.swift
//  ASHImageLoader
//
//  Created by Amais Sheikh on 17/04/2022.
//

import Foundation

class ASHImageAssetsManager
{
    static var genericPlaceholderImage: UIImage?
    {
        get
        {
            let bundle = Bundle(for: ASHImageLoader.ASHImageAssetsManager.self)
            return UIImage(named: "image-placeholder", in: bundle, compatibleWith: nil)
        }
    }
}
