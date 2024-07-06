//
//  infoWidgets.swift
//  infoWidgets
//
//  Created by Dhanush  on 24/5/24.
//

import WidgetKit
import SwiftUI

// Widget to display caretaker's phone number
struct PhoneWidgetSimpleEntry: TimelineEntry {
    let date: Date
}

struct PhoneWidgetProvider: TimelineProvider {
    func placeholder(in context: Context) -> PhoneWidgetSimpleEntry {
        PhoneWidgetSimpleEntry(date: Date())
    }
    
    func getSnapshot(in context: Context, completion: @escaping (PhoneWidgetSimpleEntry) -> ()) {
        let entry = PhoneWidgetSimpleEntry(date: Date())
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let currentDate = Date()
        let entry = PhoneWidgetSimpleEntry(date: currentDate)
        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }
}

struct PhoneWidgetEntryView: View {
    var entry: PhoneWidgetProvider.Entry
    
    @AppStorage("phoneNum", store: UserDefaults(suiteName: "group.infoForPhone")) private var phoneNum = ""
    
    var body: some View {
        VStack {
            if phoneNum.isEmpty {
                Text("Please update your information page in On My Way! to view this widget.")
                    .bold()
                    .font(.system(size: 12.15))
                    .containerBackground(for: .widget) {}
            } else {
                VStack{
                    Text("Call caretaker at")
                    Text(phoneNum)
                        .bold()
                        .font(.headline)
                        .containerBackground(for: .widget) {}
                }
            }
        }
    }
}

struct PhoneNumberWidget: Widget {
    let kind: String = "PhoneNumberWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: PhoneWidgetProvider()) { entry in
            PhoneWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Phone Number")
        .description("Displays the caregiver's phone number.")
        .supportedFamilies([.accessoryRectangular])
    }
}

// Widget to display user's name
struct NameWidgetSimpleEntry: TimelineEntry {
    let date: Date
}

struct NameWidgetProvider: TimelineProvider {
    func placeholder(in context: Context) -> NameWidgetSimpleEntry {
        NameWidgetSimpleEntry(date: Date())
    }
    
    func getSnapshot(in context: Context, completion: @escaping (NameWidgetSimpleEntry) -> ()) {
        let entry = NameWidgetSimpleEntry(date: Date())
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let currentDate = Date()
        let entry = NameWidgetSimpleEntry(date: currentDate)
        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }
}

struct NameWidgetEntryView: View {
    var entry: NameWidgetProvider.Entry
    
    @AppStorage("name", store: UserDefaults(suiteName: "group.infoForName")) private var name = ""
    
    var body: some View {
        VStack {
            if name.isEmpty {
                Text("Please update your information page in On My Way! to view this widget.")
                    .bold()
                    .font(.system(size: 12.15))
                    .containerBackground(for: .widget) {}
            } else {
                VStack{
                    Text("Name")
                    Text(name)
                        .bold()
                        .font(.headline)
                        .containerBackground(for: .widget) {}
                        .privacySensitive(false)
                }
            }
        }
    }
}

struct NameWidget: Widget {
    let kind: String = "NameWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: NameWidgetProvider()) { entry in
            NameWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Name")
        .description("Displays the patient's name.")
        .supportedFamilies([.accessoryRectangular, .accessoryInline])
    }
}

// Widget to display user's home address
struct HomeAddressWidgetSimpleEntry: TimelineEntry {
    let date: Date
}

struct HomeAddressProvider: TimelineProvider {
    func placeholder(in context: Context) -> HomeAddressWidgetSimpleEntry {
        HomeAddressWidgetSimpleEntry(date: Date())
    }
    
    func getSnapshot(in context: Context, completion: @escaping (HomeAddressWidgetSimpleEntry) -> ()) {
        let entry = HomeAddressWidgetSimpleEntry(date: Date())
        completion(entry)
    }
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let currentDate = Date()
        let entry = HomeAddressWidgetSimpleEntry(date: currentDate)
        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }
}

struct HomeAddressWidgetEntryView: View {
    var entry: HomeAddressProvider.Entry
    
    @AppStorage("homeAddress", store: UserDefaults(suiteName: "group.infoForPostalCode")) private var homeAddress = ""
    var body: some View {
        VStack {
            if homeAddress.isEmpty {
                Text("Please update your information page in On My Way! to view this widget.")
                    .bold()
                    .font(.system(size: 12.15))
                    .containerBackground(for: .widget) {}
            } else {
                    Text("Home Postal Code")
                    Text(homeAddress)
                        .bold()
                        .font(.headline)
                        .privacySensitive()
                        .containerBackground(for: .widget) {}
            }
        }
    }
}

struct HomeAddressWidget: Widget {
    let kind: String = "HomeAddressWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: HomeAddressProvider()) { entry in
            HomeAddressWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Home Postal Code")
        .description("Displays the caregiver's home postal code.")
        .supportedFamilies([.accessoryRectangular])
    }
}

