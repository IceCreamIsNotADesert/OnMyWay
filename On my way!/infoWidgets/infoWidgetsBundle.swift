//
//  infoWidgetsBundle.swift
//  infoWidgets
//
//  Created by Dhanush  on 24/5/24.
//

import WidgetKit
import SwiftUI

@main
struct infoWidgetsBundle: WidgetBundle {
    var body: some Widget {
        PhoneNumberWidget()
        NameWidget()
        HomeAddressWidget()
    }
}

#Preview(as: .accessoryRectangular) {
    PhoneNumberWidget()
} timeline: {
    PhoneWidgetSimpleEntry(date: .now)
}

#Preview(as: .accessoryRectangular) {
    NameWidget()
} timeline: {
    NameWidgetSimpleEntry(date: .now)
}

#Preview(as: .accessoryRectangular) {
    HomeAddressWidget()
} timeline: {
    HomeAddressWidgetSimpleEntry(date: .now)
}
