

import SwiftUI

struct LibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(
            base.imgAvatar(width: 25.0, height: 25.0),
            title: "Avatar Circular Images"
        )
    }
    
    func modifiers(base: View) -> [LibraryItem] {
        LibraryItem(base.gradientColour())
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

extension View {
    func gradientColour() -> some View {
        self
        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 208/255, green: 45/255, blue: 208/255), Color(red:108/255, green:158/255, blue:255/255)]), startPoint: .trailing, endPoint: .topLeading))

    }
}




//MARK: Blur Effect
struct BlurView: UIViewRepresentable {
    
    let style: UIBlurEffect.Style

    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        NSLayoutConstraint.activate([
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
        return view
    }

    func updateUIView(_ uiView: UIView,
                      context: UIViewRepresentableContext<BlurView>) {

    }

}
