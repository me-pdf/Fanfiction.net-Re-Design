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
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Search()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            Write()
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Write")
                }
            Forum()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Forum")
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
