//
//  ContentUnavailableBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillayev on 04/03/24.
//

import SwiftUI

struct ContentUnavailableBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            ContentUnavailableView.search
            ContentUnavailableView.search(text: "abb")
            ContentUnavailableView("No internet connection",
                                   systemImage: "wifi.slash",
                                   description: nil)
        } else {
            // Fallback on earlier versions
        }
    }
}

#Preview {
    ContentUnavailableBootcamp()
}
