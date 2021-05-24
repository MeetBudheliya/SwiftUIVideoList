//
//  PickerView.swift
//  SwiftUIProject
//
//  Created by Adsum MAC 1 on 22/05/21.
//

import SwiftUI

struct PickerView: View {
    @State private var txt = ""
    @State private var Selected = 0
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        ZStack {
            VStack(content: {
                Spacer(minLength: 10)
             
                Text("Know Country Code")
                    .bold()
                    .foregroundColor(.red)
                    .shadow(color: .red, radius: 10, x: 0, y: 0)
                Spacer(minLength: 10)
                
                Text("\(listOfData[Selected].code)")
                    .onAppear(perform: {
                        txt = listOfData[Selected].name
                    })
                    .onChange(of: "\(listOfData[Selected].code)", perform: { value in
                        print(value)
                        txt = listOfData[Selected].name
                    })
                    .frame(width: UIScreen.main.bounds.width-50, height: 40, alignment: .center)
                    .background(Color.black)
                    .cornerRadius(8)
                    .shadow(color: .red, radius: 10, x: 0, y: 0)
                    .foregroundColor(.red)
                Spacer(minLength: 10)
                TextField("Selected Row Here", text: $txt, onEditingChanged: { begin in
                    
                }, onCommit: {
                    print("Commit")
                })
                .frame(width: UIScreen.main.bounds.width-50, height: 40, alignment: .center)
                .background(Color.black)
                .cornerRadius(5)
                .shadow(color: .red, radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                
                Spacer(minLength: 10)
                Picker("Picker", selection: $Selected) {
                    ForEach(0..<listOfData.count) { i in
                            Text("\(listOfData[i].code) : \(listOfData[i].name)")
                                .bold()
                                .foregroundColor(.red)
                                .padding(.leading,10)
                                .padding(.trailing,10)
                    }
                }
                .background(Color.black)
                .shadow(color: .red, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                .padding(15)
            })
        }
        .background(Color.black)
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .navigationTitle("")
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
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}

