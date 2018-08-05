//
//  NSAttributedString+extension.swift
//  eoshub
//
//  Created by kein on 2018. 8. 6..
//  Copyright © 2018년 EOS Hub. All rights reserved.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    func addAttributeColor(text: String, color: UIColor) {
        addAttribute(text: text, attr: [NSAttributedStringKey.foregroundColor : color])
    }
    
    func addAttributeURL(text: String, url: URL) {
        addAttribute(text: text, attr: [NSAttributedStringKey.link : url])
    }
    
    private func addAttribute(text: String, attr: [NSAttributedStringKey: Any]) {
        if let range = string.range(of: text) {
            addAttributes(attr, range: range.nsRange)
        }
    }
    
}
