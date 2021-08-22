//
//  login.swift
//  SwitftUI_AR
//
//  Created by Kumar Soorya on 21/08/2021.
//

import Foundation
import SwiftUI




struct login: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var selection: Int? = nil
    
    var body: some View {
        NavigationView(){
            
            ZStack
            {
                Color.init(UIColor(red: 0.114, green: 0.114, blue: 0.114, alpha: 1))
                    .ignoresSafeArea()
                NavigationLink(
                    destination:Home(),
                    tag: 1,
                    selection: self.$selection
                    
                )
                {
                    Text("")
                }//.navigationBarTitle("")
                //.navigationBarHidden(true)
                //.navigationBarBackButtonHidden(true)
                NavigationLink(
                    //Need to change this to sign up page
                    destination: Home(),
                    tag: 2,
                    selection: self.$selection
                )
                {
                    Text("")
                }//.navigationBarTitle("")
                //.navigationBarHidden(true)
                //.navigationBarBackButtonHidden(true)
                VStack(spacing: 10)
                {
                    Image("Logo-1")
                        .offset(x: -100, y: -60.0)
                        
                    
                    Spacer()
                    VStack{
                        Text("Login")
                            .font(Font.custom("Poppins-Regular",size:40))
                            .foregroundColor(.white)
                            .offset(x: -110, y:-95)
                        Text("Please sign in to continue")
                            .font(Font.custom("Poppins-Regular",size:20))
                            .foregroundColor(.white)
                            .offset(x: -35, y: -95)
                    }
                    Spacer()
                        .frame(height:20)
                    VStack{
                        Text("Email")
                            .font(Font.custom("Poppins-Regular",size:20))
                            .foregroundColor(.white)
                            .offset(x: -130, y:-80)
                        TextField(
                            "user123@gmail.com",
                            text: $username)
                            .frame(width: 300, height: 32)
                            .disableAutocorrection(true)
                            .font(Font.custom("Poppins-Regular",size:16))
                            .foregroundColor(.white)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.white, lineWidth: 2))
                            .offset(x: 0, y: -80)
                    }
                    VStack{
                        Text("Password")
                            .font(Font.custom("Poppins-Regular",size:20))
                            .foregroundColor(.white)
                            .offset(x: -100, y: -50)
                        SecureField(
                            "*******",
                            text: $password)
                            .frame(width: 300, height: 32)
                            .disableAutocorrection(true)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .font(Font.custom("Poppins-Regular",size:16))
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.white, lineWidth: 2))
                            .offset(x: 0, y: -40)
                    }
                    Spacer()
                    Button(
                        action: {
                            self.selection = 1
                        }, label: {
                        Text("LOGIN")
                            .font(Font.custom("Poppins-Regular",size:20))
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                            
                        })
                    
                    Spacer()
                        .frame(height:70)
                    HStack{
                        Text("Don't have an account?")
                            .font(Font.custom("Poppins-Regular",size:15))
                            .foregroundColor(.white)
                        
                        Button(action: {
                            self.selection = 2
                        }, label: {
                            Text("Sign-up")
                                .font(Font.custom("Poppins-Regular",size:15))
                                .foregroundColor(.white)
                                .bold()
                        })
                    }
                    
                }
            }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct login_Preview: PreviewProvider {
    static var previews: some View {
        login()
    }
}

