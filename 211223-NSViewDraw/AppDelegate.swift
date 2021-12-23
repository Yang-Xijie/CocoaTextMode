// AppDelegate.swift

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    private var mainWindow: MainWindow?

    func applicationDidFinishLaunching(_: Notification) {
        // create and show mainWindow
        mainWindow = MainWindow()
        mainWindow!.makeKeyAndOrderFront(self)

        print("[applicationDidFinishLaunching end]")
    }

    // settings
    func applicationShouldTerminateAfterLastWindowClosed(_: NSApplication) -> Bool {
        true
    }
}
