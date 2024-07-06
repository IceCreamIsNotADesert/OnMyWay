//
//  map.swift
//  On my way!
//
//  Created by Dhanush on [Unknown].
//



import SwiftUI

struct Map: View {
    @Binding var homeAddress: String
    @State private var showingAlertMap = false
    
    var body: some View {
        VStack {
            Button() {
                if homeAddress.isEmpty {
                    showingAlertMap = true
                } else {
                    openMapsAppWithDirections(start: "Current Location", end: homeAddress)
                }
            } label:{
                Image(systemName: "map.fill")
                    .font(.system(size: 150))
            }
            .alert("It seems like you have not entered in your information. Please try again when you have updated your Information Page!", isPresented: $showingAlertMap) {
                Button("OK") {}
            }
            Text("Tap the icon above to get directions back home.")
        }
    }
    
    func openMapsAppWithDirections(start: String, end: String) {
        guard let encodedStart = start.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed),
              let encodedEnd = end.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            return
        }
        
        let url = URL(string: "http://maps.apple.com/?saddr=\(encodedStart)&daddr=\(encodedEnd)&dirflg=d")!
        
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
