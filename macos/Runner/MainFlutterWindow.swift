import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
    override func awakeFromNib() {
        let flutterViewController = FlutterViewController()
        let windowFrame = frame
        contentViewController = flutterViewController
        setFrame(windowFrame, display: true)
        RegisterGeneratedPlugins(registry: flutterViewController)
        level = NSWindow.Level(rawValue: Int(2))
        super.awakeFromNib()
    }
}
