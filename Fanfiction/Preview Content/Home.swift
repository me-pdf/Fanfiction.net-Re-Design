import SwiftUI

extension UIView {
    var globalFrame: CGRect? {
        let rootView = UIApplication.shared.windows.filter({$0.isKeyWindow}).first?.rootViewController?.view
        return self.superview?.convert(self.frame, to: rootView)
    }
}

struct Stories: Hashable {
    let title, imageName: String
}

struct Home: View {
    
    init() {
        UINavigationBar.appearance().barTintColor = .systemBackground
    }
    
    let continueReading: [Stories] = [
        .init(title: "I'll teach you to dance", imageName: "1"),
        .init(title: "Falling For The Captian", imageName: "2"),
        .init(title: "TOKYO NOIR", imageName: "11"),
        .init(title: "Hopeful Love", imageName: "4"),
        .init(title: "Arcane", imageName: "5"),
        .init(title: "Lost Angel", imageName: "6"),
    ]
    
    let fanFavs: [Stories] = [
        .init(title: "Lost My Way", imageName: "7"),
        .init(title: "Love Memories", imageName: "8"),
        .init(title: "Machine", imageName: "9"),
        .init(title: "The Assasin", imageName: "10")
    ]
    let Reccomended: [Stories] = [
        .init(title: "Hobbit - The companion", imageName: "18"),
        .init(title: "My Body", imageName: "17"),
        .init(title: "At Midnight", imageName: "16"),
        .init(title: "Veiled Stars", imageName: "15")
    ]
    let Saved: [Stories] = [
        .init(title: "Under Water Mate", imageName: "14"),
        .init(title: "The end of the world", imageName: "13"),
        .init(title: "Awakening", imageName: "12"),
        .init(title: "The Just-World Fallacy", imageName: "3")
    ]
    
    var body: some View {
        HStack {
            NavigationView {
                
                
                ScrollView (showsIndicators: false){
                    FicCarousel(categoryName: "CONTINUE READING"
                                , stories: continueReading)
                    Divider().padding(.horizontal, 8)
                    FicCarousel(categoryName: "FAN FAVORITES", stories: fanFavs)
                    Divider().padding(.horizontal, 8)
                    FicCarousel(categoryName: "RECOMMENDED", stories: Reccomended)
                    Divider().padding(.horizontal, 8)
                    FicCarousel(categoryName: "SAVED", stories:
                        Saved)
                    
                }
                .navigationBarTitle("Home", displayMode: .large)
                    
                
            }
            
        }
        
    }
}

struct FicCarousel: View {
    
    let categoryName: String
    let stories: [Stories]
    
    func getScale(proxy: GeometryProxy) -> CGFloat {
        let midPoint: CGFloat = 125
        
        let viewFrame = proxy.frame(in: CoordinateSpace.global)
        
        var scale: CGFloat = 1.0
        let deltaXAnimationThreshold: CGFloat = 125
        
        let diffFromCenter = abs(midPoint - viewFrame.origin.x - deltaXAnimationThreshold / 2)
        if diffFromCenter < deltaXAnimationThreshold {
            scale = 1 + (deltaXAnimationThreshold - diffFromCenter) / 500
        }
        
        return scale
    }
    
    var body: some View {
        HStack {
            Text(categoryName)
                .font(.body)
                .fontWeight(.semibold)
                .padding(.vertical, 6)
                .padding(.horizontal, 0)
                .foregroundColor(Color.gray)
            Spacer()
            Button("See all") {
                
            }
            .font(.body)
        }
                .padding(.horizontal)
                .padding(.top)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(stories, id: \.self) { num in
                    GeometryReader { proxy in
                        let scale = getScale(proxy: proxy)
                        NavigationLink(
                            destination: MovieDetailsView(storie: num),
                            label: {
                                VStack(spacing: 5) {
                                    Image(num.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 160, height: 210)
                                        .clipped()
                                        .cornerRadius(10)
//                                        .overlay(
//                                            RoundedRectangle(cornerRadius: 10)
//                                                .stroke(Color(white: 0.4))
//                                        )
                                        .shadow(radius: 4)
                                    Text(num.title)
                                        .font(.system(size: 16, weight: .semibold))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.primary)
                                    HStack(spacing: 0) {
                                        Text("Author")
                                            .font(.caption)
                                            .foregroundColor(Color.gray)
                                        }
                                    }.padding(.top, -8)
                                })
                        
                            .scaleEffect(.init(width: scale, height: scale))
                            .animation(.easeOut(duration: 1))
                            
                            .padding(.vertical)
                    }
                    
                    .frame(width: 125, height: 260)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 32)
                }
                Spacer()
                    .frame(width: 16)
            }
        }
    }


struct MovieDetailsView: View {
    
    let storie: Stories
    
    var body: some View {
        Image(storie.imageName)
            .resizable()
            .scaledToFill()
            .navigationTitle(storie.title)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            
            .preferredColorScheme(.light)
            
    }
}
}
