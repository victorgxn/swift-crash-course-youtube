 //
//  ContentView.swift
//  Achieve Room
//
//  Created by Victor Gonzalez Martin on 5/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.red)
            VStack {
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                    Rectangle()
                        .foregroundColor(.orange)
                    Rectangle()
                        .foregroundColor(.yellow)
                }
                .frame(height: 100)
                HStack {
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(height: 100)
                }
                HStack {
                    Circle()
                        .foregroundColor(.green)
                       
                    VStack {
                        Rectangle()
                            .foregroundColor(.black)
                           
                    }
                    Circle()
                        .foregroundColor(.purple)
                }
                HStack {
                    Rectangle()
                        .foregroundColor(.orange)
                        .frame(height: 100)
                }
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                    Rectangle()
                        .foregroundColor(.orange)
                    Rectangle()
                        .foregroundColor(.yellow)
                }
                .frame(height: 100)
            }
        }
    }

}

#Preview {
    ContentView()
}
