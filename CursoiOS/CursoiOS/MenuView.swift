//
//  MenuView.swift
//  CursoiOS
//
//  Created by Victor Gonzalez Martin on 14/11/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: IMCView()){
                    Text("IMC CALCULATOR")
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
