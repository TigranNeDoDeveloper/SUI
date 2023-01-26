//
//  ContentView.swift
//  SUI
//
//  Created by Тигран Левонян on 18.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isOnToggle = false


    var body: some View {
        VStack {
            ZStack {
                HStack {
                    VStack {
                        Text("Кошелёк")
                        Text("Профиль")
                        Spacer().frame(height: 500)
                    }
                    Spacer()
                }
                Spacer()
                RoundedRectangle(cornerRadius: 10).fill(Color.yellow).offset(x: isOnToggle ? 100 : 0)
                Text("Текущий баланс 1500 рублей").offset(x: isOnToggle ? 100 : 0)
            }
            Toggle(isOn: $isOnToggle, label: {
                Text("Показать настройки")
            }).padding()
        }.animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.3), value: isOnToggle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
