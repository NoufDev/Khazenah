//
//  PlaceholderBg.swift
//  ofra.
//
//  Created by nouf on 18/06/1444 AH.
//


import SwiftUI

struct PlaceholderBg: View {

let text: String?

init(text:String? = nil) {
        UITextView.appearance().backgroundColor = .clear // necessary to remove the default bg
    
    self.text = text
 }

var body: some View {
    VStack {
    HStack{
    
    Text(text!)
          
    Spacer()
    }
    Spacer()
    }
}
    
}
