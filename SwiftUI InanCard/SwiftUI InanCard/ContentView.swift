//
//  ContentView.swift
//  SwiftUI InanCard
//
//  Created by BS851 on 8/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52).ignoresSafeArea()
            VStack {
                Image("azfarInan").resizable().aspectRatio(contentMode: .fit).frame(width: 150, height: 150, alignment: .center).clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth: 5))
                Text("Azfar Inan")
                    .font(.custom("Pacifico-Regular", size: 45))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 28))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+88 01683-647696", imageName: "phone.fill")
                InfoView(text: "azfar.inan@brainstation-23.com", imageName: "envelope.fill")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
