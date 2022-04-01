//
//  CategoryView.swift
//  Fanfiction.net
//
//  Created by Piera Di Fusco on 15/12/21.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        HStack{
            Image("all").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                
                
                .overlay(
                    Text("All")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, -70.0)

                )
                .cornerRadius(10)
                

            Image("tv").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                
                .overlay(
                    Text("Shows")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, 70.0)

                        
                    
                        
                )
                .cornerRadius(10)
        }
        
        HStack{
            Image("book").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                .overlay(
                    Text("Books")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, -70.0)
                        
                )
                .cornerRadius(10)

            Image("anime").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                .overlay(
                    Text("Anime")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, 70.0)
                        
                )
                .cornerRadius(10)
        }
        
        HStack{
            Image("theatre").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                .overlay(
                    Text("Theatre")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, -70.0)
                        
                )
                .cornerRadius(10)

            Image("games").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                .overlay(
                    Text("Games")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, 70.0)
                        
                )
                .cornerRadius(10)
        }
        
        HStack{
            Image("cartoon").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                .overlay(
                    Text("Cartoon")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, -70.0)
                        
                )
                .cornerRadius(10)

            Image("pulp1").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                .overlay(
                    Text("Movies")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, 70.0)
                        
                )
                .cornerRadius(10)
        }
        
        HStack{
            Image("comics").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                .overlay(
                    Text("Comics")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, -70.0)
                        
                )
                .cornerRadius(10)

            Image("other").resizable()
                .clipShape(Rectangle())
                .frame(width: 180, height: 90)
                .overlay(
                    Text("Others")
                        .font(.title2)
                        .fontWeight(.light)
                        .padding(.trailing, 70.0)
                        
                )
                .cornerRadius(10)
        }
        
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
