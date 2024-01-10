//
//  PermissionCardView.swift
//  ExtractSubviews
//
//  Created by Leo on 1/10/24.
//

import SwiftUI

struct PermissionCardView: View {
    let TITLE_TEXT_COLOR = Color.white
    let BODY_TEXT_COLOR = Color(hexString: "A9A9A9")

    let title: String
    let bodyText: String

    var body: some View {
        VStack(spacing: 10) {
            Text(title)
                .foregroundColor(TITLE_TEXT_COLOR)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(bodyText)
                .foregroundColor(BODY_TEXT_COLOR)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(16)
        .background(Color.black.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.top, 26)
    }
}
