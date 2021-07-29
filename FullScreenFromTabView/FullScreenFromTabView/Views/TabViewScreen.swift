//
//  Created by Mark Moeykens on 7/29/21.
//

import SwiftUI

struct TabViewScreen: View {
    @EnvironmentObject var navigationOO: NavigationOO
    
    var body: some View {
        TabView {
            VStack {
                Button("Full Screen Nav") {
                    navigationOO.navigateToFullScreenView = true
                }
            }
            .tabItem { Image(systemName: "star") }
            
            Text("Tab 2")
                .tabItem { Image(systemName: "circle") }
        }
    }
}

struct TabViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabViewScreen()
    }
}
