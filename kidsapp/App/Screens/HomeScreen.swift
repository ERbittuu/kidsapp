//
//  HomeScreen.swift
//  kidsapp
//
//  Created by Utsav Patel on 25/04/23.
//

import SwiftUI

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct HomeScreen: View {
    
    let items: [Item] = DataManager.shared.groups.map { Item(image: Image($0.title)) }
    
    @State var currentIndex: Int = 0
    @State private var isPresented = false
    
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                ZStack {
                    Color.mint
                    VStack {
                        RetroBubbleText(text: "Sounds..", size: 42, style: .large)
                    }
                }.frame(height: geo.size.height/4)
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
                    .frame(height: geo.size.height/2)
                }
                .onTapGesture {
                    print("\(DataManager.shared.groups[currentIndex].title.capitalized) tapped!")
                    withAnimation {
                        isPresented.toggle()
                    }
                }
                ZStack {
                    Color.mint
                    VStack {
                        RetroBubbleText(text: "\(DataManager.shared.groups[currentIndex].title.capitalized)", size: 32, style: .tiny)
                    }
                }.frame(height: geo.size.height/4)
            }
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $isPresented) {
                DetailsScreen()
                    .transition(.opacity)
            }
        }
    }
}


struct Item: Identifiable, Hashable {
    let id = UUID()
    let image: Image
    
    var identifier: String {
        return UUID().uuidString
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(identifier)
    }
    
    public static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}
