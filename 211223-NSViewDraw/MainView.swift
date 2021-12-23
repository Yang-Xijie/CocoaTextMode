// MainView.swift

import Cocoa

class MainView: NSView {
    private var charactersView: CharacterRowView?

    convenience init() {
        // mainView will extent to mainWindow.frame
        self.init(frame: .zero)

        // configure mainView
        self.wantsLayer = true
        self.layer?.backgroundColor = CGColor.black

        self.charactersView = CharacterRowView(string: "hello~!~!")
        self.addSubview(charactersView!)
    }
}
