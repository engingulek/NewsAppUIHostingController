//
//  SwiftUIView.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import SwiftUI
import Kingfisher
struct NewsCell: View {
    let article : News?
    var body: some View {
        HStack(spacing:30) {
            KFImage.url(URL(string: article!.urlToImage))
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 150)
            
     
                Text(article!.title)
                    .font(.callout)
                    .fontWeight(.bold)
                    .lineLimit(3)
                
                    .multilineTextAlignment(.center)
            
        }.padding(.horizontal,5)
    }
}


