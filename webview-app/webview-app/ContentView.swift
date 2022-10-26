//
//  ContentView.swift
//  Blackboard
//
//  Created by Austin on 2022/10/23.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpToLinkToBlog(_ sender: UIButton) {
        
        let blogUrl = NSURL(string: "https://borabong.tistory.com/")
        let blogSafariView: SFSafariViewController = SFSafariViewController(url: blogUrl as! URL)
        self.present(blogSafariView, animated: true, completion: nil)
    }
    
    @IBAction func touchUpToLinkToGithub(_ sender: UIButton) {
        
        let githubUrl = NSURL(string: "https://github.com/hwangJi-dev")
        let githubSafariView: SFSafariViewController = SFSafariViewController(url: githubUrl as! URL)
        self.present(githubSafariView, animated: true, completion: nil)
    }
}


//import SwiftUI
//import WebKit
//
//struct WebView: NSViewRepresentable {
//    let url: URL
//
//    func makeNSView(context: NSViewRepresentableContext<WebView>) -> WKWebView {
//        let webView: WKWebView = WKWebView()
//        let request = URLRequest(url: self.url)
//        webView.customUserAgent = "Safari/605"
//        webView.load(request)
//        return webView
//    }
//
//    func updateNSView(_ webView: WKWebView, context: NSViewRepresentableContext<WebView>) {}
//}
//
//struct ContentView: View {
//    let url: String = "https://ziweek.github.io/"
//    var body: some View {
//        GeometryReader { g in
//            ScrollView {
//                WebView(url: URL(string: url)!)
//                    .frame(height: g.size.height)
//            }.frame(height: g.size.height * 2)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
