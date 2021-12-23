// AppDelegate.swift

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    private var mainWindow: NSWindow?

    func applicationDidFinishLaunching(_: Notification) {
        let application_start_time = CFAbsoluteTimeGetCurrent()

        // create and show mainWindow
        mainWindow = MainWindow()
        mainWindow!.makeKeyAndOrderFront(self)

        let application_start_interval = CFAbsoluteTimeGetCurrent() - application_start_time
        print("[Start of application spent \(application_start_interval)s]")
    }

    // settings
    func applicationShouldTerminateAfterLastWindowClosed(_: NSApplication) -> Bool {
        true
    }
}
