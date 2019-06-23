//
//  TeamScore.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import SwiftUI

struct Team: View {
  @ObjectBinding var teamScore: TeamScore
  let team: TeamScoreModal

  init(teamScore _teamScore: TeamScore) {
    team = TeamScoreModal(teamScore: _teamScore)
    teamScore = _teamScore
  }

  var body: some View {
    NavigationButton(destination: team) {
      VStack {
        Text("Team \(teamScore.teamNumber)")
          .font(.largeTitle)
        Text("Score")
          .font(.caption)
        Text("\(teamScore.score)")
          .font(.largeTitle)
          .color(.black)
      }
    }
    .foregroundColor(.black)
  }
}

#if DEBUG
  struct TeamRound_Previews: PreviewProvider {
    static var previews: some View {
      Team(teamScore: TeamScore(teamNumber: 1))
    }
  }
#endif
