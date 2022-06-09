//
//  InfoView.swift
//  SwiftUI InanCard
//
//  Created by BS851 on 8/6/22.
//

import SwiftUI

struct InfoView: View {
    let text: String?
    let imageName: String?
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName!).foregroundColor(.green)
                Text(text!).bold()
            })
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
