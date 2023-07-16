//
//  CustomNameField.swift
//  CalculatorApp
//
//  Created by Reaz Tahmidur Rahman on 7/16/23.
//

import SwiftUI

struct CustomTextFieldV1: View {
    
    var title: String
    @Binding var text: String
    
    var body: some View {
        VStack{
            TextField(title, text: $text)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color(red:0.9, green: 0.9, blue: 0.9))
                .cornerRadius(15)
        }
        .padding(1)
    }
}
