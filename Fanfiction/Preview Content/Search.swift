//
//  Search.swift
//  Fanfiction.net
//
//  Created by Piera Di Fusco on 11/12/21.
//

import SwiftUI



struct Search: View {
    @State private var searchTerm : String = ""
    @State private var selectedCategories = 0
    var body: some View {
        
            NavigationView{
                VStack {
                    SearchBar(text: $searchTerm)
                        .padding(.horizontal, 12)
                        
//                        .padding(.top, )
//                        .padding(.vertical, -54)
                    ScrollView{
                    
                    CategoryView()
                        .padding(.horizontal)
                        
                    }.padding(30)
                    
                }
                    
                
                .navigationTitle("Search")
                .ignoresSafeArea(.keyboard, edges: .bottom)
                .navigationBarItems(trailing:
                                        NavigationLink(destination: Profile(),
                                        label: {
                    Image(systemName: "person.crop.circle")
                        .foregroundColor(.blue)
                        .font(.title2)
                        .padding()
                    
                        .navigationTitle("Search")
                        
                })
                )
                
                }
//                .padding(EdgeInsets(top: -80, leading: 0, bottom: 0, trailing: 0))
//               

                    
                }
            
            

            }
            
            
            
            
            
    

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}

