//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Adsum MAC 1 on 20/05/21.
//

import SwiftUI

 var listOfData = [JsonFromExample]()

struct ContentView: View {
    
    @State private var jsonData = Data()
    let bundlePath = Bundle.main.path(forResource: "Example",
                                      ofType: "json")

    var body: some View {
        NavigationView(content: {
            VStack{
                VStack(alignment: .center, spacing: 20,content: {
                    Spacer()
                    Image("swift")
                        .resizable()
                        .frame(width: 120, height: 120, alignment: .center)
                    Spacer()
                    NavigationLink(
                        destination: menuList(),
                        label: {
                            Text("Menu List")
                                .foregroundColor(.white)
                                .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                        })
                    NavigationLink(
                        destination: PickerView(),
                        label: {
                            Text("Picker List")
                                .foregroundColor(.white)
                                .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                        })
                    NavigationLink(
                        destination: horizontalList(),
                        label: {
                            Text("Horizontal List")
                                .foregroundColor(.white)
                                .shadow(color: .red, radius: 5, x: 0.0, y: 0.0)
                        })
                })
                .padding(60)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            }
            .background(Color.primary)
            .ignoresSafeArea()
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.automatic)
        }).onAppear(perform: {
            do{
                jsonData = try String(contentsOfFile: bundlePath!).data(using: .utf8)!
                listOfData = try JSONDecoder().decode(Welcome.self, from: jsonData)
                print(listOfData)
            }catch{
                print("Not Convert")
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

