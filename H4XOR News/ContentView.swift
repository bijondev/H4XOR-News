//
//  ContentView.swift
//  H4XOR News
//
//  Created by Bijon Krishna Bairagi on 1/22/25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack{
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("X4XOR NEWS")
        }
        .onAppear(){
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}



//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Binjour"),
//    Post(id: "3", title: "Hola"),
//]
