import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ClipboardPlugin)
public class ClipboardPlugin: CAPPlugin {
    private let implementation = Clipboard()

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
        call.resolve()
    }

    @objc func readImage(_ call: CAPPluginCall) {
        call.resolve()
    }

}

