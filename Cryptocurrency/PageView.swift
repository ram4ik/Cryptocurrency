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
    
    @State var currentPage: Int = 0
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0)}
    }
    
    var body: some View {
        VStack {
            PageViewController(controllers: viewControllers, currentPage: $currentPage)
            Text("\(currentPage)")
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(cards.map { OnboardingCardView(card: $0)})
    }
}
