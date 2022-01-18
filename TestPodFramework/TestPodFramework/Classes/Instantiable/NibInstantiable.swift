//
//  NibInstantiable.swift
//  TestPodFramework
//
//  Created by cm0630 on 2022/1/18.
//

import UIKit

/// 紀錄Nib的資訊
public protocol NibInstantiable {
    
    /// nib的名稱
    static var nibName: String { get }
    
    /// nib的Bundle
    static var nibBundle: Bundle? { get }
}

/// 可直接產生Nib bind Class之後的結果
public extension NibInstantiable {
    
    /// nib的名稱
    static var nibName: String { return String(describing: self) }
    
    /// nib的Bundle
    static var nibBundle: Bundle? {
        if let selfClass = self as? AnyClass{
            let bundle = Bundle(for: selfClass)
            return bundle
        }else{
            return nil
        }
    }
    
    /// 實體化(將View和Nib綁在一起)
    static func instantiateFirstView(owner: Any? = nil) -> Self {
        let nib = UINib(nibName: nibName, bundle: nibBundle)
        return nib.instantiate(withOwner: owner).first as! Self
    }
}
