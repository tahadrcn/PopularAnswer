//
//  ContentView.swift
//  PopularAnswer
//
//  Created by Taha Dirican on 2.02.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
        ZStack{
            
            Color.indigo
                .ignoresSafeArea()
            
            VStack{
                Image("mainimage1").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:UIScreen.main.bounds.width*0.8,height: UIScreen.main.bounds.height*0.4,alignment: .topLeading)
                    .clipShape(.circle)
                Text("Welcome to Game")
                    .font(.title)
                    .bold()
                NavigationLink("Start",destination: ChooseView())
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.indigo)
                    .background(Color.white)
                Text("Plase tap to start button for continue")
                    .padding()
                }
                    
            
            
                
            }
        }
        
    }
}

#Preview {
    MainView()
}
