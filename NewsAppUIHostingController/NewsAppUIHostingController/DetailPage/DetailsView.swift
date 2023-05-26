//
//  Details.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import SwiftUI
import Kingfisher
struct DetailsView: View {
    var news : News?
    var body: some View {
        VStack(spacing:30) {
            KFImage(URL(string: news!.urlToImage))
                .resizable()
                .scaledToFit()
            
            Text(news!.title)
                .multilineTextAlignment(.center)
                .fontWeight(.bold)
                .lineLimit(4)
            
            Text(news!.description)
                .multilineTextAlignment(.center)
            
            HStack{
                Spacer()
                Text("Author : \(news!.author)")
                    .fontWeight(.bold)
            }
            
        }.padding(.horizontal)
    }
}


