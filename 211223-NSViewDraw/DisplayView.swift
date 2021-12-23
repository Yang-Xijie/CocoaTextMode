// MainView.swift

import Cocoa

class DisplayView: NSView {
    private var stringlines: [String] = []

    convenience init() {
        // MARK: create and configure self

        self.init(frame: .zero)
        self.setFrameSize(.init(width: DISPLAY.display_width, height: DISPLAY.display_height)) // unneccessary for mainView will extend to mainWindow.contentSize
        self.wantsLayer = true
        self.layer?.backgroundColor = DISPLAY.backgroundColor.cgColor

        // MARK: properties

        self.stringlines = ["1 Hello, world!", "2 hahaha"]
    }

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // only draw lines given to achieve better performance
        for row in 0 ..< min(DISPLAY.character_count_vertical, stringlines.count) {
            let characterRowView = CharacterRowView(string: stringlines[row])
            characterRowView.setFrameOrigin(.init(x: 0, y: Double(DISPLAY.character_count_vertical - 1 - row) * DISPLAY.character_height))
            self.addSubview(characterRowView)
        }
    }
}
