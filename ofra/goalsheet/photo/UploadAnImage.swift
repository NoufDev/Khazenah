//
//  addPohoto.swift
//  ofra.
//
//  Created by nouf on 18/06/1444 AH.
//

import SwiftUI

struct UploadAnImage: View {
    @State var isPickerShowing = false
    @State var selectedImage: UIImage?

//    @State private var image = UIImage()
//    @State private var showSheet = false
    
    var body: some View {
//    HStack {
//            Image(uiImage: self.image)
//                .resizable()
//                .frame(width: 300, height: 200)
//                .background(Color.black.opacity(0.2))
//                .aspectRatio(contentMode: .fill)
//                .onTapGesture {
//                    showSheet = true
//                }
//        }
//        .padding(.horizontal, 20)
//        .sheet(isPresented: $showSheet) {
//            // Pick an image from the photo library:
//            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)

            VStack {
                if selectedImage != nil {
                    
//                    Image (uiImage: selectedImage!)
//                    
//                        .resizable ()
//                        .frame (width: 200, height: 200)
                }
                    Button {
                        // Show the image picker
                        isPickerShowing = true
                    } label: {
                        
                        if let selectedImage {
                            Image(uiImage :selectedImage)
                                .resizable()
                                .frame(width: 280, height: 140 )
                                .cornerRadius(20)

                               
                        } else {
                            Image(systemName: "photo.fill")
                                        .font(.system(size:40))
                                        .frame(width: 70, height: 70 )
                                        .foregroundColor(Color("laightblue"))
                                        .font(.largeTitle)
                                       // .padding()
                                    .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color("darkblue"), lineWidth: 3)
                                .frame(width: 280, height: 140 )
                                                         )
                        }
                        
                        
                        
//            .font(.system(size:80))
//            .frame(width: 70, height: 70 )
//            .foregroundColor(Color("laightblue"))
//            .font(.largeTitle)
//            .padding()
//        .overlay(
//    RoundedRectangle(cornerRadius: 16)
//            .stroke(Color("laightblue"), lineWidth: 3)
//            .frame(width: 400, height: 220 )
//                             )
       
                    }
                }
            .sheet(isPresented: $isPickerShowing, onDismiss: nil) {
            // Image picker
            
                ImagePicker (selectedImage: $selectedImage, isPickerShowing: $isPickerShowing)
            //  If you wish to take a photo from camera instead:
            // ImagePicker(sourceType: .camera, selectedImage: self.$image)
        }
    }
}
struct UploadAnImage_Previews: PreviewProvider {
    static var previews: some View {
        UploadAnImage()
    }
}
