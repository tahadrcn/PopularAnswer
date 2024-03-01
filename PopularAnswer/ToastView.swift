//
//  ToastView.swift
//  PopularAnswer
//
//  Created by Taha Dirican on 1.03.2024.
//

import SwiftUI

class AppState: ObservableObject {
    @Published var isShowingToast = false
}

struct ToastView: View {
    var text: String
    @Binding var isShowing:Bool
        
        var body: some View {
            VStack {
                Text(text)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white)
                    .cornerRadius(10)
                    .opacity(isShowing ? 1 : 0)
                    .animation(.easeInOut(duration: 0.1))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                            withAnimation {
                                isShowing = false
                            }
                        }
                    }
            }
        }
}


