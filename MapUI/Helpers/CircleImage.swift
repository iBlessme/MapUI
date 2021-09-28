//
//  CircleImage.swift
//  MapUI
//
//  Created by Blessme on 24.09.2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    
    var body: some View {
        
       image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
