//
//  TeamScoreModal.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import SwiftUI

struct TeamScoreModal: View {
  let tempScore: TeamScore
  @ObjectBinding var teamScore: TeamScore

  init(teamScore ts: TeamScore) {
    teamScore = ts
    tempScore = TeamScore(teamNumber: ts.teamNumber, score: ts.score)
  }

  var body: some View {
    VStack {
      Text("Team \(teamScore.teamNumber)")
      TeamScorer(scorer: tempScore)
      Button(action: save) {
        Text("Save")
      }
    }.onAppear {
      self.tempScore.score = self.teamScore.score
    }
  }

  func save() {
    teamScore.score = tempScore.score
  }
}

#if DEBUG
  struct TeamScoreModal_Previews: PreviewProvider {
    static var previews: some View {
      TeamScoreModal(teamScore: TeamScore(teamNumber: 1)).environmentObject(GAME_STORE)
    }
  }
#endif
