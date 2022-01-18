//
//  Bundle+testPodFramework.swift
//  TestPodFramework
//
//  Created by cm0630 on 2022/1/17.
//

import Foundation

extension Bundle{
    
    /// TestPodFramework 的 Bundle 資源
    public static var testPodFramework: Bundle?{
        let kBundle = "bundle"
        let kFramework = "TestPodFramework"
        let bundleURL = Bundle.main.url(forResource: kFramework, withExtension: kBundle)
        guard let bundleURL = bundleURL else { return nil }
        return Bundle(url: bundleURL)
    }
}
