//
//  OnboardingCardView.swift
//  Cryptocurrency
//
//  Created by ramil on 18.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct OnboardingCardView: View {
    var card: OnboardingCard
    var body: some View {
        VStack {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300, alignment: .center)
            Text(card.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding([.top, .bottom])
            Text(card.discription)
                .lineLimit(5)
                .multilineTextAlignment(.center)
                .font(.body)
                .foregroundColor(.secondary)
                .padding()
        }.padding()
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(card: cards[0])
    }
}
