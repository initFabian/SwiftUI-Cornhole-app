//
//  ContentView.swift
//  Cornhole App
//
//  Created by Fabian Catalina on 6/23/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.c//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      HStack(alignment: .top, spacing: 10) {
        VStack {
          TeamsPartial()
          Spacer()
          RoundPartial()
          Spacer()
          ScoresPartial()
          Spacer()
        }
      }
      .navigationBarHidden(true)
    }
  }
}

#if DEBUG
  let GAME_STORE = GameStore()

  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView().environmentObject(GAME_STORE)
    }
  }
#endif
