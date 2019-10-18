//
//  ContentView.swift
//  Cryptocurrency
//
//  Created by ramil on 18.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

var cards: [OnboardingCard] = [
    OnboardingCard(image: "keep", title: "Keep", discription: "Accept cryptocurrency, keep them here or sell them to others"),
    OnboardingCard(image: "buy&sell", title: "Buy&Sell", discription: "Buy and sell cryptocurrency directly from the app"),
    OnboardingCard(image: "exchange", title: "Exchange", discription: "Echange your crypto to other digital assets or real money")

]


struct ContentView: View {
    
    @State var isOnboardingDone = false
    
    var body: some View {
        Group {
            if isOnboardingDone {
                LoginView()
            } else {
                PageView(cards.map { OnboardingCardView(card: $0) }, isOnboaringDone: $isOnboardingDone)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
