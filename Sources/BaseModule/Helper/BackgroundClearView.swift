//
//  BackgroundClearView.swift
//  realstate
//
//  Created by Erfan mac mini on 11/18/24.
//

import SwiftUI

public struct BackgroundClearView: UIViewRepresentable {
    public func makeUIView(context: Context) -> UIView {
        let view = UIView()
        DispatchQueue.main.async {
            view.superview?.superview?.backgroundColor = .clear
        }
        return view
    }
    
    public init() {}
    public func updateUIView(_ uiView: UIView, context: Context) {}
}
