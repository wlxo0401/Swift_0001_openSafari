//
//  ContentView.swift
//  MyFirstTime
//
//  Created by JITAEKIM on 2021/02/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var showDetail = false
    var body: some View {
        Button(action: {
            self.showDetail.toggle()
            if let url = URL(string: "https://gall.dcinside.com/board/lists?id=programming") {
                UIApplication.shared.open(url)
            }
        }) {
            Text("DCINSIDE")
        }
        
        if showDetail{
            Text("잘가세요!!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
