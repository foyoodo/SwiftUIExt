//
//  CustomStyle.swift
//  SwiftUIExt
//
//  Created by Xianhe Meng on 2024/11/12.
//  Copyright © 2024 foyoodo. All rights reserved.
//

import SwiftUI

public protocol CustomStyle: ViewModifier {

}

extension View {
    public func customStyle<S: CustomStyle>(_ style: S) -> some View {
        self.modifier(style)
    }
}
