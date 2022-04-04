//
//  Profile.swift
//  Fanfiction.net
//
//  Created by Piera Di Fusco on 16/12/21.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView{
            

//            ProfileInside()
            
//            Navigation BAR
        }.navigationTitle("Your Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:

                                    
                HStack {
                NavigationLink(destination: Write(),
                               label: {
Image(systemName: "bell")
.foregroundColor(.primary)
.font(.subheadline)

}

)
                NavigationLink(destination: Settings(),
                               label: {
Image(systemName: "gear")
.foregroundColor(.primary)
.font(.subheadline)

}

)

               
            }
        )
                                    
                                    
                                    
                                    
                                    
                                  
        
                     
            
        
        
        
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
