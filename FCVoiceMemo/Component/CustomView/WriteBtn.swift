//
//  WriteBtn.swift
//  FCVoiceMemo
//
//  Created by joe on 7/17/26.
//

import SwiftUI

// MARK: - 1️⃣
public struct WriteBtnViewModifier: ViewModifier {
    let action: () -> Void
    
    public init(action: @escaping () -> Void) {
        self.action = action
    }
    
    public func body(content: Content) -> some View {
        ZStack {
            content
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button(action: action, label: { Image(.writeBtn) })
                }
            }
            .padding(.trailing, 20)
            .padding(.bottom, 50)
        }
    }
}

// MARK: - 2️⃣

// MARK: - 3️⃣
