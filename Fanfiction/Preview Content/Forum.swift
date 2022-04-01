//
//  Forum.swift
//  Fanfiction.net
//
//  Created by Piera Di Fusco on 11/12/21.
//

import SwiftUI

struct Forum: View {
    var body: some View {
        ProgressView(label: {
            Text("Work in Progress")
                .font(.caption)
                .foregroundColor(.secondary)
            }
        ).progressViewStyle(CircularProgressViewStyle())
    }
}

struct Forum_Previews: PreviewProvider {
    static var previews: some View {
        Forum()
    }
}
