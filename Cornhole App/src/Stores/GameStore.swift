//
//  GameStore.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import Combine
import SwiftUI

class GameStore: BindableObject {
  var didChange = PassthroughSubject<Void, Never>()

  var team1Score = TeamScore(teamNumber: 1) { didSet { didChange.send() } }

  var team2Score = TeamScore(teamNumber: 2) { didSet { didChange.send() } }

  var roundStore = RoundStore()

  func nextRound() {
    let t1RdScore = roundStore.team1RndScore.score
    let t2RdScore = roundStore.team2RndScore.score

    if t1RdScore != t2RdScore {
      if t1RdScore > t2RdScore {
        team1Score.updateScore(t1RdScore - t2RdScore)
      } else {
        team2Score.updateScore(t2RdScore - t1RdScore)
      }
    }
    roundStore.currentRound += 1
    roundStore.resetScores()
    didChange.send()
  }
}
