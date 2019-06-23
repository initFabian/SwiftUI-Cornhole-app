//
//  Teams.partial.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import SwiftUI

struct TeamsPartial: View {
  @EnvironmentObject var gameStore: GameStore

  var body: some View {
    VStack {
      Text("Teams")
        .font(.body)
      HStack(alignment: .center) {
        Team(teamScore: gameStore.team1Score)

        Spacer()
        Team(teamScore: gameStore.team2Score)
      }
      .padding()
    }
  }
}

#if DEBUG
  struct TeamsPartial_Previews: PreviewProvider {
    static var previews: some View {
      TeamsPartial().environmentObject(GAME_STORE)
    }
  }
#endif
