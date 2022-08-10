//
//  ContentView.swift
//  News_SwiftUI
//
//  Created by Вячеслав Терентьев on 09.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}



//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjur"),
//    Post(id: "3", title: "Hola")
//]
