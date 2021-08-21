//
//  Home.swift
//  SwitftUI_AR
//
//  Created by Kumar Soorya on 21/08/2021.
//

import Foundation
import SwiftUI




struct Home: View {
    
    @State private var selection: Int? = nil
    
    var body: some View {
        NavigationView(){
            ZStack
            {
                Color.init(UIColor(red: 0.114, green: 0.114, blue: 0.114, alpha: 1))
                    .ignoresSafeArea()
                NavigationLink(
                    //Need to change this for different modules page
                    destination: Modules(),
                    tag: 2,
                    selection: self.$selection
                )
                {
                    Text("")
                }//.navigationBarTitle("")
                //.navigationBarHidden(true)
                //.navigationBarBackButtonHidden(true)
                VStack
                {
                    Image("Logo-1")
                        .offset(x: -100, y: -60.0)

                    Spacer()
                    VStack{
                    Text("Hi, Tommy")
                        .font(Font.custom("Poppins-Regular",size:40))
                        .foregroundColor(.white)
                        .offset(x: -60, y: -10.0)
                    Text("Welcome to your AR Lab")
                        .font(Font.custom("Poppins-Regular",size:20))
                        .foregroundColor(.white)
                        .offset(x: -40, y: -10.0)
                    }
                    Spacer()
                        .frame(height:50)
                    Text("MY COURSES")
                        .font(Font.custom("Poppins-Regular",size:24))
                        .foregroundColor(.white)
                        .offset(x: -80, y: 0)
                    VStack
                    {
                        ScrollView(.vertical)
                        {
                            VStack(spacing: 10)
                            {
                                Button(action: {
                                    self.selection = 2
                                }, label: {
                                    Image("Group 51")
                                })
                                Button(action: {
                                    self.selection = 2
                                }, label: {
                                    Image("Group_4bio")
                                })
                                Button(action: {
                                    self.selection = 2
                                }, label: {
                                    Image("Group_42")
                                })
                               
                            }
                            
                        }
                    }
                }
            }
            
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
    struct Home_preview: PreviewProvider {
        static var previews: some View {
            Home()
        }
    }
    
}
