//
//  ContentView.swift
//  Card
//
//  Created by locussigilli on 5/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.38, green: 0.64, blue: 0.74)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack {
            imageView(imageName: "angela")

            Text("Angela Yu")
                .font(Font.custom("Yellowtail-Regular", size: 60))
                .bold()
                .foregroundColor(.white)
               // .padding()
            Text("iOS Developer")
                .foregroundColor(.white)
                .font(.system(size: 25))
            Divider()
            InfoView(textName: "+44 123-2344", imageName: "phone.fill")
            InfoView(textName: "angela@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct imageView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}
