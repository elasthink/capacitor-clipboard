#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(ClipboardPlugin, "Clipboard",
           CAP_PLUGIN_METHOD(read, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(readURL, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(readImage, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(write, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(writeURL, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(writeImage, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(clear, CAPPluginReturnPromise);
)
