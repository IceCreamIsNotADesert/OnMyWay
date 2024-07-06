//
//  ContentView.swift
//  ui
//
//  Created by T Krobot on 25/5/24.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        VStack {
            Text("Help Page")
                .font(.system(.largeTitle, weight: .bold))
                .frame(width: 240)
                .clipped()
                .multilineTextAlignment(.center)
                .padding(.top, 82)
                .padding(.bottom, 52)
            VStack(spacing: 28) {
                HStack {
                    Image(systemName: "square.and.arrow.down")
                        .symbolRenderingMode(.monochrome)
                        .foregroundStyle(.blue)
                        .font(.system(.title, weight: .regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        // Title
                        Text("Add Widgets")
                            .font(.system(.footnote, weight: .semibold))
                        // Description
                        Text("Forget? Don't worry! Our widgets provide glanceable information right on the lockscreen!")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Image(systemName: "iphone.and.arrow.forward")
                        .symbolRenderingMode(.monochrome)
                        .foregroundStyle(.blue)
                        .font(.system(.title, weight: .regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        // Title
                        Text("Phone and Map")
                            .font(.system(.footnote, weight: .semibold))
                        // Description
                        Text("Forget your caretaker's phone number or home address? Don't worry as our app instantly directs you to the phone and maps app with all your information filled out!")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Image(systemName: "gearshape")
                        .symbolRenderingMode(.monochrome)
                        .foregroundStyle(.blue)
                        .font(.system(.title, weight: .regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        // Title
                        Text("Settings Page")
                            .font(.system(.footnote, weight: .semibold))
                        // Description
                        Text("All about you!")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .clipped()
        .padding(.top, 53)
        .padding(.bottom, 0)
        .padding(.horizontal, 29)
        .overlay(alignment: .top) {
            Group {
                
            }
        }
    }
}
#Preview {
    HelpView()
}
