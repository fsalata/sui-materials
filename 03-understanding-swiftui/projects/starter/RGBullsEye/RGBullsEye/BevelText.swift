import SwiftUI

struct BevelText: View {
    let text: String
    let witdh: CGFloat
    let height: CGFloat

    var body: some View {
        Text(text)
            .frame(width: witdh, height: height)
            .background(
                ZStack {
                    Capsule()
                        .fill(Color.element)
                        .northWestShadow(radius: 3, offset: 1)
                    Capsule()
                        .inset(by: 3)
                        .fill(Color.element)
                        .southEastShadow(radius: 1, offset: 1)
                }
            )
            .padding()
    }
}

struct BevelText_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.element
            BevelText(text: "R: ??? G: ??? B: ???", witdh: 200, height: 48)
        }
        .frame(width: 300, height: 100)
        .previewLayout(.sizeThatFits)
    }
}
