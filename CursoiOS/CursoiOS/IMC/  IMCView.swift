//
//    IMCView.swift
//  CursoiOS
//
//  Created by Victor Gonzalez Martin on 14/11/24.
//

import SwiftUI

struct IMCView: View {
    
    /*init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }*/

    var body: some View {
        VStack {
            HStack {
                ToggleButton(text: "Victorg", imageName: "heart.fill", index: 0   )
                ToggleButton(text: "Victorg", imageName: "heart.fill", index: 0   )
            }
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundApp)
            //.navigationBarBackButtonHidden()
            //.navigationTitle("IMC Calculator")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("IMC Calculator").bold().foregroundColor(.white)
                }
            }
    }
}

struct ToggleButton:View {
    
    let text: String
    let imageName: String
    let index: Int
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .foregroundColor(.white)
                Text(text)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent)
        })
    }
}


#Preview {
    IMCView()
}
