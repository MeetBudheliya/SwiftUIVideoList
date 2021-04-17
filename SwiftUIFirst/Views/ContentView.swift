//
//  ContentView.swift
//  SwiftUIFirst
//
//  Created by Adsum MAC 1 on 17/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack {
                CardImageView()
                VideoList()
                VideoList()
                VideoList()
                VideoList()
                VideoList()
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


