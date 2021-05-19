//
//  InfoView.swift
//  Card
//
//  Created by locussigilli on 5/10/21.
//

import SwiftUI

struct InfoView: View {
    
    let textName: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.white)
            .frame( height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(textName)
                        .foregroundColor(.black)
                })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(textName: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
