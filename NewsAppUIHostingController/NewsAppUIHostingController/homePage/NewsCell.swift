//
//  SwiftUIView.swift
//  NewsAppUIHostingController
//
//  Created by engin gülek on 26.05.2023.
//

import SwiftUI

struct NewsCell: View {
    let article : Articles?
    var body: some View {
        HStack(spacing:30) {
            Image(systemName: "newspaper.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80)
            
            VStack(spacing: 10){
                Text("Tesla accused of ignoring customer complaints over autopilot safety")
                    .font(.callout)
                    .fontWeight(.bold)
                    .lineLimit(3)
                
                    .multilineTextAlignment(.center)
                Text("Drivers claim cars ‘too dangerous for the road’ in documents leaked by whistleblowers")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
            }
        }.padding(.horizontal,5)
    }
}


