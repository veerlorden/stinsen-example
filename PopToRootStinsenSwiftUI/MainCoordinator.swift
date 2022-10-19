//
//  MainCoordinator.swift
//  PopToRootStinsenSwiftUI
//
//  Created by Вадим Буркин on 19.10.2022.
//

import Foundation
import Stinsen
import SwiftUI

final class MainCoordinator: NavigationCoordinatable {
    
    var stack: Stinsen.NavigationStack<MainCoordinator> = .init(initial: \.start)
    
    @Root var start = makeStart
    @Route(.push) var secondView = makeSecondView
    @Route(.push) var thirdView = makeThirdView
    
    func makeStart() -> some View {
        FirstView()
    }
    
    func makeSecondView() -> some View {
        SecondView()
    }
    
    func makeThirdView() -> some View {
        ThirdView()
    }
    
}
