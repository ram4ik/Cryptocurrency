//
//  PageControl.swift
//  Cryptocurrency
//
//  Created by ramil on 18.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct PageControl: UIViewRepresentable {
    
    var numberOfPages: Int
    
    @Binding var currentPage: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.pageIndicatorTintColor = UIColor.systemGray
        control.currentPageIndicatorTintColor = UIColor(red: 85/255, green: 202/255, blue: 203/255, alpha: 1)
        control.frame(forAlignmentRect: CGRect(origin: .zero, size: CGSize(width: 30, height: 30)))
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}
