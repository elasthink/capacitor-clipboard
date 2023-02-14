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
    
    /// Lee del portapapeles un texto.
    /// - Returns: Texto obtenido o nulo.
    @objc func read(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }

    /// Lee del portapapeles una URL.
    /// - Returns: URL obtenida o valor nulo.
    @objc func readURL(_ call: CAPPluginCall) {
        // UIPasteboard.general.hasURLs ? UIPasteboard.general.url! : null
        let url = UIPasteboard.general.hasURLs ? UIPasteboard.general.url : nil;
        call.resolve([
            "url": url?.absoluteString ?? null
        ])
    }

    /// Lee del portapapeles una imagen.
    /// - Returns: Imagen o valor nulo.
    @objc func readImage(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }
    
    /// Copia el texto especificado al portapapeles.
    /// - Parameter call:
    ///     - {string} text Texto especificado.
    @objc func write(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }

    /// Copia la URL especificada al portapapeles.
    /// - Parameter call:
    ///     - {string} url URL especificada.
    @objc func writeURL(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }

    /// Copia la imagen especificada al portapapeles.
    /// - Parameter call:
    ///     - {string} image Imagen especificada.
    @objc func writeImage(_ call: CAPPluginCall) {
        call.unimplemented("Not yet implemented!")
    }
    
    /// Vacia el portapapeles.
    @objc func clear(_ call: CAPPluginCall) {
        UIPasteboard.general.items = []
        call.resolve()
    }

}

