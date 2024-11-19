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
    
    //Variables de estado
    @State var gender:Int = 0
    @State var height:Double = 150

    var body: some View {
        VStack {
            HStack {
                ToggleButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender  )
                ToggleButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender  )
            }
            HeightCalculator(selectedHeight: $height)
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
    let gender: Int
    @Binding var selectedGender: Int
    
    
    var body: some View {
        let color = if (gender == selectedGender) {
            Color.backgroundComponentSelected
        } else {
            Color.backgroundComponent
        }
        Button(action: {
            selectedGender = gender
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .foregroundColor(.white)
                InformationText(text: text)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(color)
        })
    }
}

struct InformationText: View {
    let text: String
    var body: some View {
        Text(text).font(.largeTitle).bold().foregroundColor(.white)
    }
}

struct TitleText: View {
    let text: String
    var body: some View {
        Text(text).font(.title2).foregroundColor(.gray)
    }
}

struct HeightCalculator: View {
    @Binding var selectedHeight: Double
    var body: some View {
        VStack {
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in : 100...200, step: 1).accentColor(.purple).padding(.horizontal, 16)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponent)
    }
}

#Preview {
    IMCView()
}
