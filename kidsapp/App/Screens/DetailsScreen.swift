//
//  DetailsScreen.swift
//  kidsapp
//
//  Created by Utsav Patel on 05/08/23.
//

import SwiftUI

struct DetailsScreen: View {
    
    @Environment(\.dismiss) var dismiss
    let items: [Item] = DataManager.shared.groups[0].items.map { Item(image: Image($0.title)) }
    @State var currentIndex: Int = 0
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Spacer(minLength: 20)
                    CircleButton {
                        dismiss()
                    }
                    .padding()
                }
                .frame(height: 32)
                VStack(spacing: 0) {
                    ZStack {
                        Color.mint
                        VStack {
                            RetroBubbleText(text: "Sounds..", size: 42, style: .large)
                        }
                    }.frame(height: geo.size.height/6)
                    ZStack {
                        Color.mint
                        VStack {
                            ACarousel(items,
                                      index: $currentIndex,
                                      spacing: 20,
                                      headspace: 40,
                                      sidesScaling: 0.7,
                                      isWrap: true
                            ) { item in
                                item.image
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 240)
                            }
                        }
//                        .frame(height: geo.size.height/2)
                    }
                    .onTapGesture {
                        print("\(DataManager.shared.groups[currentIndex].title.capitalized) tapped!")
                    }
                    ZStack {
                        Color.mint
                        VStack {
                            RetroBubbleText(text: "\(DataManager.shared.groups[currentIndex].title.capitalized)", size: 32, style: .tiny)
                        }
                    }.frame(height: geo.size.height/4)
                }
            }.background(Color.mint)
        }
    }
}

struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreen()
    }
}
