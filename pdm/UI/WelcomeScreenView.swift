//
//  WelcomeScreenView.swift
//  pdm
//
//  Created by saif Ms on 27/11/2023.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image(
                        uiImage: #imageLiteral(resourceName: "logo_main")
                            
                    )
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200,height: 200)
                    Spacer()
                    
                    NavigationLink(
                        destination: SignUpView()
                    ){
                        PrimaryButton(title: "Get Started")}
                 
                    
                    NavigationLink(
                        destination: SignInView(),
                        label: {
                            Text("Sign In")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color("PrimaryColor"))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                .padding(.vertical)
                        })
                   	
                    
                    HStack {
                        Text("Need any help ? ")
                        Text("Contact us")
                            .foregroundColor(Color("PrimaryColor"))
                    }
                }
                .padding()
                
            }
        }
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50)
    }
}
