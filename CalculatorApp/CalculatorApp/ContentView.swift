//
//  ContentView.swift
//  CalculatorApp
//
//  Created by Reaz Tahmidur Rahman on 7/16/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstNumber: String = ""
    @State private var secondNumber: String = ""
    @State private var operation: String = ""
    @State private var result: String = ""
    let calculator = Calculator()
    
    var body: some View {
        VStack(spacing:20) {
            Text("Integer Calculator")
//                .bold()
                .font(.title)
                .foregroundColor(.gray)
//                .underline()
                .fontWeight(.medium)
                
            CustomTextFieldV1(title: "First Number", text: $firstNumber)
            
            Picker("Picker", selection: $operation) {
                Text("+").tag("+")
                Text("-").tag("-")
                Text("*").tag("*")
                Text("/").tag("/")
            }
            .pickerStyle(SegmentedPickerStyle())
            
            CustomTextFieldV1(title: "Second Number", text: $secondNumber)
            
            Text("Result is:\n\(result) 🧐")
                .font(.title3)
                .bold()
                .foregroundColor(.gray)
            
            Button{
                self.result = calculator.calculate(fNum: firstNumber, sNum: secondNumber, op: operation)
            } label: {
                Text("Calculate")
                    .foregroundColor(.white)
                    .font(.title3)
            }
            .padding()
            .background(Color.orange)
            .cornerRadius(30)
        }
        
        .padding()
    }
}

class Calculator{
    func calculate(fNum: String, sNum: String, op: String) -> String {
        
        let fNum = Int(fNum) ?? 0
        let sNum = Int(sNum) ?? 0
        
        switch op {
        case "+":
            return String(fNum + sNum)
            
        case "-":
            return String(fNum - sNum)
            
        case "*":
            return String(fNum * sNum)
        
        case "/":
            return String(fNum / sNum)
        
        default:
            return "Whoah Never Seen This Before 🧐"
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
