//
//  ProfileView.swift
//  estilos
//
//  Created by Miguel Gómez Díaz on 24/04/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Image("profile_background")
                .resizable()
                .scaledToFill()
                .blur(radius: 10)
                .ignoresSafeArea()
                
        }
        VStack(spacing: 20){
            Image("profile_pic")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke( Color.white,lineWidth: 5))
                .shadow(radius: 10)
                .padding()
            Text("Miguel Gómez")
                .font(.title)
                .foregroundColor(.purple   )
            Text("miguel@gmail.com")
                .font(.subheadline)
                .foregroundColor(.purple)
            Button(action: {
                
            }, label: {
                Text("Log out")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .cornerRadius(10)
                    .padding(.horizontal)
            })
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
