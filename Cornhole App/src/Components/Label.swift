//
//  Label.swift
//  TestSwiftUI
//
//  Created by Fabian Catalina on 6/22/19.
//  Copyright © 2019 Fabian Buentello. All rights reserved.
//

import SwiftUI

struct Label: View {
  let text: String

  var body: some View {
    Text(text)
      .font(Font.custom("system", size: 100))
      .fontWeight(.black)
  }
}

#if DEBUG
  struct Label_Previews: PreviewProvider {
    static var previews: some View {
      Label(text: "1")
    }
  }
#endif
