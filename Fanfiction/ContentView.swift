//
//  ContentView.swift
//  Fanfiction
//
//  Created by Piera Di Fusco on 01/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            Home()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Bookshelf")
                }
            Search()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
          
        }
        //: TabView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
