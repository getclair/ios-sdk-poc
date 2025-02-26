//
//  Webview.swift
//  Clair
//
//  Created by Nicholas Glaviano on 2/14/25.
//
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {

    init() {

    }

    func makeUIView(context: Context) -> WKWebView {
        var request = URLRequest(url: URL(string: "https://www.getclair.com")!)
        let webview = WKWebView(frame: .zero)
        webview.load(request)

        return webview
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {

    }
}
