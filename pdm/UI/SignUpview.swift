//
//  SignUpView.swift
//  pdm
//
//  Created by saif Ms on 27/11/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var email : String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Image(
                        uiImage: #imageLiteral(resourceName: "logo_main")
                            
                    )
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150,height: 150)
                    Text("Sign up")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom,30)
                    Spacer()
                    TextField("First Name", text:$email)
                        .font (.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.1), radius: 60, x: 0.0,y: 16)
                        .padding(.vertical)
                        .autocapitalization(.none)
                    TextField("Last Name", text:$email)
                        .font (.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.1), radius: 60, x: 0.0,y: 16)
                        .padding(.vertical)
                        .autocapitalization(.none)
                    TextField("Your email", text:$email)
                        .font (.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.1), radius: 60, x: 0.0,y: 16)
                        .padding(.vertical)
                        .autocapitalization(.none)
                    SecureField("Your password", text:$email)
                        .font (.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50.0)
                        .shadow(color: Color.black.opacity(0.1), radius: 60, x: 0.0,y: 16)
                        .padding(.vertical)
                        .autocapitalization(.none)
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    Spacer()
                    
             
                }
                .padding()
                
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
