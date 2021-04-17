//
//  CardImageView.swift
//  SwiftUIFirst
//
//  Created by Adsum MAC 1 on 17/04/21.
//

import SwiftUI

struct CardImageView: View {
    var body: some View {
        Image("img1")
            .resizable()
            .aspectRatio(CGSize(width: 1.5, height: 1), contentMode: .fit)
            .cornerRadius(15)
            .padding(5)
            .shadow(radius: 10)
    }
}

struct CardImageView_Previews: PreviewProvider {
    static var previews: some View {
        CardImageView()
    }
}
