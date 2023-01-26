//
//  ContentView.swift
//  SUI
//
//  Created by Тигран Левонян on 18.06.2022.
//

import SwiftUI

struct ContentView: View {

    @State var isFirstAlertShown = false
    @State var isSecondAlertShown = false
    
    var body: some View {
        showAlert
    }

    private var showAlert: some View {
        VStack {
            Button {
                isFirstAlertShown = true
            } label: {
                Text("Пример Alert")
            }
            .alert(isPresented: $isFirstAlertShown) {
                Alert(title: Text("Загрузка"),
                      message: Text("Вы уверены?"),
                      primaryButton: .destructive(Text("Да"), action: {
                    print("test")
                }),
                      secondaryButton: .cancel())
            }
            Divider()
            Button {
                isSecondAlertShown = true
            } label: {
                Text("Загрузить данные")
            }
            .actionSheet(isPresented: $isSecondAlertShown, content: {
                ActionSheet(title: Text("Загрузка"),
                            message: Text("Вы хотите загрузить фото?"),
                            buttons: [.destructive(Text("Загрузить"),
                            action: {
                            print("Пошла загрузка")
                }), .cancel()])
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
