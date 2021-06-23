//
//  ContentView.swift
//  CalculatorlLayoutSwiftUI
//
//  Created by Navdeep Beniwal on 23/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                VStack(alignment: .trailing) {
                    HStack {
                        Spacer()
                        Text("0")
                            .font(.system(size: 100))
                            .fontWeight(.light)
                            .frame(height: 100, alignment: .trailing)
                            .foregroundColor(.white)
                            .padding()
                            
                    }
                    .padding([.trailing, .leading])
                }
                
                VStack(alignment: .center, spacing: 10) {
                    HStack(alignment: .center, spacing: 10) {
                        UncommonOperatorButton(operatorSign: "AC")
                        UncommonOperatorButton(operatorSign: "+/-")
                        UncommonOperatorButton(operatorSign: "%")
                        CommonOperatorButton(operatorSign: "÷")
                    }
                    
                    HStack(alignment: .center, spacing: 10) {
                        NumbersButton(number: "7")
                        NumbersButton(number: "8")
                        NumbersButton(number: "9")
                        CommonOperatorButton(operatorSign: "x")
                    }
                    
                    HStack(alignment: .center, spacing: 10) {
                        NumbersButton(number: "4")
                        NumbersButton(number: "5")
                        NumbersButton(number: "6")
                        CommonOperatorButton(operatorSign: "-")
                    }
                    
                    HStack(alignment: .center, spacing: 10) {
                        NumbersButton(number: "1")
                        NumbersButton(number: "2")
                        NumbersButton(number: "3")
                        CommonOperatorButton(operatorSign: "+")
                    }
                    
                    HStack(alignment: .center, spacing: 10) {
                        VStack {
                            Text("0")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding([.leading])
                                .frame(width: 160, height: 80, alignment: .leading)
                                .padding([.leading])
                                .background(Color.gray)
                                .clipShape(Capsule())
                        }
                        
                        NumbersButton(number: ".")
                        CommonOperatorButton(operatorSign: "=")
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct UncommonOperatorButton: View {
    let operatorSign: String
    var body: some View {
        Text(operatorSign)
            .font(.title)
            .fontWeight(.bold)
            .frame(width: 80, height: 80, alignment: .center)
            .background(Color.white)
            .clipShape(Circle())
    }
}

struct CommonOperatorButton: View {
    let operatorSign: String
    var body: some View {
        Text(operatorSign)
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .frame(width: 80, height: 80, alignment: .center)
            .background(Color.orange)
            .clipShape(Circle())
    }
}

struct NumbersButton: View {
    let number: String
    var body: some View {
        Text(number)
            .font(.title)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .frame(width: 80, height: 80, alignment: .center)
            .background(Color.gray)
            .clipShape(Circle())
    }
}
