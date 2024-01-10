//
//  CTAButton.swift
//  ExtractSubviews
//
//  Created by Leo on 1/10/24.
//

import SwiftUI

struct CTAButton: View {

    private let BACKGROUND_COLOR = Color(hexString: "6755D1")

    let title: String

    var body: some View {
        Button {
        } label: {
            Text(title)
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(maxWidth: .infinity, maxHeight: 56)
        .background(BACKGROUND_COLOR)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

