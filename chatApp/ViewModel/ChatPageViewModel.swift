//
//  ChatPageViewModel.swift
//  chatApp
//
//  Created by yoshiki-t on 2019/02/25.
//  Copyright © 2019 yoshiki-t. All rights reserved.
//

import Foundation
import ReactiveSwift
import ReactiveCocoa
import Result

final class ChatPageViewModel {
    
    let textObserver: Disposable?
    
    init(signal: Signal<String?, NoError>) {
        
        //  <Observe Signal>
        textObserver = signal.observeValues { text in
            
            guard let text = text else {
                return
            }
            
            print(text)
        }
        
    }
}
