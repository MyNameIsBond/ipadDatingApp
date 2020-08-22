//
//  customText.swift
//  MeetMe
//
//  Created by Tony Hajdini on 16/08/2020.
//

import SwiftUI

struct LibraryTextContent: LibraryContentProvider {
    @LibraryContentBuilder
    func subtitleText(base: Text) -> [LibraryItem] {
        LibraryItem(
            base.secondaryText(),
            title: "secondary text"
        )
    }
    @LibraryContentBuilder
    func titleText(base: Text) -> [LibraryItem] {
        LibraryItem(
            base.primaryText(),
            title: "Primary text"
        )
    }
}


//MARK: 
extension Text {
    func secondaryText() -> some View {
        self
            .font(.subheadline)
            .fontWeight(.light)
            .foregroundColor(Color.gray)
            .lineLimit(1)
    }
}

extension Text {
    func primaryText() -> some View {
        self
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}
