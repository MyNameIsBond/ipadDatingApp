//
//  customText.swift
//  MeetMe
//
//  Created by Tony Hajdini on 16/08/2020.
//

import SwiftUI

struct LibraryContentt: LibraryContentProvider {
    @LibraryContentBuilder
    func titleText(base: Text) -> [LibraryItem] {
        LibraryItem(
            base.secondaryText(),
            title: "secondary text"
        )
    }
}

extension Text {
    func secondaryText() -> some View {
        self
            .font(.subheadline)
            .fontWeight(.light)
            .foregroundColor(Color.gray)
            .lineLimit(1)
    }
}
