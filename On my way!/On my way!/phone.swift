//
//  phone.swift
//  home.
//
//  Created by T Krobot on 4/5/24.
//

import SwiftUI

struct Phone: View {
    @Binding var phoneNum: String
    @State private var showingAlertPhone = false
    @State private var noPhoneNumberAlertShowing = false
    
    var body: some View {
        VStack {
            Button(action: {
                if phoneNum == "" {
                   noPhoneNumberAlertShowing = true
                }
                else if let phoneURL = URL(string: "tel://" + phoneNum), UIApplication.shared.canOpenURL(phoneURL) {
                    UIApplication.shared.open(phoneURL)
                } else {
                    showingAlertPhone = true
                }
            }) {
                Image(systemName: "phone.connection.fill")
                    .font(.system(size: 150))
            }
            .alert("Whoops! Can't call on this device.", isPresented: $showingAlertPhone) {
                Button("OK") {}
            }
            .alert("It seems like you have not entered in your information. Please try again when you have updated your Information Page!", isPresented: $noPhoneNumberAlertShowing) {
                Button("OK") {}
            }
            Text("Tap the icon above to call your caretaker.")
        }
    }
}
