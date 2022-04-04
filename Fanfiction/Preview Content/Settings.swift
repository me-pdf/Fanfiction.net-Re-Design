//
//  Settings.swift
//  Fanfiction.net
//
//  Created by Piera Di Fusco on 11/12/21.
//

import SwiftUI

struct Settings: View {
    @State private var toggleOff = false
    @State private var toggleOff1 = false
    @State private var toggleOff2 = false
    @State private var toggleOff3 = false
    @State private var toggleOff4 = false

    var body: some View {
        NavigationView{
            List {
                
                
                Section(header: Text("PROFILE"),
                        content:
                            {
                    HStack{
                                Text("Change Avatar")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                            
                    HStack{
                                Text("Username")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    HStack{
                                Text("Email")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                            
                    HStack{
                                Text("Password")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    HStack{
                                Text("Logout")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                
                
                
                
                
                
                
                }
                )
                
                Section(header: Text("READING PREFERENCES"),
                        content:
                            {
                    HStack{
                                Text("Orientation Block")
                        Spacer()
                        Toggle(isOn: $toggleOff) {}
                    }
                            
                    HStack{
                                Text("Keep Screen On")
                        Spacer()
                        Toggle(isOn: $toggleOff1) {}
                    }
                    HStack{
                                Text("Volume Key Scroll")
                            .scaledToFit()
                        Spacer()
                        Toggle(isOn: $toggleOff2) {}                    }
                            
                    HStack{
                                Text("Font")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    HStack{
                                Text("Left-handed Mode")
                        Spacer()
                        Toggle(isOn: $toggleOff3) {}
                        
                    }
                    HStack{
                                Text("Show Mature Stories")
                        Spacer()
                        Toggle(isOn: $toggleOff4) {}
                        
                    }
       
                }
                )
                
                Section(header: Text("ABOUT US"),
                        content:
                            {
                    HStack{
                                Text("Who Are We")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                            
                    HStack{
                                Text("Rate this App")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    HStack{
                                Text("Report Bug")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                
                
                
                
                
                
                
                }
                )
                
                Button(role: .destructive, action: { print("")}) {
                    Label("Delete Account", systemImage: "trash")
                }
                
                
                
                
            }.listStyle(.automatic)
        

        .navigationTitle("Settings")
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
