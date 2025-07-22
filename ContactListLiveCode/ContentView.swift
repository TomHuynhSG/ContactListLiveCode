//
//  ContentView.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("rmit-blue")
                .ignoresSafeArea()
            VStack{
                CircleView()
                Text("Tom Huynh")
                    .font(.system(size: 40, weight: .bold, design: .serif))
                    .foregroundStyle(.white)
                
                Image("rmit-logo-white")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 225)
                
                Group {
                    InfoView(text: "0123456789", imageName: "phone.fill")
       
                    InfoView(text: "tom.huynh@rmit.edu.vn", imageName: "envelope.fill")
                }
                .padding()
                
      
            }
        }
        
    }
}

#Preview {
    ContentView()
}
