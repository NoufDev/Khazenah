//
//  POPUP2.swift
//  ofra.
//
//  Created by nouf on 19/06/1444 AH.
//

import SwiftUI

struct POPUP2: View {
    @State var showSheet2: Bool = false
    
    var body: some View {
        VStack{
            VStack{
                Button(action:{
                    showSheet2.toggle()
                }, label: {
                    
                    Image(systemName: "plus.app.fill")
                        .font(.system(size:80))
                    
                        .frame(width: 70, height: 70 )
                        .foregroundColor(Color("darkblue"))
                        .font(.largeTitle)
                    
                })
                
            }
            .sheet(isPresented: $showSheet2, content:{ Sheet2()
                
                    .presentationDetents([.large,  .fraction(0.90)])
                
            })
            
            
            
        }
    }
    
    
    
    struct Sheet2: View{
        @State var totalincome: Int = 900
        @State var deductedamount: Int = 50
        
        @State private var date = Date()
        @Environment(\.presentationMode) var PresentatioMode
        var body: some View{
            
            ZStack(){
                Color("page")
                    .edgesIgnoringSafeArea(.all)
                // .cornerRadius(35)
                VStack(spacing : 5){
                    HStack(alignment: .top){
                        Spacer()
                        Button(action: {
                            PresentatioMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundColor(Color("darkblue"))
                                .font(.title)
                                .padding(.bottom, 20)
                            
                        })
                    }
                    VStack{
                        VStack(spacing : 5){
                            
                            TextField("total income:", value: $totalincome , formatter: NumberFormatter())
                                .textFieldStyle(.plain)
                                .frame(height: 25)
                                .clipShape(Capsule())
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius:15.0).strokeBorder(Color("darkblue"), style: StrokeStyle(lineWidth: 2.0)))
                                .padding(.bottom, 8)
                                .padding()
                            
                            TextField("deducted amount:", value: $deductedamount , formatter: NumberFormatter())
                                .textFieldStyle(.plain)
                                .frame(height: 25)
                                .clipShape(Capsule())
                                .padding()
                                .overlay(RoundedRectangle(cornerRadius:15.0).strokeBorder(Color("darkblue"), style: StrokeStyle(lineWidth: 2.0)))
                                .padding()
                                .padding(.bottom, 20)
                            
                            
                            
                            DatePicker("Date :",
                                       selection: $date,
                                       displayedComponents: [.date])
                            .foregroundColor(Color("darkblue"))
                            .font(.title2.bold())
                            .padding(.horizontal, 40.0)
                            .padding(.bottom, 40)
                        }
                    }
                       .padding(.vertical)
                    VStack{
                        Text("savings Value :")
                            .foregroundColor(Color("darkblue"))
                            .font(.title2.bold())
                        
                        rate2()
                            .frame(width: 370,height: 100)
                        .padding(.bottom, 40)
                        
                    }
                        
                        
                        Button("Add goal") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width:160, height: 55)
                        .font(.title2)
                        .foregroundColor(Color("page"))
                        .background(Color("darkblue"))
                        .cornerRadius(15)
                      //  .padding()
                        
                        
                        
                    }.padding(.horizontal)
                    
                    //.padding()
                }
                
            
        }
    }
}
struct POPUP2_Previews: PreviewProvider {
    static var previews: some View {
        POPUP2()
    }
}
