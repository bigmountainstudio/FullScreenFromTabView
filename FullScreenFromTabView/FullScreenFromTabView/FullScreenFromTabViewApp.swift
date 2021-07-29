//  Created by Mark Moeykens on 7/29/21.
//

import SwiftUI

@main
struct FullScreenFromTabViewApp: App {
    @StateObject var oo = NavigationOO()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(oo)
        }
    }
}
