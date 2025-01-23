//
//  DetailView.swift
//  H4XOR News
//
//  Created by Bijon Krishna Bairagi on 1/23/25.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://bijon.me")
}

