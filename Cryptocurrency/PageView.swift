//
//  PageView.swift
//  Cryptocurrency
//
//  Created by ramil on 18.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    
    @Binding var isOnboaringDone: Bool
    @State var currentPage: Int = 0
    
    init(_ views: [Page], isOnboaringDone: Binding<Bool>) {
        self.viewControllers = views.map { UIHostingController(rootView: $0)}
        self._isOnboaringDone = isOnboaringDone
    }
    
    var body: some View {
        VStack {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            Spacer()
            Button(action: {
                if self.currentPage < self.viewControllers.count - 1 {
                    self.currentPage += 1
                } else {
                    self.isOnboaringDone.toggle()
                }
            }) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 250, height: 50)
                    .foregroundColor(Color(red: 85/255, green: 202/255, blue: 203/255))
                    .overlay(
                        Text(self.currentPage < self.viewControllers.count - 1 ? "Next" : "Got it")
                            .foregroundColor(.white))
            }
            PageControl(numberOfPages: viewControllers.count, currentPage: $currentPage)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(cards.map { OnboardingCardView(card: $0)}, isOnboaringDone: .constant(false))
    }
}
