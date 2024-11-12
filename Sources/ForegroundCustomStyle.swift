//
//  ForegroundCustomStyle.swift
//  SwiftUIExt
//
//  Created by Xianhe Meng on 2024/11/12.
//  Copyright © 2024 foyoodo. All rights reserved.
//

import SwiftUI

public struct ForegroundCustomStyle<Base: CustomStyle, S1, S2>: CustomStyle where S1: ShapeStyle, S2: ShapeStyle {
    let base: Base
    let primary: S1
    let secondary: S2

    public init(_ base: Base, primary: S1, secondary: S2) {
        self.base = base
        self.primary = primary
        self.secondary = secondary
    }

    public func body(content: Content) -> some View {
        content
            .customStyle(base)
            .foregroundStyle(primary, secondary)
    }
}

extension View {
    public func customStyle<Base, S1, S2>(_ style: ForegroundCustomStyle<Base, S1, S2>) -> some View {
        self.modifier(style)
    }
}
