// MainView.swift

import Cocoa

class MainView: NSView {
    // FIXME: what will OS give to the display? 25 lines of strings (less than 80 characters)?

    convenience init() {
        self.init(frame: .zero)
        self.setFrameSize(.init(width: DISPLAY.display_width, height: DISPLAY.display_height)) // unneccessary for mainView will extend to mainWindow.contentSize
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        for row in 0 ... DISPLAY.character_count_vertical - 1 {
            let string = "\(row) hello"
            let characterRowView = CharacterRowView(string: string)
            characterRowView.setFrameOrigin(.init(x: 0, y: Double(DISPLAY.character_count_vertical - 1 - row) * DISPLAY.character_height))
            self.addSubview(characterRowView)
        }
    }
}
