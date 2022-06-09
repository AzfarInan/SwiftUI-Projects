//
//  ContentView.swift
//  SwiftUI I am rich
//
//  Created by BS851 on 7/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemTeal)
            VStack {
                Image("diamond").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                Text("I am Rich").foregroundColor(Color.white)
                    .padding().font(.largeTitle)
            }
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
