import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ClipboardPlugin)
public class ClipboardPlugin: CAPPlugin {
    
    /// Valor nulo.
    private let null = NSNull()

    
    @objc func write(_ call: CAPPluginCall) {
        call.resolve()
    }

    @objc func writeURL(_ call: CAPPluginCall) {
        call.resolve()
    }

    @objc func writeImage(_ call: CAPPluginCall) {
        call.resolve()
    }

    @objc func read(_ call: CAPPluginCall) {
        call.resolve()
    }

    @objc func readURL(_ call: CAPPluginCall) {
        // UIPasteboard.general.hasURLs ? UIPasteboard.general.url! : null
        let url = UIPasteboard.general.hasURLs ? UIPasteboard.general.url : nil;
        call.resolve([
            "url": url?.absoluteString ?? null
        ])
    }

    @objc func readImage(_ call: CAPPluginCall) {
        call.resolve()
    }

}

