//
//  menuList.swift
//  SwiftUIProject
//
//  Created by Adsum MAC 1 on 21/05/21.
//

import SwiftUI

struct menuList: View {
    
  
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        
        NavigationView{
            ZStack {
                VStack {
                    List{
                        ForEach(0..<listOfData.count){ i in
    
                            HStack(alignment: .center, spacing: 10, content: {
    
                                Text(listOfData[i].code)
                                    .bold()
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
                                Text(":")
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
                                Text(listOfData[i].name)
                                    .frame(width: UIScreen.main.bounds.width-100, height: .none, alignment: .leading)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 5, x: 0.0, y: 0.0)
                            })
                            .frame(width: UIScreen.main.bounds.width, height: 30, alignment: .leading)
                        }
                        .listRowBackground(Color.red)
                    }
                    .padding(.leading,-10)
                    .padding(.trailing,-10)
                    .padding(.top,10)
                    .ignoresSafeArea()
                }
            }
            .navigationBarHidden(false)
            .navigationTitle("Menu List")
            .navigationBarItems(leading: Button(action: {
                                                    print("Home")
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "house.fill")
            })
            .foregroundColor(Color.white)
            .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
            )
        }
        .navigationBarHidden(true)
//        .navigationTitle("Menu List")
//        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .leading)
//        .ignoresSafeArea()
//        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct menuList_Previews: PreviewProvider {
    static var previews: some View {
        menuList()
    }
}
// MARK: - WelcomeElement
struct JsonFromExample: Codable {
    var name, code: String
}

typealias Welcome = [JsonFromExample]
