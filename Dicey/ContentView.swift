//
//  ContentView.swift
//  Dicey
//
//  Created by Reaz Tahmidur Rahman on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State
    var leftDice: Int = 1
    @State
    var rightDice: Int = 1
    
    
    var body: some View {
        VStack{
            Text("Dicey")
                .foregroundColor(.pink).opacity(0.90)
                .bold()
                .font(.system(size: 50))
                .fontWeight(.black)
            
            Spacer()
            
            HStack{
                Image("dice\(leftDice)")
                    .resizable().frame(width: 100, height: 100)
                Image("dice\(rightDice)")
                    .resizable().frame(width: 100, height: 100)
            }.offset(y: -50)
            
            Button {
                print("The Button has been clicked")
                leftDice = Int.random(in: 1...6)
                rightDice = Int.random(in: 1...6)
            } label: {
                Text("Tap to Roll Dice")
                    .font(.title)
                    .foregroundColor(.pink).opacity(0.89)
                    .fontWeight(.black)
            }.padding(10)
            
            Button {
                print("The Button has been reset")
                leftDice = 1
                rightDice = 1
            } label: {
                Image(systemName: "goforward").colorInvert()
            }
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
