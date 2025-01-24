//
//  ContentView.swift
//  FavoriteSportLab
//
//  Created by Wesley Keetch on 1/6/25.
//

import SwiftUI

struct SportButton: View {
  let sport: String
  let isSelected: Bool
  let action: () -> Void
  
  var body: some View {
    Button {
      action()
    } label: {
      Text(sport)
        .foregroundStyle(Color.white)
    }
    .frame(width: 100, height: 100)
    .background(isSelected ? Color.green : Color.green.opacity(0.5))
    .cornerRadius(10)
  }
}

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
        SportButton(sport: "Golf", isSelected: selectedSport == "Golf") {
          selectedSport = "Golf"
          print("Golf button pressed")
        }
        SportButton(sport: "Football", isSelected: selectedSport == "Football") {
          selectedSport = "Football"
          print("Football button pressed")
        }
      }
      HStack {
        SportButton(sport: "Soccer", isSelected: selectedSport == "Soccer") {
          selectedSport = "Soccer"
          print("Soccer button pressed")
        }
        SportButton(sport: "Baseball", isSelected: selectedSport == "Baseball") {
          selectedSport = "Baseball"
          print("Baseball button pressed")
        }
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
