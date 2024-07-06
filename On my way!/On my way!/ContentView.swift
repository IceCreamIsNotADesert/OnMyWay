//
//  ContentView.swift
//  On my way!
//
//  Created by Group 3  on 4/5/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("phoneNum", store: UserDefaults(suiteName: "group.infoForPhone")) private var phoneNum = ""
    @AppStorage("homeAddress", store: UserDefaults(suiteName: "group.infoForPostalCode")) private var homeAddress = ""
    @AppStorage("name", store: UserDefaults(suiteName: "group.infoForName")) private var name = ""
    
    var body: some View {
        TabView {
            Phone(phoneNum: $phoneNum)
                .tabItem {
                    Label("Phone", systemImage: "phone.circle.fill")
                }
            Settings(phoneNum: $phoneNum, name: $name, homeAddress: $homeAddress)
                .tabItem {
                    Label("Information", systemImage: "info.circle.fill")
                }
            Map(homeAddress: $homeAddress)
                .tabItem{
                    Label("Map", systemImage: "map.circle.fill")
                }
    
        }
    }
}
