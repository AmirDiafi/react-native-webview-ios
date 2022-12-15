//
//  WebViewManager.swift
//  WebViewManager
//
//  Created by Amir Diafi on 12/13/22.
//

import SwiftUI
import WebKit

@available(iOS 14.0, *)

class WebViewStore: ObservableObject {
    
    @Published var url: String = ""
    
}


@available(iOS 14.0, *)
@objc(WebViewManager)
class WebViewManager: RCTViewManager {
    
    public var vc: UIHostingController<WebView> = UIHostingController(rootView: WebView())
    
    @objc var url: String {
        set { vc.rootView.props.url = newValue }
        get { return vc.rootView.props.url }
    }
    
    @objc override func view() -> UIView! {
        return vc.view
    }
    
    override static func requiresMainQueueSetup() -> Bool {
        return true
    }
    
}

@available(iOS 14.0, *)
struct WebView: UIViewRepresentable {
    
    @ObservedObject var props = WebViewStore()
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        guard let theUrl = URL(string: props.url) else {
            return
        }
        
        let request = URLRequest(url: theUrl)
        webView.load(request)
    }
    
}
