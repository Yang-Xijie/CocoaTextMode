// MainView.swift

import Cocoa

class CharacterRowView: NSView {
    private var string: String?

    convenience init(string: String) {
        self.init(frame: .zero)
        self.setFrameSize(.init(width: Double(DISPLAY.character_count_horizontal) * DISPLAY.character_width, height: DISPLAY.character_height))

        self.string = string

        self.wantsLayer = true
        self.layer?.backgroundColor = CGColor.black
    }

    private var characterViews = [CharacterView?](repeating: nil, count: DISPLAY.character_count_horizontal)

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        if let string = string {
            print("start")
            for column in 0 ... DISPLAY.character_count_horizontal - 1 {
                if column < string.count {
                    characterViews[column] = CharacterView(character: string[string.index(string.startIndex, offsetBy: column)])
                } else {
                    characterViews[column] = CharacterView(character: " ")
                }
                characterViews[column]?.setFrameOrigin(.init(x: Double(column) * DISPLAY.character_width, y: 0))
            }
            _ = characterViews.map {
                self.addSubview($0!)
            }
        }
    }
}
