//
//  UIScreen+Extension.swift
//  FCVoiceMemo
//
//  Created by joe on 6/25/26.
//

import SwiftUI

extension UIScreen {
    static var current: UIScreen? {
        UIApplication.shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first?.windowScene?.screen
    }
}
