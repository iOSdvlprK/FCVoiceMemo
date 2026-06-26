//
//  Path.swift
//  FCVoiceMemo
//
//  Created by joe on 6/26/26.
//

import Foundation
import Combine

class PathModel: ObservableObject {
    @Published var paths: [PathType]
    
    init(paths: [PathType] = []) {
        self.paths = paths
    }
}
