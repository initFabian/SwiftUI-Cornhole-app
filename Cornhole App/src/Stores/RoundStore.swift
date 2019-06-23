//
//  RoundStore.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import Combine
import SwiftUI

class TeamScore: BindableObject {
  var didChange = PassthroughSubject<Void, Never>()

  let teamNumber: Int

  init(teamNumber _teamNumber: Int, score _score: Int? = nil) {
    teamNumber = _teamNumber
    score = _score ?? 0
  }

  var score: Int {
    didSet {
      didChange.send()
      if score < 0 {
        score = 0
      }
    }
  }

  func updateScore(_ diff: Int) {
    score += diff
  }

  func reset() {
    score = 0
  }
}

class RoundStore: BindableObject {
  var didChange = PassthroughSubject<Void, Never>()

  var currentRound = 0 { didSet { didChange.send() } }

  var team1RndScore = TeamScore(teamNumber: 1)
  var team2RndScore = TeamScore(teamNumber: 2)

  func resetScores() {
    team1RndScore.reset()
    team2RndScore.reset()
  }
}
