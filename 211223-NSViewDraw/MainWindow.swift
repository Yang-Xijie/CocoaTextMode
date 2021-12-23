// MainWindow.swift

import Cocoa

class MainWindow: NSWindow {
    private var mainView: MainView?

    convenience init() {
        // create window
        self.init(contentRect: .zero,
                  styleMask: [.titled, .closable, .miniaturizable],
                  backing: .buffered,
                  defer: true)

        // configure window
        self.title = "myDisplay211223"
        self.setContentSize(.init(width: DISPLAY.display_width, height: DISPLAY.display_height))
        self.setFrameOrigin(.zero) // screen (0,0)

        // add mainView
        mainView = MainView()
        self.contentView = mainView
    }
}
