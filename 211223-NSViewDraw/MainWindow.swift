// MainWindow.swift

import Cocoa

class MainWindow: NSWindow {
    private var mainView: MainView = MainView()

    convenience init() {
        // create window
        self.init(contentRect: .zero,
                  styleMask: [.titled, .closable, .miniaturizable],
                  backing: .buffered,
                  defer: true)

        // configure window
        self.title = "myDisplay211223"
        self.setContentSize(.init(width: 800, height: 400))
        self.setFrameOrigin(.zero) // screen (0,0)

        // add mainView
        self.contentView = mainView
    }
}
