//
//  ContentView.swift
//  WebView
//
//  Created by Amir Diafi on 12/13/22.
//

import SwiftUI

@available(iOS 14.0, *)
struct ContentView: View {
    var body: some View {
        VStack {
            WebView(url: "")
        }
    }
}

#if DEBUG
@available(iOS 14.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
