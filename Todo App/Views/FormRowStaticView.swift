//
//  FormRowStaticView.swift
//  Todo App
//
//  Created by Itunu Raimi on 01/03/2021.
//

import SwiftUI

struct FormRowStaticView: View {
    // MARK: - PROPERTIES
    var icon: String
    var firstText: String
    var secondText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(Color.gray)
                
                Image(systemName: icon)
                    .foregroundColor(.white)
            } // ZStack
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(firstText)
                .foregroundColor(.gray)
            Spacer()
            
            Text(secondText)
        }
    }
}

// MARK: - PREVIEW
struct FormRowStaticView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
            .previewLayout(.fixed(width: 380, height: 70))
            .padding()
    }
}
