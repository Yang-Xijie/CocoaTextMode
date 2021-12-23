// PixleConfig.swift

import Cocoa

struct DisplayConfig {
    // MARK: pixel

    let pixel_width: Double = 2
    let pixel_height: Double = 2

    // MARK: character

    let pixel_count_horizontal: Int = 8
    let pixel_count_vertical: Int = 12

    var character_width: Double {
        Double(pixel_count_horizontal) * pixel_width
    }

    var character_height: Double {
        Double(pixel_count_vertical) * pixel_height
    }

    // MARK: display

    let character_count_horizontal: Int = 80
    let character_count_vertical: Int = 25

    var display_width: Double {
        Double(character_count_horizontal) * character_width
    }

    var display_height: Double {
        Double(character_count_vertical) * character_height
    }

    // MARK: color

    let backgroundColor = NSColor.black
    let foregroundColor = NSColor.white
}

let DISPLAY = DisplayConfig()
