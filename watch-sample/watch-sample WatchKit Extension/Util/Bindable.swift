//
//  Bindable.swift
//  watch-sample WatchKit Extension
//
//  Created by Vitor Neves on 22/04/20.
//  Copyright © 2020 Vitor Neves. All rights reserved.
//

import Foundation

class Bindable<T> {

    typealias Listener = ((T) -> Void)

    var listener: Listener?

    var value: T {
        didSet {
            listener?(value)
        }
    }

    init(_ value: T) {
        self.value = value
    }

    func bind(_ listener: Listener?) {
        self.listener = listener
    }

    func bindAndFire(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }

}
