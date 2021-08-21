//
//  Correct.swift
//  SwitftUI_AR
//
//  Created by Kumar Soorya on 22/08/2021.
//

import Foundation
import SwiftUI




struct Correct: View {
   
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
                   
                    HStack{
                        
                        Text("PHY20005")
                            .font(Font.custom("Poppins-Regular",size:28))
                            .foregroundColor(.white)
                            
                        
                    }.position(x: 90, y: -40)
                    Text("Congragulations\n Correct Answer")
                        .font(Font.custom("Poppins-Regular",size:28))
                        .foregroundColor(.white)
                        .offset(x: 0, y: -180)
                    Image("Group 19")
                        .offset(x:0, y: -180)
                    
                    Button(action: {
                        self.selection = 2
                    }, label: {
                        Text("Return to Modules")
                            .font(Font.custom("Poppins-Regular",size:18))
                            .foregroundColor(.black)
                            
                            
                        
                    }).frame(width: 200, height: 60).background(Color.white).cornerRadius(16)
                    Spacer()
                        .frame(height:100)
                }
                
            }
            
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct Correct_Preview: PreviewProvider {
    static var previews: some View {
        Correct()
    }
}


