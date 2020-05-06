//
//  DetailView.swift
//  Assignment3
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var mosque : Mosque
    var body: some View {
        ZStack{
            Image(mosque.name)
                .resizable()
                .scaledToFill()
                .frame(width:420, height:60)
                .offset(y:-350)
            VStack{
                Text(mosque.name)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.white)
                    .offset(y:-280)
                    .shadow(radius: 1)
                
                
            }
            VStack(spacing:50){
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(mosque.people, id: \.self){ (people :String) in
                        Image(people).resizable()
                            .scaledToFit()
                            .frame(width: 200)
                            .clipShape(Circle())
                        
                    }
                }
                
            }
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 40){
                HStack(spacing: 185){
                    Text("4:00 AM")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.gray)
                    Text("الفجر")
                    .font(.system(size: 25))
                                    .bold()
                                    .foregroundColor(.gray)
                    
                }
                    HStack(spacing: 170){
                        Text("5:00 AM")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(.gray)
                        Text("الشروق")
                        .font(.system(size: 25))
                                        .bold()
                                        .foregroundColor(.gray)
                        
                    }
                HStack(spacing: 180){
                    Text("11:55 AM")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.gray)
                    Text("الظهر")
                    .font(.system(size: 25))
                                    .bold()
                                    .foregroundColor(.gray)
                    
                }
                HStack(spacing: 170){
                    Text("3:10 AM")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.gray)
                    Text("العصر")
                    .font(.system(size: 25))
                                    .bold()
                                    .foregroundColor(.gray)
                    
                }
                HStack(spacing: 155){
                    Text("6:10 AM")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.gray)
                    Text("المغرب")
                    .font(.system(size: 25))
                                    .bold()
                                    .foregroundColor(.gray)
                    
                }
                HStack(spacing: 150){
                    Text("7:50 AM")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.gray)
                    Text("العشاء")
                    .font(.system(size: 25))
                                    .bold()
                                    .foregroundColor(.gray)
                    }
                }
            }
            }.offset(y:150)
        }
    }
}


//struct fontModifier : ViewModifier {
//    func body(content: Content) -> some View {
//        content
//        .font(.system(size: 25))
//        .bold()
//        .foregroundColor(.gray)
//    }
//
//}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(mosque: Mosque(place: "مشرف", name: "المشعان", people: ["الكندري", "العفاسي"])).environment(\.colorScheme, .dark)
    }
}
