//
//  ContentView.swift
//  SocialProfile
//
//  Created by Renato Oliveira Fraga on 12/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var billValue: String = ""
    
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(colors: [Color("grad_top"), Color("grad_bottom")], startPoint: .top, endPoint: .bottom)
                VStack {
                    Spacer(minLength: 50)
                    Image("table")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .padding(.vertical)
                    HStack {
                        Text("$")
                            .font(.title)
                        TextField("", text: $billValue)
                            .frame(width: 280, height: 40)
                            //.padding(10)
                            .background(RoundedRectangle(cornerRadius: 50).foregroundColor(.white))
                            .shadow(radius: 1.0, x: 1.0, y: 1.0)
                        //.padding()
                    }
                    //Spacer()
                    HStack(spacing: 50) {
                        Image(systemName: "person.3")
                            .font(.title3)
                            .frame(width: 50, height: 50)
                            .background(Color(.white))
                            .cornerRadius(50)
                            .shadow(radius: 1.0, x: 1.0, y: 1.0)
                        HStack(spacing: 15) {
                            Image(systemName: "plus")
                                 .font(.title3.bold())
                                 .frame(width: 30, height: 30)
                                 .background(Color(.white))
                                 .cornerRadius(50)
                                 .shadow(radius: 1.0, x: 1.0, y: 1.0)
                            Text("10")
                                .font(.title.bold())
                                .frame(width: 50, height: 50)
                                .background(Color(.white))
                                .cornerRadius(13)
                                .shadow(radius: 1.0, x: 1.0, y: 1.0)
                            
                            Image(systemName: "minus")
                                 .font(.title3.bold())
                                 .frame(width: 30, height: 30)
                                 .background(Color(.white))
                                 .cornerRadius(50)
                                 .shadow(radius: 1.0, x: 1.0, y: 1.0)
                        }
                        
                    }
                    .padding()
                
                }
                
            }
            .frame(height: 350)
            
            Spacer()
            VStack(spacing: 10) {
                Text("Per Person")
                    .font(.title2.bold())
                HStack {
                    Text("$")
                        .font(.title)
                    Text("")
                        .font(.largeTitle)
                        .frame(width: 280, height: 40)
                        .background(RoundedRectangle(cornerRadius: 50).foregroundColor(.white))
                        .shadow(radius: 1.0, x: 1.0, y: 1.0)
                }
            }
            
            Spacer()
            VStack(spacing: 10) {
                Text("Choose a tip")
                    .font(.title2.bold())
                HStack(spacing: 20) {
                    Text("0%")
                        .font(.title3.bold())
                        .frame(width: 50, height: 50)
                        .background(Color("selected"))
                        .cornerRadius(10)
                        .shadow(radius: 1.0, x: 1.0, y: 1.0)
                    Text("10%")
                        .font(.title3.bold())
                        .frame(width: 50, height: 50)
                        .background(Color(.white))
                        .cornerRadius(10)
                        .shadow(radius: 1.0, x: 1.0, y: 1.0)
                    Text("15%")
                        .font(.title3.bold())
                        .frame(width: 50, height: 50)
                        .background(Color(.white))
                        .cornerRadius(10)
                        .shadow(radius: 1.0, x: 1.0, y: 1.0)
                    Text("20%")
                        .font(.title3.bold())
                        .frame(width: 50, height: 50)
                        .background(Color(.white))
                        .cornerRadius(10)
                        .shadow(radius: 1.0, x: 1.0, y: 1.0)
                }
            }
            
            Spacer()
            VStack {
                Text("Total per Person")
                    .font(.title2.bold())
                HStack {
                    Text("$")
                        .font(.title)
                    Text("")
                        .font(.largeTitle)
                        .frame(width: 280, height: 40)
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
