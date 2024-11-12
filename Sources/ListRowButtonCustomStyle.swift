//
//  ListRowButtonCustomStyle.swift
//  SwiftUIExt
//
//  Created by Xianhe Meng on 2024/11/12.
//  Copyright © 2024 foyoodo. All rights reserved.
//

import SwiftUI

private struct ListRowButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.secondary)

            configuration.label
                .foregroundStyle(.primary)
                .fontWeight(.semibold)

            if configuration.isPressed {
                Color.black.opacity(0.2)
            }
        }
    }
}

public struct ListRowButtonCustomStyle: CustomStyle {
    public func body(content: Content) -> some View {
        content
            .buttonStyle(ListRowButtonStyle())
            .listRowInsets(.zero)
    }
}

extension CustomStyle where Self == ListRowButtonCustomStyle {
    public static var listRowButton: ListRowButtonCustomStyle { .init() }
}

extension ForegroundCustomStyle where Base == ListRowButtonCustomStyle {
    public static func listRowButton(_ primary: S1, _ secondary: S2) -> ForegroundCustomStyle<ListRowButtonCustomStyle, S1, S2> where S1: ShapeStyle, S2: ShapeStyle {
        ForegroundCustomStyle(.listRowButton, primary: primary, secondary: secondary)
    }
}
