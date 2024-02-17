//
//  game.swift
//  PopularAnswer
//
//  Created by Taha Dirican on 17.02.2024.
//

import SwiftUI

struct ChooseView: View {
    var screenheight = UIScreen.main.bounds.height
    var screenwidth = UIScreen.main.bounds.width

    var body: some View {
        ZStack{
            Color.indigo
                .ignoresSafeArea()
            VStack{
                Image("mainimage1").resizable()
                    .frame(width: screenwidth*0.6, height: screenheight*0.18)
                    .clipShape(Circle())
                NavigationLink("Choose",destination: MainView())
                    .font(.title2)
                    .frame(width: screenwidth,height: screenheight*0.05)
                    .foregroundColor(.indigo)
                    .background(Color.white)
                    .padding()
                Image("mainimage1").resizable()
                    .frame(width: screenwidth*0.6, height: screenheight*0.18)
                    .clipShape(Circle())
                NavigationLink("Choose",destination: MainView())
                    .font(.title2)
                    .frame(width: screenwidth,height: screenheight*0.05)
                    .foregroundColor(.indigo)
                    .background(Color.white)
                    .padding()
                Image("mainimage1").resizable()
                    .frame(width: screenwidth*0.6, height: screenheight*0.18)
                    .clipShape(Circle())
                NavigationLink("Choose",destination: MainView())
                    .font(.title2)
                    .frame(width: screenwidth,height: screenheight*0.05)
                    .foregroundColor(.indigo)
                    .background(Color.white)
                    .padding()

            }
        }
    }
}

#Preview {
    ChooseView()
}
