//
//  TeamScorer.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import SwiftUI

struct TeamScorer: View {
  @ObjectBinding var scorer: TeamScore

  var body: some View {
    VStack {
      Button(action: increaseScore) { Label(text: "+") }
      Label(text: "\(scorer.score)")
      Button(action: self.decreaseScore) { Label(text: "-") }
    }
  }

  func increaseScore() {
    scorer.updateScore(1)
  }

  func decreaseScore() {
    scorer.updateScore(-1)
  }
}

#if DEBUG
  struct Round_Previews: PreviewProvider {
    static var previews: some View {
      TeamScorer(scorer: GAME_STORE.roundStore.team1RndScore)
    }
  }
#endif
