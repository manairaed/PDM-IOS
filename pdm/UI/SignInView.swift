//
//  SignInView.swift
//  pdm
//
//  Created by saif Ms on 27/11/2023.
//

import SwiftUI

struct SignInView: View {
    @State private var email : String = ""
    @State private var password : String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    VStack{
                        Text("Sign in now")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom,30)
                        
                        SocialLoginButon(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Sign in with google")).foregroundColor(Color("PrimaryColor"))
                        SocialLoginButon(image: Image(uiImage: #imageLiteral(resourceName: "apple")), text: Text("Sign in with apple")).padding(.vertical)
                        
                        Text("or use your email address")
                        
                        TextField("Your email",text:$email)
                            .font (.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.1), radius: 60, x: 0.0,y: 16)
                            .padding(.vertical)
                            .autocapitalization(.none)
                
                        SecureField("Your password",text:$password)
                            .font (.title3)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(50.0)
                            .shadow(color: Color.black.opacity(0.1), radius: 60, x: 0.0,y: 10)
                            .padding(.vertical)
                        
                        PrimaryButton(
                            title: "Sign in"
                        )/*{
                            print ("Email: (email) , password:(password)")
                        }*/
                        
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    Text("Read our terms & Conditions.").foregroundColor(Color("PrimaryColor"))
                    Spacer()
                }
                .padding()
            }
            .navigationBarBackButtonHidden(false)
            
            .toolbar{
                ToolbarItem( placement: .navigationBarLeading ){
                    
                }
            }
            
            
         
        }
       
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct SocialLoginButon : View{
    var image : Image
    var text : Text
    
    var body : some View{
        HStack{
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50.0)
        .shadow(color: Color.black.opacity(0.08), radius: 60,x: 0.0, y:16)
    }
    
}
