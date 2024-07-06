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
                .padding(.bottom, 52)
            VStack(spacing: 28) {
                HStack {
                    Image(systemName: "plus.square.fill.on.square.fill")
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
                        Text("Forgot? Don't worry! Our widgets provide glanceable information right on the lockscreen.")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Image(systemName: "house.fill")
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
                        Text("Get home quick. No memorising phone numbers and addresses.")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Image(systemName: "gearshape.fill")
                        .symbolRenderingMode(.monochrome)
                        .foregroundStyle(.blue)
                        .font(.system(.title, weight: .regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        // Title
                        Text("Information Page")
                            .font(.system(.footnote, weight: .semibold))
                        // Description
                        Text("All about you.")
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
