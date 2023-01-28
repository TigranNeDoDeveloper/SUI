//
//  ContentView.swift
//  SUI
//
//  Created by Тигран Левонян on 18.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State var section = 0
    @State var isAirplaneModeOn = false
    @State var isVPNOn = false

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        HStack {
                            Image(systemName: "person.circle.fill").resizable().frame(width: 50, height: 50)

                            Picker(selection: $section, label: Text("")) {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("Alexander")
                                            .font(.headline)
                                            .foregroundColor(.black)
                                        Text("Apple ID, iCloud, контент и покупки")
                                            .font(.custom("", fixedSize: 12))
                                            .foregroundColor(.black)
                                    }
                                    Spacer()
                                }
                            }.pickerStyle(.navigationLink)
                        }
                        HStack {
                            Text("Предложения Apple ID").frame(width: 200, height: 30, alignment: .leading)

                            Picker(selection: $section, label: Text("")) {
                                Text("3")
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    .background(.red)
                                    .cornerRadius(12.5)
                            }.pickerStyle(.navigationLink)
                        }
                    }

                    Section {
                        HStack {
                            Text("iOS 16.2: уже доступно").frame(width: 200, height: 30, alignment: .leading)

                            Picker(selection: $section, label: Text("")) {
                                Text("1")
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                                    .background(.red)
                                    .cornerRadius(12.5)
                            }.pickerStyle(.navigationLink)
                        }
                    }

                    Section {
                        Toggle(isOn: $isAirplaneModeOn) {
                            HStack {
                                Image(systemName: "airplane")
                                    .frame(width: 30, height: 30)
                                    .background(.orange)
                                    .foregroundColor(.white)
                                    .cornerRadius(5)
                                Text("Авиарежим").foregroundColor(Color.black)
                            }
                        }

                        HStack {
                            Image(systemName: "wifi")
                                .frame(width: 30, height: 30)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                            Text("Wi-Fi").frame(width: 50, height: 30, alignment: .leading)

                            Picker(selection: $section, label: Text("")) {
                                Text("Не подключено")
                                    .frame(width: 150, height: 25)
                                    .foregroundColor(.gray)
                            }.pickerStyle(.navigationLink)
                        }

                        HStack {
                            Image("bluetooth").resizable().scaledToFit()
                                .frame(width: 30, height: 30)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                            Text("Bluetooth").frame(width: 125, height: 30, alignment: .leading)

                            Picker(selection: $section, label: Text("")) {
                                Text("Вкл.")
                                    .frame(width: 50, height: 30)
                                    .foregroundColor(.gray)
                            }.pickerStyle(.navigationLink)
                        }

                        HStack {
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .frame(width: 30, height: 30)
                                .background(.green)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                            Text("Сотовая связь").frame(width: 125, height: 30, alignment: .leading)

                            Picker(selection: $section, label: Text("")) {
                            }.pickerStyle(.navigationLink)
                        }

                        HStack {
                            Image(systemName: "personalhotspot")
                                .frame(width: 30, height: 30)
                                .background(.green)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                            Text("Режим модема").frame(width: 130, height: 30, alignment: .leading)

                            Picker(selection: $section, label: Text("")) {
                                Text("Выкл.")
                                    .frame(width: 50, height: 25)
                                    .foregroundColor(.gray)
                            }.pickerStyle(.navigationLink)
                        }

                        Toggle(isOn: $isVPNOn) {
                            HStack {
                                Image(systemName: "airtag.radiowaves.forward.fill")
                                    .frame(width: 30, height: 30)
                                    .background(.orange)
                                    .foregroundColor(.white)
                                    .cornerRadius(5)
                                Text("VPN").foregroundColor(Color.black)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
