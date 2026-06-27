//
//  CustomNavigationBar.swift
//  FCVoiceMemo
//
//  Created by joe on 6/27/26.
//

import SwiftUI

struct CustomNavigationBar: View {
    let isDisplayLeftBrn: Bool
    let isDisplayRightBtn: Bool
    let leftBtnAction: () -> Void
    let rightBtnAction: () -> Void
    let rightBtnType: NavigationBtnType
    
    init(isDisplayLeftBrn: Bool = true, isDisplayRightBtn: Bool = true, leftBtnAction: @escaping () -> Void = {}, rightBtnAction: @escaping () -> Void = {}, rightBtnType: NavigationBtnType = .edit) {
        self.isDisplayLeftBrn = isDisplayLeftBrn
        self.isDisplayRightBtn = isDisplayRightBtn
        self.leftBtnAction = leftBtnAction
        self.rightBtnAction = rightBtnAction
        self.rightBtnType = rightBtnType
    }
    
    var body: some View {
        HStack {
            if isDisplayLeftBrn {
                Button(action: leftBtnAction, label: {
                    Image(.leftArrow)
                })
            }
            
            Spacer()
            
            if isDisplayRightBtn {
                Button(action: rightBtnAction, label: {
                    if rightBtnType == .close {
                        Image(.close)
                    } else {
                        Text(rightBtnType.rawValue)
                            .foregroundStyle(.customBlack)
                    }
                })
            }
        }
        .padding(.horizontal, 20)
        .frame(height: 20)
    }
}

#Preview {
    CustomNavigationBar()
}
