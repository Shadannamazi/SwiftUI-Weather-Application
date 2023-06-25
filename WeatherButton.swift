//
//  WeatherButton.swift
//  SwiftUi-Weather
//
//  Created by Shadan Namazi on 2023-06-21.
//

import SwiftUI

struct WeatherButton: View {
    var title:String
    
    var body: some View {
        Text(title)
            .frame(width: 350, height: 75)
        .font(.system(size: 20))
        .background(Color.white)
        .bold()
        .cornerRadius(20)
        .padding()
    }
}


