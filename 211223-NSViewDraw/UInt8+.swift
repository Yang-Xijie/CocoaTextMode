// UInt8+.swift

import Foundation

extension UInt8 {
    subscript(i: Int) -> Bool {
        get {
            return ((self >> i & 0x01) == 1)
        }
        set(newValue) {
            // Perform a suitable setting action here.
        }
    }
}
