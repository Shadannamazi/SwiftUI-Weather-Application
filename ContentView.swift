//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by Shadan Namazi on 2023-06-19.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    
    var body: some View {
        
        ZStack{
          
            backgroundView(isNight: $isNight)
            
            VStack{
                
                Button{
                    isNight.toggle()
                }label: {
                    
                    Image(systemName: "moon")
                        .foregroundColor(.white)
                    
                        
                }
                
                
                
                
                nameCityView(cityName: "Cupertino, CA")
                    Spacer()
                weatherView(imageName: "cloud.sun.fill", temp: 56)
                Spacer()
                HStack{
                    //ExtractedView("WED","cloud.sun.fill",76)
                    
                    WeatherDayView(day: Day(name: "TUE", temp: 56, image: "cloud.sun.fill"))
                    WeatherDayView(day: Day(name: "TUE", temp: 56, image: "cloud.sun.fill"))
                    WeatherDayView(day: Day(name: "TUE", temp: 56, image: "cloud.sun.fill"))
                    WeatherDayView(day: Day(name: "TUE", temp: 56, image: "cloud.sun.fill"))
                    WeatherDayView(day: Day(name: "TUE", temp: 56, image: "cloud.sun.fill"))
                    
                   
                }
                Spacer()
                
            }

        }
    }
    
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    var day: Day
//    var dayOfWeek: String
//    var imageName: String
//    var temp: Int
    
    var body: some View {
        VStack{
            Text(day.name)
                .font(.system(size:20))
                .foregroundColor(.white)
            Image(systemName:day.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width:65)
            Text("\(day.temp)°").bold()
                .font(.system(size:30))
                .foregroundColor(.white)
            
        }
    }
}

struct backgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View{
        LinearGradient(colors: [isNight ? .black: .blue, isNight ? .gray:.white], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct nameCityView: View {
    var cityName: String
    
    var body: some View{
        Text(cityName).bold().font(.system(size: 33))
            .foregroundColor(.white)
            .padding(50)
    }
}

struct weatherView: View {
    var imageName: String
    var temp: Int
    
    var body: some View{
        Image(systemName:imageName)
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
        Text("\(temp)°").bold()
            .font(.system(size:75))
            .foregroundColor(.white)
            .padding()
    }
}
