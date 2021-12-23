// MainView.swift

import Cocoa

class CharacterRowView: NSView {
    private var string: String?

    convenience init(string: String) {
        // MARK: create and configure self

        self.init(frame: .zero)
        self.setFrameSize(.init(width: Double(DISPLAY.character_count_horizontal) * DISPLAY.character_width, height: DISPLAY.character_height))

        // MARK: properties

        self.string = string
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        if let string = string {
            // only draw character that on the display
            for column in 0 ..< min(DISPLAY.character_count_horizontal, string.count) {
                let characterView = CharacterView(
                    character: string[string.index(string.startIndex, offsetBy: column)])
                characterView.setFrameOrigin(.init(x: Double(column) * DISPLAY.character_width, y: 0))
                self.addSubview(characterView)
            }
        }
    }
}
