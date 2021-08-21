//
//  Modules.swift
//  SwitftUI_AR
//
//  Created by Kumar Soorya on 21/08/2021.
//

import Foundation
import SwiftUI




struct Modules: View {
   
    @State private var selection: Int? = nil
    
    var body: some View {
        NavigationView(){
            
            ZStack
            {
                
                Color.init(UIColor(red: 0.114, green: 0.114, blue: 0.114, alpha: 1))
                    .ignoresSafeArea()
                NavigationLink(
                    destination: ARNav(),
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
                Image("Group 15")
                    .offset(x: 0, y: 150.0)
                    
                VStack
                {
                    Image("Logo-1")
                        .offset(x: -100, y: -60.0)
                   
                    HStack{
                        Button(action: {
                            self.selection = 2
                        }, label: {
                            Image("Group_10")
                        })
                        
                        Text("ELEN20005")
                            .font(Font.custom("Poppins-Regular",size:28))
                            .foregroundColor(.white)
                            
                        
                    }.position(x: 110, y: -40)
                    Text("Foundations of physics experiments\nwith the AR model")
                        .font(Font.custom("Poppins-Regular",size:18))
                        .foregroundColor(.white)
                        .offset(x: 12, y: -530)
                    
                   
                }
                VStack{
                Spacer()
                    .frame(height:40)
                Button(action: {
                    self.selection = 1
                }, label: {
                    Image("Pendulum")
                })
                Button(action: {
                    self.selection = 1
                }, label: {
                    Image("Group 17")
                })
                }
            }
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct Modules_Preview: PreviewProvider {
    static var previews: some View {
        Modules()
    }
}

