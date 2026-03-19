import Foundation
import Capacitor

@objc(CapacitorSwipeBackPlugin)
public class CapacitorSwipeBackPlugin: CAPPlugin {
  @objc func enable(_ call: CAPPluginCall) {
    guard let webView else {
      call.reject("WebView not initialized")
      return
    }
    
    DispatchQueue.main.async {
      webView.allowsBackForwardNavigationGestures = true;
    }
    
    call.resolve([
      "status": "enable"
    ])
  }
  
  @objc func disable(_ call: CAPPluginCall) {
    guard let webView else {
      call.reject("WebView not initialized")
      return
    }
    
    DispatchQueue.main.async {
      webView.allowsBackForwardNavigationGestures = false;
    }
    
    call.resolve([
      "status": "disable"
    ])
  }
}
