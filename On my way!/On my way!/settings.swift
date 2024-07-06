//
//  settings.swift
//  On my way!
//
//  Created by Dhanush on 11/5/24.
//

import SwiftUI

struct Settings: View {
    @Binding var phoneNum: String
    @Binding var name: String
    @Binding var homeAddress: String
    @State private var showingHelp = false
    @FocusState private var isNameFocused: Bool
    @FocusState private var isPhoneFocused: Bool
    @FocusState private var isPostalCodeFocused: Bool
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Spacer()
                Button {
                    showingHelp.toggle()
                } label: {
                    Image(systemName: "questionmark.circle.fill")
                        .font(.system(size: 30))
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing, 16)
                }
                .sheet(isPresented: $showingHelp, content: {
                    HelpView()
                    
                    Button {
                        showingHelp.toggle()
                    } label: {
                        Text("Continue to app")
                            .font(.system(.callout, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .clipped()
                            .foregroundStyle(.white)
                            .background(.blue)
                            .mask { RoundedRectangle(cornerRadius: 16, style: .continuous) }
                    }
                    .padding(.bottom, 60)
                    .padding(.horizontal, 25)
                })
            }
                List {
                    
                    
                    Section(header: Text("Name of Patient: ")) {
                        HStack{
                            TextField("Name", text: $name)
                                .defaultAppStorage(UserDefaults(suiteName: "group.infoForName")!)
                                .focused($isNameFocused)
                                .onTapGesture {
                                    isNameFocused = true
                                }
                            if isNameFocused {
                                Button{
                                    isNameFocused = false
                                } label: {
                                    Image(systemName: "checkmark.square.fill")
                                }
                            }
                        }
                    }
                    Section(header: Text("Caregiver's Number")) {
                        HStack{
                            TextField("Caregiver's Phone Number", text: $phoneNum)
                                .focused($isPhoneFocused)
                                .keyboardType(.numberPad)
                                .defaultAppStorage(UserDefaults(suiteName: "group.infoForPhone")!)
                                .onTapGesture {
                                    isPhoneFocused = true
                                }
                            if isPhoneFocused == true {
                                Button{
                                    isPhoneFocused = false
                                } label: {
                                    Image(systemName: "checkmark.square.fill")
                                }
                            }
                        }
                    }
                    Section(header: Text("Postal Code (Enter Sxxxxxx): ")) {
                        HStack{
                            TextField("Home Postal Code", text: $homeAddress)
                                .focused($isPostalCodeFocused)
                                .defaultAppStorage(UserDefaults(suiteName: "group.infoForPostalCode")!)
                                .onTapGesture {
                                    isPostalCodeFocused = true
                                }
                            if isPostalCodeFocused == true {
                                Button{
                                    isPostalCodeFocused = false
                                } label: {
                                    Image(systemName: "checkmark.square.fill")
                                }
                            }
                        }
                    }
                }
                .listRowSeparator(.hidden)
            }
        }
        
            .background(Color(UIColor.secondarySystemBackground))
        
    }
}
