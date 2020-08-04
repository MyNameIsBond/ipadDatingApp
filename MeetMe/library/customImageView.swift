

import SwiftUI

struct LibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.imgAvatar(width: 25.0, height: 25.0),
            title: "Avatar Circular Images"
        )
    }
}

//MARK: Image Avatar
extension Image {
    func imgAvatar(width: CGFloat, height: CGFloat) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
            .clipShape(Circle())
    }
}
