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
    @State var word:String = ""
    @State var point:Int = 0
    var Cevaplar : [String] = ["meatball","sausage","fish","cheese","doner"]

    var body: some View {
        ZStack{
            Color.indigo
                .ignoresSafeArea()
            VStack{
                Text("Point")
                    .font(.title)
                    .foregroundStyle(.ultraThickMaterial)
                Text(String(point))
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .frame(width: screenwidth)
                
                Spacer().frame(height: screenheight*0.04)
                
                Text("Question")
                    .font(.title)
                    .foregroundStyle(.ultraThickMaterial)
                Divider()
                    .background(.white)
                Spacer().frame(height: screenheight*0.1)
                Text("........ in bread")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                
                Spacer().frame(height: screenheight*0.15)
                
                
                TextField("Write answer", text: $word)
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .frame(width: screenwidth*0.6)
                
                Button("Check",action: {
                    if word.lowercased() == Cevaplar[0].lowercased(){
                        point += 50
                        word = ""
                    }
                })
                    .font(.title2)
                    .frame(width: screenwidth,height: screenheight*0.05)
                    .foregroundColor(.indigo)
                    .background(Color.white.opacity(0.8))
                    .padding()
                Spacer().frame(height: screenheight*0.1)

            }
        }
    }
}

#Preview {
    ChooseView()
}
