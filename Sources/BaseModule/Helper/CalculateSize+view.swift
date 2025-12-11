//
//  CalculateSize+view.swift
//  CommonModule
//
//  Created by Erfan mac mini on 1/6/25.
//

import SwiftUI
public extension View {
    @ViewBuilder
    func sizeChangePrefenece(callback: @escaping (CGSize) -> Void) -> some View {
        self
            .overlay {
                GeometryReader { geo in
                    Color.clear.preference(key: SizeKey.self, value: geo.size)
                }
            }.onPreferenceChange(SizeKey.self) { value in
                callback(value)
            }
    }
}

struct SizeKey: PreferenceKey {
    static let defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}
