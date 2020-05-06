//
//  ContentView.swift
//  Assignment3
//
//  Created by Alyaa AlOstad on 5/6/20.
//  Copyright © 2020 Alyaa. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            List(mosques){ mosque in
                NavigationLink (destination: DetailView(mosque: mosque)){
                    MosqueRow(mosque: mosque)
                }
            }.navigationBarTitle("مساجد الكويت").foregroundColor(.black)
        }.accentColor(.white)
    }
}


struct MosqueRow: View {
    var mosque: Mosque
    var body: some View {
        HStack(alignment: .center){
            Image(mosque.name)
                .resizable()
                .scaledToFill()
                .frame(width:100, height:100)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(mosque.name)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text(mosque.place)
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
                    .padding()
                
            }
        }.padding(.vertical)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView() .environment(\.colorScheme, .dark)
        }
    }
}
