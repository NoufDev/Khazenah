//
//  rate2.swift
//  ofra.
//
//  Created by nouf on 19/06/1444 AH.
//

import SwiftUI

struct rate2: View {
    @State private var value = 0.2
    
    let numberFormatter: NumberFormatter = {
        let num = NumberFormatter()
        num.maximumFractionDigits = 0
        return num
    }()
    
    var body: some View {
        
        ZStack{
            
                Color("page")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Slider(value: $value, in: 0...100, step: 5, minimumValueLabel: Image(systemName: "hourglass.bottomhalf.filled"), maximumValueLabel: Image(systemName: "flag.fill"), label: {})
                    .foregroundColor(Color("laightblue"))
                    .tint(Color("darkblue"))
                Text("savings rate: \(numberFormatter.string(from: NSNumber(value: value))!)%")
                
            }
            .padding()
            // .navigationTitle("DevTechie")
        }
    }
    }

struct rate2_Previews: PreviewProvider {
    static var previews: some View {
        rate2()
    }
}
