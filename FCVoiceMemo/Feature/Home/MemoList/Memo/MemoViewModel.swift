//
//  MemoViewModel.swift
//  FCVoiceMemo
//
//  Created by joe on 7/2/26.
//

import Foundation
import Combine

class MemoViewModel: ObservableObject {
    @Published var memo: Memo
    
    init(memo: Memo) {
        self.memo = memo
    }
}
