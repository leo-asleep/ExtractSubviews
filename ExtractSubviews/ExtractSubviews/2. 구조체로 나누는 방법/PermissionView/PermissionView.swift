//
//  PermissionView.swift
//  ExtractSubviews
//
//  Created by Leo on 1/10/24.
//

import SwiftUI

struct PermissionView: View {
    var body: some View {
        VStack {
            headerText

            PermissionCardView(title: "🎤 마이크", 
                               bodyText: "호흡 소리를 듣고 분석하기 위해서 필요해요\n소리를 직접 저장하지 않으니 안심하세요")

            Spacer()

            CTAButton(title: "권한 허용하기")

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.vertical, 24)
        .padding(.horizontal, 24)
        .background (PermissionBackgroundView())
    }
}

private extension PermissionView {
    @ViewBuilder
    var headerText: some View {
        Text("SleepKit AI의 수면 분석을 위해\n아래의 권한을 허용해 주세요")
            .font(.title2.bold())
            .foregroundStyle(Color.white)
            .lineSpacing(8)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    PermissionView()
}

