import Cocoa

class CharacterView: NSView {
    private var character: Character?

    convenience init(character: Character) {
        // MARK: create self

        self.init(frame: .zero)
        self.setFrameSize(NSSize(width: DISPLAY.character_width, height: DISPLAY.character_height))

        // MARK: properties

        self.character = character
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // draw 8*12 pixels
        if let bytes = character?.bytes {
            for row in 0 ..< DISPLAY.pixel_count_vertical {
                for column in 0 ..< DISPLAY.pixel_count_horizontal {
                    if bytes[DISPLAY.pixel_count_vertical - 1 - row][DISPLAY.pixel_count_horizontal - 1 - column] == true {
                        // one pixel, only draws character itself
                        let x = Double(column) * DISPLAY.pixel_width
                        let y = Double(row) * DISPLAY.pixel_height
                        DISPLAY.foregroundColor.setFill()
                        NSRect(x: x, y: y, width: DISPLAY.pixel_width, height: DISPLAY.pixel_height).fill()
                    }
                }
            }
        }
    }
}
