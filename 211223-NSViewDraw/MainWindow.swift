// MainWindow.swift

import Cocoa

class MainWindow: NSWindow {
    // MARK: - MainView

    private var mainView: MainView?

    convenience init() {
        // create and configure self
        self.init(contentRect: .zero,
                  styleMask: [.titled, .closable, .miniaturizable],
                  backing: .buffered,
                  defer: true)
        self.title = "myDisplay211223"
        self.setFrameOrigin(.zero) // screen (0,0)
        self.setContentSize(.init(width: DISPLAY.display_width, height: DISPLAY.display_height))

        // add mainView
        mainView = MainView()
        self.contentView = mainView!
    }
}
