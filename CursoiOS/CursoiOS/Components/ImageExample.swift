//
//  ImageExample.swift
//  CursoiOS
//
//  Created by Victor Gonzalez Martin on 13/11/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("victorg")
            .resizable()
            .scaledToFill()
            .frame(width:50, height: 90)
        
        Image(systemName: "figure.walk")
            .resizable()
            .frame(width: 100, height: 150)
    }
}

#Preview {
    ImageExample()
}
