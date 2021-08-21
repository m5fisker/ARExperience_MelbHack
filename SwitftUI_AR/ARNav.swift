//
//  AR-Nav.swift
//  SwitftUI_AR
//
//  Created by Kumar Soorya on 22/08/2021.
//



import SwiftUI

// MARK: - NavigationIndicator
struct NavigationIndicator: UIViewControllerRepresentable {
    typealias UIViewControllerType = ARView
    func makeUIViewController(context: Context) -> ARView {
        return ARView()
    }
    func updateUIViewController(_ uiViewController:
                                    NavigationIndicator.UIViewControllerType, context:
                                        UIViewControllerRepresentableContext<NavigationIndicator>) { }
}

struct ARNav: View {
    @State var page = "ARView"
    @State private var selection: Int? = nil
    @State private var option = 1
    var body: some View {
        NavigationView()
        {
            ZStack{
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
                }
                NavigationLink(
                    //Need to change this for different modules page
                    destination: Correct(),
                    tag: 3,
                    selection: self.$selection
                )
                {
                    Text("")
                }
                NavigationLink(
                    //Need to change this for different modules page
                    destination: Incorrect(),
                    tag: 4,
                    selection: self.$selection
                )
                {
                    Text("")
                }
                VStack {
                    
                    Image("Logo-1")
                        .offset(x: -100, y: -10)
                    HStack{
                        Button(action: {
                            self.selection = 2
                        }, label: {
                            Image("Group_10")
                        })
                        
                        Text("PHY20005")
                            .font(Font.custom("Poppins-Regular",size:28))
                            .foregroundColor(.white)
                        
                    }.position(x: 110, y: 0)
                    Image("Question")
                        .offset(x:0, y:20)
                    if page == "ARView" {
                        ZStack {
                            NavigationIndicator().frame(height: 600)
                            VStack{
                                Spacer()
                                    .frame(height:350)
                                HStack{
                                    Button("A. 0.89s") {
                                        self.selection = 3
                                    }.padding()
                                    .background(RoundedRectangle(cornerRadius: 10)
                                                    .foregroundColor(Color.white).opacity(0.7))
                                    Button("B. 1.29s") {
                                        self.selection = 4
                                    }.padding()
                                    .background(RoundedRectangle(cornerRadius: 10)
                                                    .foregroundColor(Color.white).opacity(0.7))
                                    Button("C. 1.08s") {
                                        self.selection = 4
                                    }.padding()
                                    .background(RoundedRectangle(cornerRadius: 10)
                                                    .foregroundColor(Color.white).opacity(0.7))
                                }
                            }
                            
                             
                        }
                    }
                }
            }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct ArNav_Previews: PreviewProvider {
    static var previews: some View {
        ARNav()
    }
}
