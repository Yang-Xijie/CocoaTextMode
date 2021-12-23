// MainView.swift

import Cocoa

class MainView: NSView {
    private var characterView: CharacterView?

    convenience init() {
        // mainView will extent to mainWindow.frame
        self.init(frame: .zero)

        // configure mainView
        self.wantsLayer = true
        self.layer?.backgroundColor = CGColor.black

        self.characterView = CharacterView(character: "A")
        self.addSubview(characterView!)
    }
    
}
