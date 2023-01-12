//
//  POPUO.swift
//  ofra.
//
//  Created by nouf on 17/06/1444 AH.
//

import SwiftUI

struct POPUO: View {
    @State var showSheet1: Bool = false
    
    var body: some View {
        VStack{
            VStack{
                Button(action:{
                    showSheet1.toggle()
                }, label: {
                    
                    Image(systemName: "plus.app.fill")
                        .font(.system(size:80))
                    
                        .frame(width: 70, height: 70 )
                        .foregroundColor(Color("darkblue"))
                        .font(.largeTitle)
                    
                })
                
            }
            .sheet(isPresented: $showSheet1, content:{ Sheet1()
                 
                    .presentationDetents([.large,  .fraction(0.90)])
                   
            })
            
            
            
        }
    }
    
    
    
    struct Sheet1: View{
        @State var gols: String = ""
        @State var valuegol: String = ""
      
        @State private var date = Date()
        @Environment(\.presentationMode) var PresentatioMode
        var body: some View{
            
            ZStack{
                Color("page")
                    .edgesIgnoringSafeArea(.all)
                   // .cornerRadius(35)
                    VStack{
                        HStack(alignment: .top){
                            Spacer()
                            Button(action: {
                                PresentatioMode.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "xmark")
                                    .foregroundColor(Color("darkblue"))
                                    .font(.title)
                                    .padding(.top,10)
                                
                            })
                        }
                        VStack(spacing : 5){
                            
                            TextField("Add your goals:", text: $gols)
                                        .textFieldStyle(.plain)
                                        .frame(height: 25)
                                        .clipShape(Capsule())
                                       .padding()
                .overlay(RoundedRectangle(cornerRadius:15.0).strokeBorder(Color("darkblue"), style: StrokeStyle(lineWidth: 2.0)))
                .padding(.bottom, 8)
                .padding()
                            TextField("What is the target value you want:", text: $valuegol)
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
                          //  .padding(.vertical)
                            Text("Add Photo :")
                            .foregroundColor(Color("darkblue"))
                            .font(.title2.bold())
                        UploadAnImage()
                            .frame(width: 30,height: 150)
                           .padding(.bottom, 30)
                        
                        
                        Button("Add goal") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width:160, height: 55)
                        .font(.title2)
                        .foregroundColor(Color("page"))
                        .background(Color("darkblue"))
                        .cornerRadius(15)
                       // .padding()
                        
                    }.padding(.horizontal)
                    
                  //.padding()
            }
            
        }
    }
}


struct POPUO_Previews: PreviewProvider {
    static var previews: some View {
        POPUO()
    }
}
