//
//  TextExample.swift
//  CursoiOS
//
//  Created by Victor Gonzalez Martin on 13/11/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack {
            Text("Hello, Wolrd").font(.headline)
            Text("Custom").font(.system(
                size: 40, weight: .light, design: .monospaced
            )).italic().bold().underline()
                .foregroundColor(.white)
                .background(.red)
        Text("Victor G Victor G Victor G Victor G")
                .frame(width: 100)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .lineSpacing(20)
        }
    }
}

#Preview {
    TextExample()
}
