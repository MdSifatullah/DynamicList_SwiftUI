//
//  ContentView.swift
//  DynamicList_SwiftUI
//
//  Created by Md Sifat on 1/15/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import SwiftUI

struct User: Identifiable{
    var id : Int
    let userName, message : String
}

struct ContentView: View {
    
    let users: [User] = [
        .init(id: 0 , userName: "Tiger", message: "Tiger"),
        .init(id: 1 , userName: "Lion", message: "monkey"),
        .init(id: 2 , userName: "Monkey", message: "lion")
    ]
    var body: some View {
        NavigationView {
            List (users){
  
                Image($0.message)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                  Text($0.userName)
                
            }.navigationBarTitle(Text("Dynamic Lists"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
