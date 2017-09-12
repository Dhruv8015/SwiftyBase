//
//  CharacterExtension.swift
//  Pods
//
//  Created by MacMini-2 on 11/09/17.
//
//

import Foundation

// MARK: - Character Extension -

public extension Character {
    /// Return true if character is emoji.
    public var isEmoji: Bool {
        // http://stackoverflow.com/questions/30757193/find-out-if-character-in-string-is-emoji
        guard let scalarValue = String(self).unicodeScalars.first?.value else {
            return false
        }
        switch scalarValue {
        case 0x3030, 0x00AE, 0x00A9,// Special Characters
        0x1D000...0x1F77F, // Emoticons
        0x2100...0x27BF, // Misc symbols and Dingbats
        0xFE00...0xFE0F, // Variation Selectors
        0x1F900...0x1F9FF: // Supplemental Symbols and Pictographs
            return true
        default:
            return false
        }
    }
    
    /// Return true if character is number.
    public var isNumber: Bool {
        return Int(String(self)) != nil
    }
    
    /// Return integer from character (if applicable).
    public var toInt: Int? {
        return Int(String(self))
    }
    
    /// Return string from character.
    public var toString: String {
        return String(self)
    }
}
