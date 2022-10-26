//
//  ContentView.swift
//  Blackboard
//
//  Created by Austin on 2022/10/23.
//

import SwiftUI
import WebKit

struct WebView: NSViewRepresentable {
    let url: URL

    func makeNSView(context: NSViewRepresentableContext<WebView>) -> WKWebView {
        let webView: WKWebView = WKWebView()
        let request = URLRequest(url: self.url)
        webView.customUserAgent = "Safari/605"
        webView.load(request)
        return webView
    }

    func updateNSView(_ webView: WKWebView, context: NSViewRepresentableContext<WebView>) {}
}

struct ContentView: View {
    let url: String = "https://ziweek.github.io/"
    var body: some View {
        GeometryReader { g in
            ScrollView {
                WebView(url: URL(string: url)!)
                    .frame(height: g.size.height)
            }.frame(height: g.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
