//
//  StoryboardInstantiable.swift
//  TestPodFramework
//
//  Created by cm0630 on 2022/1/18.
//

import UIKit

/// 紀錄Storyboard的資訊
public protocol StoryboardInstantiable {
    
    /// Storyboard的名稱
    static var storyboardName: String { get }
    
    /// Storyboard的Bundle
    static var storyboardBundle: Bundle? { get }
    
    /// Storyboard的Identifier(唯一辨識名稱)
    static var storyboardIdentifier: String? { get }
}

/// 可直接產生Storyboard bind Class之後的結果
public extension StoryboardInstantiable {
    
    /// Storyboard的名稱
    static var storyboardName: String { return String(describing: self) }
    
    /// Storyboard的Bundle
    static var storyboardBundle: Bundle? {
        if let selfClass = self as? AnyClass{
            let bundle = Bundle(for: selfClass)
            return bundle
        }else{
            return nil
        }
    }
    
     /// Storyboard的Identifier(唯一辨識名稱)
    static var storyboardIdentifier: String? { return String(describing: self) }
    
    /// 實體化(將ViewController和Storyboard綁在一起)
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        
        if let storyboardIdentifier = storyboardIdentifier {
            return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
        }
        else {
            return storyboard.instantiateInitialViewController() as! Self
        }
    }
}

