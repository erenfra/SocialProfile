//
//  ContentView.swift
//  SocialProfile
//
//  Created by Renato Oliveira Fraga on 12/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 10
    @State private var isZeroPercentPressed = true
    @State private var isTenPercentPressed = false
    @State private var isFifteenPercentPressed = false
    @State private var isTwentyPercentPressed = false
    @FocusState private var amountIsFocused: Bool
    
    
    var perPerson: Double {
        return checkAmount / Double(numberOfPeople)
    }
    
    var totalPerPerson: Double {
        if isZeroPercentPressed {
            return perPerson
        } else if isTenPercentPressed {
            return perPerson * 1.1
        } else if isFifteenPercentPressed {
            return perPerson * 1.15
        } else {
            return perPerson * 1.2
        }
        
    }
    
    
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(colors: [Color("grad_top"), Color("grad_bottom")], startPoint: .top, endPoint: .bottom)
                    
                VStack {
                    Spacer()
                    Image("table")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .padding(.vertical)
                    HStack {
                      
                        TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                            .font(.title2)
                            .keyboardType(.decimalPad)
                            .focused($amountIsFocused)
                            .frame(width: 220, height: 20)
                            .padding(10)
                            .background(RoundedRectangle(cornerRadius: 50).foregroundColor(.white))
                            .shadow(radius: 1.0, x: 1.0, y: 1.0)

                    }

                    HStack(spacing: 50) {
                        Image(systemName: "person.3")
                            .font(.headline)
                            .frame(width: 50, height: 50)
                            .background(Color(.white))
                            .cornerRadius(50)
                            .shadow(radius: 1.0, x: 1.0, y: 1.0)
                        HStack(spacing: 15) {
                            Button(action: {
                                if numberOfPeople >= 99 {
                                    numberOfPeople = 99
                                } else {
                                    numberOfPeople += 1
                                }
                            }, label: {
                                Image(systemName: "plus")
                                     .font(.title3.bold())
                                     .foregroundColor(.black)
                                     .frame(width: 30, height: 30)
                                     .background(Color(.white))
                                     .cornerRadius(50)
                                     .shadow(radius: 1.0, x: 1.0, y: 1.0)
                            })
                            
                            Text(String(numberOfPeople))
                                .font(.title.bold())
                                .frame(width: 50, height: 50)
                                .background(Color(.white))
                                .cornerRadius(13)
                                .shadow(radius: 1.0, x: 1.0, y: 1.0)
                            
                            Button(action: {
                                if numberOfPeople == 1 {
                                    numberOfPeople = 1
                                } else {
                                    numberOfPeople -= 1
                                }
                            }, label: {
                                Image(systemName: "minus")
                                     .font(.title3.bold())
                                     .foregroundColor(.black)
                                     .frame(width: 30, height: 30)
                                     .background(Color(.white))
                                     .cornerRadius(50)
                                     .shadow(radius: 1.0, x: 1.0, y: 1.0)
                            })
                            
                        }
                        
                    }
                    .padding()
                
                }
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .keyboard, content: {
                    Button(action: {
                        amountIsFocused = false
                    }, label: {
                        Text("Done")
                            
                    })
                })
            })
            .frame(height: 370)
            .cornerRadius(50)
            
            Spacer()
            VStack(spacing: 10) {
                Text("Per Person")
                    .font(.title2.bold())
                HStack {

                    Text(perPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .font(.title2)
                        .frame(width: 200, height: 40)
                        .background(RoundedRectangle(cornerRadius: 50).foregroundColor(.white))
                        .shadow(radius: 1.0, x: 1.0, y: 1.0)
                }
            }
            
            Spacer()
            VStack(spacing: 10) {
                Text("Choose a tip")
                    .font(.title2.bold())
                HStack(spacing: 20) {
                    Button(action: {
                        isZeroPercentPressed = true
                        isTenPercentPressed = false
                        isFifteenPercentPressed = false
                        isTwentyPercentPressed = false
                        
                    }, label: {
                        Text("0%")
                            .font(.title3)
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50)
                            .background(Color(isZeroPercentPressed ? "selected" : "notSelected"))
                            .cornerRadius(10)
                            .shadow(radius: 1.0, x: 1.0, y: 1.0)
                    })
                    
                    Button(action: {
                        isZeroPercentPressed = false
                        isTenPercentPressed = true
                        isFifteenPercentPressed = false
                        isTwentyPercentPressed = false
                    }, label: {
                        Text("10%")
                            .font(.title3)
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50)
                            .background(Color(isTenPercentPressed ? "selected" : "notSelected"))
                            .cornerRadius(10)
                            .shadow(radius: 1.0, x: 1.0, y: 1.0)
                    })
                    
                    Button(action: {
                        isZeroPercentPressed = false
                        isTenPercentPressed = false
                        isFifteenPercentPressed = true
                        isTwentyPercentPressed = false
                    }, label: {
                        Text("15%")
                            .font(.title3)
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50)
                            .background(Color(isFifteenPercentPressed ? "selected" : "notSelected"))
                            .cornerRadius(10)
                            .shadow(radius: 1.0, x: 1.0, y: 1.0)
                    })
                    Button(action: {
                        isZeroPercentPressed = false
                        isTenPercentPressed = false
                        isFifteenPercentPressed = false
                        isTwentyPercentPressed = true
                    }, label: {
                        Text("20%")
                            .font(.title3)
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50)
                            .background(Color(isTwentyPercentPressed ? "selected" : "notSelected"))
                            .cornerRadius(10)
                            .shadow(radius: 1.0, x: 1.0, y: 1.0)
                    })
                    
                }
            }
            
            Spacer()
            VStack {
                Text("Total per Person")
                    .font(.title2.bold())
                HStack {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .font(.title)
                        .frame(width: 200, height: 40)
                        .background(RoundedRectangle(cornerRadius: 50).foregroundColor(.white))
                    .shadow(radius: 1.0, x: 1.0, y: 1.0)
                }
            }
            
            Spacer()
        }
        .background(Color("background"))
        .ignoresSafeArea(.container, edges: .top)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
