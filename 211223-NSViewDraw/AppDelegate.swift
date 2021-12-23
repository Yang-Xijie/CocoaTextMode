// AppDelegate.swift

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    // MARK: mainWindow

    private var mainWindow: DisplayWindow?

    func applicationDidFinishLaunching(_: Notification) {
        // MARK: create and show mainWindow

        mainWindow = DisplayWindow()
        mainWindow!.makeKeyAndOrderFront(self)
    }

    // MARK: settings

    func applicationShouldTerminateAfterLastWindowClosed(_: NSApplication) -> Bool {
        true
    }
}
