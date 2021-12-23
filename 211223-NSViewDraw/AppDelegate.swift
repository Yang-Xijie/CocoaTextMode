// AppDelegate.swift

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    // MARK: - window

    private var mainWindow: MainWindow?

    func applicationDidFinishLaunching(_: Notification) {
        // create and show mainWindow
        mainWindow = MainWindow()
        mainWindow!.makeKeyAndOrderFront(self)
    }

    // MARK: - settings

    func applicationShouldTerminateAfterLastWindowClosed(_: NSApplication) -> Bool {
        true
    }
}
