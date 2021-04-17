//
//  VideoList.swift
//  SwiftUIFirst
//
//  Created by Adsum MAC 1 on 17/04/21.
//

import SwiftUI

struct VideoList: View {
    var body: some View {
        HStack(alignment: .center){
            Image("img2")
                .resizable()
                .frame(width: 80, height: 80, alignment: .center)
                .cornerRadius(10)
            
            VStack(alignment:.leading) {
                
                Text("This Is First Row")
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                Text("This lineis for long discription about this video...")
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }.padding(10)
    }
}

struct VideoList_Previews: PreviewProvider {
    static var previews: some View {
        VideoList()
    }
}
