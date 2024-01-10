//
//  PermissionBackgroundView.swift
//  ExtractSubviews
//
//  Created by Leo on 1/10/24.
//

import SwiftUI

struct PermissionBackgroundView: View {
    let BACKGROUND_COLOR = Gradient(colors: [Color(hexString: "413873"),
                                             Color(hexString: "2E2949"),
                                             Color(hexString: "161616")])

    var body: some View {
        VStack {
            ZStack {
                Image("img_stethoscope")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 277)

                Image("img_background")
                    .resizable()
                    .padding(.bottom, 50)
            }
            .padding(.top, 130)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(BACKGROUND_COLOR)
    }
}
