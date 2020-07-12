//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Abdelrahman Mohamed on 12.07.2020.
//  Copyright © 2020 Abdelrahman Mohamed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {

            Button(action: {
                // What to perform
                print("Hello World tapped!")
            }) {
                // How the button looks like
                Text("Hello World")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.purple, lineWidth: 5)
                    )
            }

            Button(action: {
                print("Delete button tapped!")
            }) {
                Image(systemName: "trash")
            }
            .buttonStyle(ClockwiseStyle(firstColor: .accentColor, secondColor: .pink))

            HStack {
                Button(action: {
                    print("Delete button tapped!")
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .font(.largeTitle)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                }

                Button(action: {
                    print("Speed button tapped!")
                }) {
                    HStack {
                        Image(systemName: "bolt")
                            .font(.largeTitle)
                        Text("Speed")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .shadow(radius: 5.0)
                }
                .padding()
            }

            Button(action: {
                print("Wind button tapped!")
            }) {
                HStack {
                    Image(systemName: "wind")
                        .font(.largeTitle)
                    Text("Wind")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color.blue]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
                .padding(.horizontal, 20)
                .shadow(radius: 5.0)
            }

            VStack {

                Button(action: {
                    print("Share tapped!")
                }) {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                        Text("Share")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientBackgroundStyle(firstColor: Color("DarkGreen"), secondColor: Color.yellow))

                Button(action: {
                    print("Edit tapped!")
                }) {
                    HStack {
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientBackgroundStyle(firstColor: Color("DarkGreen"), secondColor: Color("LightGreen")))

                Button(action: {
                    print("Delete tapped!")
                }) {
                    HStack {
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientBackgroundStyle(firstColor: Color("DarkGreen"), secondColor: Color.red))

            }

            Spacer()

            Button(action: {
                print("Plus button tapped!")
            }) {
                Image(systemName: "plus")
            }
            .buttonStyle(ClockwiseStyle(firstColor: Color.accentColor, secondColor: Color.orange))
        }


    }
}

struct GradientBackgroundStyle: ButtonStyle {

    let firstColor: Color
    let secondColor: Color

    func makeBody(configuration: Configuration) -> some View {

        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9: 1.0)
    }
}

struct ClockwiseStyle: ButtonStyle {

    let firstColor: Color
    let secondColor: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [firstColor, secondColor]), startPoint: .leading, endPoint: .trailing))
            .clipShape(Circle())
            .font(.largeTitle)
            .foregroundColor(.white)
            .rotationEffect(configuration.isPressed ? Angle(degrees: 135): Angle(degrees: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
