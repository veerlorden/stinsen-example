//
//  ContentView.swift
//  PopToRootStinsenSwiftUI
//
//  Created by Вадим Буркин on 19.10.2022.
//

import Stinsen
import SwiftUI

struct FirstView: View {
    
    @EnvironmentObject var router: MainCoordinator.Router
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("First View!")
                .padding(.bottom)
            Button {
                router.route(to: \.secondView)
            } label: {
                Text("Next screen")
            }
        }
        .navigationBarHidden(true)
        .padding()
    }
}

struct SecondView: View {
    
    @EnvironmentObject var router: MainCoordinator.Router
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Second View!")
                .padding(.bottom)
            Button {
                router.route(to: \.thirdView)
            } label: {
                Text("Next screen")
            }
        }
        .navigationBarHidden(true)
        .padding()
    }
}

struct ThirdView: View {
    
    @EnvironmentObject var router: MainCoordinator.Router
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Third View!")
                .padding(.bottom)
            Button {
                router.popToRoot()
            } label: {
                Text("Back to First View")
            }
        }
        .navigationBarHidden(true)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FirstView()
            SecondView()
            ThirdView()
        }
    }
}
