import Cocoa

class DisplayWindow: NSWindow {
    private var mainView: DisplayView?

    convenience init() {
        // MARK: create and configure self

        self.init(contentRect: .zero,
                  styleMask: [.titled, .closable, .miniaturizable],
                  backing: .buffered,
                  defer: true)
        self.title = "myDisplay211223"
        self.setFrameOrigin(.zero) // screen (0,0)
        self.setContentSize(.init(width: DISPLAY.display_width, height: DISPLAY.display_height))

        // MARK: create and add mainView

        mainView = DisplayView()
        self.contentView = mainView!
    }
}
