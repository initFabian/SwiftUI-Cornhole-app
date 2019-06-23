//
//  Round.partial.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import SwiftUI

struct RoundPartial: View {
  @EnvironmentObject var gameStore: GameStore
  var body: some View {
    VStack {
      Text("Round")
        .font(.subheadline)
        .padding(10)

      Text("\(gameStore.roundStore.currentRound)")
        .font(.title)
        .padding(10)

      Text("Scores")
        .font(.subheadline)
        .padding(10)
    }
  }
}

#if DEBUG
  struct RoundPartial_Previews: PreviewProvider {
    static var previews: some View {
      RoundPartial()
        .environmentObject(GAME_STORE)
    }
  }
#endif
