//
//  ContentView.swift
//  SUI
//
//  Created by Тигран Левонян on 18.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isOnToggle = false
    @State var isBalanceShown = false
    @State var isBalanceChanged = false
    @State var isTransactionChanged = false
    @State var balanceValue = 0
    @State var informationAboutBalance = ""


    var body: some View {
        VStack {
            ZStack {
                HStack {
                    VStack {
                        Button {
                            isBalanceShown = true
                        } label: {
                            Text("Пополнить")
                        }
                        .actionSheet(isPresented: $isBalanceShown, content: {
                            ActionSheet(title: Text("Пополнить баланс"),
                                        message: Text("Вы хотите загрузить фото?"),
                                        buttons: [.destructive(Text("Пополнить баланс"),
                                        action: {
                                isBalanceChanged = true
                                informationAboutBalance = "Баланс пополнен успешно"
                                balanceValue += 500
                            }), .cancel()])
                        })

                        Spacer().frame(height: 30)
                        Button {
                            isTransactionChanged = true
                        } label: {
                            Text("Открыть счёт")
                        }
                        .actionSheet(isPresented: $isTransactionChanged, content: {
                            ActionSheet(title: Text("Информация о переводе"),
                                        message: Text("Вы уверены что хотите выполнить перевод?"),
                                        buttons: [.destructive(Text("Перевести средства"),
                                        action: {
                                isBalanceChanged = true
                                informationAboutBalance = "Перевод выполнен успешно"
                                balanceValue -= 250
                            }), .cancel()])
                        })
                        Spacer().frame(height: 30)
                        Text("Профиль")
                        Spacer().frame(height: 30)
                    }
                    Spacer()
                }
                Spacer()
                RoundedRectangle(cornerRadius: 10).fill(Color.yellow).offset(x: isOnToggle ? 100 : 0)
                VStack {
                    Text(informationAboutBalance).offset(x: isOnToggle ? 100 : 0)
                    Spacer().frame(height: 30)
                    Text("Текущий баланс \(balanceValue) рублей").offset(x: isOnToggle ? 100 : 0)
                }
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
