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
    @State var age:Int = 18
    @State var weight:Int = 80

    var body: some View {
        VStack {
            HStack {
                ToggleButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender  )
                ToggleButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender  )
            }
            HeightCalculator(selectedHeight: $height)
            HStack{
                CounterButton(tCounterButton: "Edad", number: $age)
                CounterButton(tCounterButton: "Peso", number: $weight)
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundApp)
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

//Sin dolar solo para representador
//Con dolar para poder modificarlo
//@Binding a los parametros que tiene estados
struct CounterButton: View {
    let tCounterButton:String
    @Binding var number:Int
    var body: some View {
        VStack {
            TitleText(text: tCounterButton)
            InformationText(text: String(number))
            HStack {
                Button(action: {
                    if (number < 100) {
                        number -= 1
                    }
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                    }
                }
                Button(action: {
                    if (number > 0) {
                        number += 1
                    }
                }) {
                    ZStack {
                        Circle()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                        
                    }
                }
            }
        }.frame(maxWidth:.infinity, maxHeight: .infinity).background(.backgroundComponent)
    }
}

#Preview {
    IMCView()
}
