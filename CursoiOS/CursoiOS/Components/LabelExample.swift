//
//  LabelExample.swift
//  CursoiOS
//
//  Created by Victor Gonzalez Martin on 13/11/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("Badminton time", systemImage: "figure.badminton")
        Label {
                  Text("El de las gafas")
              } icon: {
                  Image("victorg")
                      .resizable()
                      .scaledToFit()
                      .frame(width: 50, height: 50)
              }
            
        
    }
    
}

#Preview {
    LabelExample()
}
