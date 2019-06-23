//
//  Scores.partial.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import SwiftUI

struct ScoresPartial: View {
  @EnvironmentObject var gameStore: GameStore

  var body: some View {
    VStack {
      HStack {
        TeamScorer(scorer: gameStore.roundStore.team1RndScore)
        Spacer()
        TeamScorer(scorer: gameStore.roundStore.team2RndScore)
      }

      Button(action: nextRound) {
        Text("Next Round")
          .font(.body)
      }
    }.padding(.horizontal, 70.0)
  }

  func nextRound() {
    gameStore.nextRound()
  }
}

#if DEBUG
  struct Scores_partial_Previews: PreviewProvider {
    static var previews: some View {
      ScoresPartial().environmentObject(GAME_STORE)
    }
  }
#endif
