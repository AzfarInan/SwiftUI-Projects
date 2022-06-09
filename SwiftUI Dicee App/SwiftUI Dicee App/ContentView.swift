//
//  ContentView.swift
//  SwiftUI Dicee App
//
//  Created by BS851 on 9/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber: Int = 1
    @State var rightDiceNumber: Int = 1
    
    var body: some View {
        ZStack {
            Image("background").resizable().ignoresSafeArea(.all)
            VStack{
                Image("diceeLogo").padding()
                Spacer()
                HStack{
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }.padding(.horizontal)
                Spacer()
                Button {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(.red).padding()
            }
            
        }
    }
}

struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

