//
//  ContentView.swift
//  SwitftUI_AR
//
//  Created by Kumar Soorya on 21/08/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive: Bool = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.init(UIColor(red: 0.114, green: 0.114, blue: 0.114, alpha: 1))
                    .ignoresSafeArea()
                NavigationLink(destination: login(), isActive: self.$isActive)
                {
                    Text("")
                }
                VStack
                {
                    Spacer()
                    Text("Welcome to")
                        .font(Font.custom("Poppins-Regular",size:40))
                        .foregroundColor(.white)
                    Spacer()
                        .frame( height: 20)
                    Image("Logo-1")
                    Spacer()
                    Button(action: {
                        self.isActive = true
                    }, label: {
                        Text("Sign-up")
                            .frame(width: 121, height: 30, alignment: .center)
                            .font(Font.custom("Poppins-Regular",size:15))
                            .padding()
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(10.0)
                            
                    })
                    Spacer()
                        .frame( height: 50)
                    
                }

            }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
