import Foundation
import Capacitor

@objc(ClipboardPlugin)
public class ClipboardPlugin: CAPPlugin {
    
    private let null = NSNull()
    
    @objc func read(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }

    @objc func readURL(_ call: CAPPluginCall) {
        let url = UIPasteboard.general.hasURLs ? UIPasteboard.general.url : nil;
        call.resolve([
            "url": url?.absoluteString ?? null
        ])
    }

    @objc func readImage(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }
    
    @objc func write(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }

    @objc func writeURL(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }

    @objc func writeImage(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }
    
    @objc func clear(_ call: CAPPluginCall) {
        UIPasteboard.general.items = []
        call.resolve()
    }

}

