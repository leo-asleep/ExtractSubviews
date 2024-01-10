//
//  MethodExtractView.swift
//  ExtractSubviews
//
//  Created by Leo on 1/10/24.
//

import SwiftUI

struct Permission: Identifiable {
    var id = UUID().uuidString
    let title: String
    let body: String
}

struct MethodExtractView: View {
    let permissions: [Permission] = [
        Permission(title: "🎤 마이크",
                   body: "호흡 소리를 듣고 분석하기 위해서 필요해요\n소리를 직접 저장하지 않으니 안심하세요")
    ]

    var body: some View {
        VStack {
            drawHeaderText()

            ForEach(permissions) { permission in
                drawPermissionCardView(with: permission)
            }

            Spacer()

            drawCTAButton(title: "권한 허용하기")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.vertical, 40)
        .padding(.horizontal, 24)
        .background(drawBackground())
    }
}

private extension MethodExtractView {
    func drawHeaderText() -> some View {
        Text("SleepKit AI의 수면 분석을 위해\n아래의 권한을 허용해 주세요")
            .font(.title2.bold())
            .foregroundStyle(Color.white)
            .lineSpacing(8)
            .frame(maxWidth: .infinity, alignment: .leading)
    }

    func drawPermissionCardView(with permission: Permission) -> some View {
        VStack(spacing: 10) {
            Text(permission.title)
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text(permission.body)
                .foregroundColor(Color(hexString: "A9A9A9"))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(16)
        .background(Color.black.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.top, 26)
    }

    func drawCTAButton(title: String) -> some View {
        Button {
        } label: {
            Text("권한 허용하기")
                .font(.headline)
                .foregroundStyle(Color.white)
        }
        .frame(maxWidth: .infinity, maxHeight: 56)
        .background(Color(hexString: "6755D1"))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }

    func drawBackground() -> some View {
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
        .background(
            Gradient(colors: [Color(hexString: "413873"),
                                              Color(hexString: "2E2949"),
                                              Color(hexString: "161616")])
        )

    }
}

#Preview {
    MethodExtractView()
}
