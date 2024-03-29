//
//  WaitingView.swift
//  wwdc24
//
//  Created by Natalia Schueda on 17/02/24.
//

import SwiftUI

struct WaitingView: View {
    
    @State var isAnimating: Bool = false
    @State var isCooked = false
    
    
    var body: some View {
        ZStack {
            Image("cozinha")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image("folhinha")
                        .scaleEffect(0.5)
                        .frame(width: 120, height: 220)
                        .offset(CGSize(width: -150, height: -150))
                    Image("barco")
                        .scaleEffect(0.5)
                        .frame(width: 140, height: 225)
                        .offset(CGSize(width: 250, height: -100))
                }
                HStack {
                    Image("sacoFuba")
                        .scaleEffect(0.5)
                        .frame(width: 135, height: 165)
                        .offset(CGSize(width: -20, height: -60))
                    Image("retrato")
                        .scaleEffect(0.5)
                        .frame(width: 140, height: 50)
                        .offset(CGSize(width: 350, height: -10))
                }
            }.frame(maxWidth: .infinity)
            
            Rectangle()
                .foregroundStyle(.black.opacity(0.4))
                .ignoresSafeArea()
            
            HStack {
                Image("vovo")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .offset(CGSize(width: 170, height: 200))
                    .wiggle(true, angle: .degrees(30), 0.3)
                
                ZStack {
                    Image("fala")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(0.9)
                        .ignoresSafeArea()

                        Text("You’ve just made your first ever bolo de fubá!\nNow we just wait for it to bake.\n\nOh, and I’m making us coffee. It goes really well with this cake.\n\nWe’re having a classic **bolo de fubá com café!**")
                        .font(.custom("Arvo", size: 24))
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(Color("marrom"))
                        .frame(width: 600, height: 275, alignment: .topLeading)
                        .offset(x: 30, y: 20)
                        .rotationEffect(Angle(degrees: -2))
                }.offset(x: 00, y: -250)
            }
            
            if isCooked == true {
                VStack(alignment: .trailing) {
                    NavigationLink {
                        FinalView()
                    } label: {
                        Image(systemName: "chevron.right")
                            .foregroundStyle(Color("marrom"))
                            .bold()
                            .font(.title)
                            .frame(width: 75, height: 75)
                            .background(Color("begezinho"))
                    }.frame(alignment: .bottom)
                    
                }
                .padding(50)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 5, y: 5)
                .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                .frame(maxHeight: .infinity)
                .offset(CGSize(width: 0, height: 300))
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                isCooked = true
            }
        }
        .background(Color("amarelinho"))
    }
}

#Preview {
    WaitingView()
}
