//
//  ContentView.swift
//  Swift-Package-Manager
//
//  Created by Pan, Xiaoheng on 2/5/20.
//  Copyright © 2020 Pan, Xiaoheng. All rights reserved.
//

import SwiftUI
import Utilities

struct ContentView: View {
    let testing = TestString()
    var body: some View {
        Text(testing.helloWorld)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
