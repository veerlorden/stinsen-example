//
//  PopToRootStinsenSwiftUIApp.swift
//  PopToRootStinsenSwiftUI
//
//  Created by Вадим Буркин on 19.10.2022.
//

import SwiftUI
import Stinsen

@main
struct PopToRootStinsenSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationViewCoordinator(
                MainCoordinator()
            )
            .view()
        }
    }
}
