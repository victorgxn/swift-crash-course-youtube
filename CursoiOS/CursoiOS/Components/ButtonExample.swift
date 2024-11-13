//
//  ButtonExample.swift
//  CursoiOS
//
//  Created by Victor Gonzalez Martin on 13/11/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        VStack {
            Button("Hola") {
                print("Esto es una prueba")
            }
            Button(action: {
                print("Holiwi")
            }, label: {
                Text("hola")
                    .frame(width: 100, height: 50)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(23)
            })
            .padding()
        }
    }
}

#Preview {
    ButtonExample()
}
