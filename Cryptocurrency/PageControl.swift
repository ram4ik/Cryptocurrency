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
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages
        control.pageIndicatorTintColor = UIColor.systemGray
        control.currentPageIndicatorTintColor = UIColor(red: 85/255, green: 202/255, blue: 203/255, alpha: 1)
        control.frame(forAlignmentRect: CGRect(origin: .zero, size: CGSize(width: 30, height: 30)))
        
        control.addTarget(context.coordinator, action: #selector(Coordinator.updateCurrentPage(sender:)), for: .valueChanged)
        
        return control
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
    
    class Coordinator: NSObject {
        
        var control: PageControl
        
        init(_ control: PageControl) {
            self.control = control
        }
        
        @objc func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
