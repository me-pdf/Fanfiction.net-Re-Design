//
//  ProfileInside.swift
//  Fanfiction.net
//
//  Created by Piera Di Fusco on 16/12/21.
//

import SwiftUI

struct ProfileInside: View {
    var body: some View {
        
        ZStack{
           
            VStack{
                
               
                Image("background")
                    .resizable()
                    .scaledToFill()
                            
                            }.frame(width: 420, height: 300, alignment: .center)
                                .padding(EdgeInsets(top: 30, leading: 0, bottom: 500, trailing: 0))
            
        
        
        
        
        
        }
    }
}

struct ProfileInside_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInside()
    }
}
