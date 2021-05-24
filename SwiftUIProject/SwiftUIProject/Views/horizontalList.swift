//
//  horizontalList.swift
//  SwiftUIProject
//
//  Created by Adsum MAC 1 on 22/05/21.
//

import SwiftUI

struct horizontalList: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView(content: {
            ZStack {
                Color.black.ignoresSafeArea()
              
                ScrollView(.vertical, showsIndicators: false, content: {
                    HStack{
                        Button(action: {
                            print("Home")
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "house.fill")
                        })
                        .padding(15)
                        Spacer()
                        
                    }
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing:50){
                                ForEach(0..<listOfData.count){ i in
                                    VStack(spacing:10){
                                        Image("3")
                                            .resizable()
                                            .scaledToFill()
                                            .cornerRadius(10)
                                        Text(listOfData[i].code)
                                            .bold()
                                            .foregroundColor(.red)
                                            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                                        Text(listOfData[i].name)
                                            .italic()
                                            .foregroundColor(.red)
                                            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                                    }
                                    .frame(width: (UIScreen.main.bounds.height-50)/3, height: (UIScreen.main.bounds.height-50)/3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                }
                            }
                            .padding()
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing:50){
                                ForEach(0..<listOfData.count){ i in
                                    VStack(spacing:10){
                                        Image("7")
                                            .resizable()
                                            .scaledToFill()
                                            .cornerRadius(10)
                                        Text(listOfData[i].code)
                                            .bold()
                                            .foregroundColor(.red)
                                            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                                        Text(listOfData[i].name)
                                            .italic()
                                            .foregroundColor(.red)
                                            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                                    }
                                    .frame(width: (UIScreen.main.bounds.height-50)/3, height: (UIScreen.main.bounds.height-50)/3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                }
                            }
                            .padding()
                        }
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing:50){
                                ForEach(0..<listOfData.count){ i in
                                    VStack(spacing:10){
                                        Image("5")
                                            .resizable()
                                            .scaledToFill()
                                            .cornerRadius(10)
                                        Text(listOfData[i].code)
                                            .bold()
                                            .foregroundColor(.red)
                                            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                                        Text(listOfData[i].name)
                                            .italic()
                                            .foregroundColor(.red)
                                            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                                    }
                                    .frame(width: (UIScreen.main.bounds.height-50)/3, height: (UIScreen.main.bounds.height-50)/3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                }
                            }
                            .padding()
                        }
                    }
                })
               
            }
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Button(action: {
                print("Home")
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "house.fill")
            })
            .foregroundColor(Color.white)
            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
            )
        })
        .navigationBarHidden(true)
    }
}
struct horizontalList_Previews: PreviewProvider {
    static var previews: some View {
        horizontalList()
    }
}
