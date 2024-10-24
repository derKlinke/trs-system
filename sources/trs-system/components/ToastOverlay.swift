//
//  ToastOverlay.swift
//  trs-system
//
//  Created by Fabian S. Klinke on 2024-07-30.
//

import SwiftUI

// MARK: - ToastOverlay
public struct ToastOverlay: View {
    @EnvironmentObject var toastManager: ToastManager

    public var body: some View {
        VStack(spacing: 0) {
            Spacer()

            ForEach(toastManager.toasts) { toast in
                ToastView(toast: toast)
                    .animation(.easeInOut(duration: 0.3))
            }
            .padding(.bottom, .large)
        }
    }
}

// MARK: - ToastView
struct ToastView: View {
    let toast: Toast

    var body: some View {
        HStack {
            if let icon = toast.icon {
                icon
                    .resizable()
                    .frame(square: .medium)
            }

            Text(toast.message)
                .font(trs: .mono)
        }
        .padding(.tiny)
        .padding(.horizontal, .small)
        .background(DynamicTRSColor.contentBackground.color)
        .borderClip(.tiny)
        .padding(.medium)
    }
}
