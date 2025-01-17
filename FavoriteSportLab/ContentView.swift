//
//  ContentView.swift
//  FavoriteSportLab
//
//  Created by Wesley Keetch on 1/6/25.
//

import SwiftUI

struct ContentView: View {

  @State private var selectedSport: String? = nil
  @State private var buttonPressed: Bool = false

  var body: some View {
    VStack {
      Spacer()
      Text("Favorite Sport")
        .font(.largeTitle)
        .fontWeight(.bold)
      Spacer()
      HStack {
        Button {
          selectedSport = "Golf"
          print("Golf button pressed")
        } label: {
          Text("Golf")
            .foregroundStyle(Color.white)
        }
        .frame(width: 100, height: 100)
        .background(selectedSport == "Golf" ? Color.green: Color.green.opacity(0.5))
        .cornerRadius(10)
        Button {
          selectedSport = "Football"
          print("Football button pressed")
        } label: {
          Text("Football")
            .foregroundStyle(Color.white)
        }
        .frame(width: 100, height: 100)
        .background(selectedSport == "Football" ? Color.green: Color.green.opacity(0.5))
        .cornerRadius(10)
      }
      HStack {
        Button {
          selectedSport = "Soccer"
          print("Soccer button pressed")
        } label: {
          Text("Soccer")
            .foregroundStyle(Color.white)
        }
        .frame(width: 100, height: 100)
        .background(selectedSport == "Soccer" ? Color.green: Color.green.opacity(0.5))
        .cornerRadius(10)
        Button {
          selectedSport = "Baseball"
          print("Baseball button pressed")
        } label: {
          Text("Baseball")
            .foregroundStyle(Color.white)
        }
        .frame(width: 100, height: 100)
        .background(selectedSport == "Baseball" ? Color.green: Color.green.opacity(0.5))
        .cornerRadius(10)
      }
      Spacer()
      Button {
        print("Submit button pressed")
        buttonPressed = true
      } label: {
        Text("Submit")
          .frame(maxWidth: 250, maxHeight: 35)
      }
      .buttonStyle(.borderedProminent)
      Spacer()

      if buttonPressed {
        Text("You selected \(selectedSport ?? "None")")
      } else {
        Text("")
      }
      Spacer()
    }
    .padding()
  }
}

#Preview {
  ContentView()
}

// func sportsButton() -> some view { would be how to abstract some of this code into separate functions and clean it up
