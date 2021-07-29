//  Created by Mark Moeykens on 7/29/21.
//

import SwiftUI

struct FullScreenView: View {
    @EnvironmentObject var navigationOO: NavigationOO
    
    var body: some View {
        VStack {
            Text("This should be full screen and cover up the Tab bar.")
            
            Button("Go Back") {
                navigationOO.navigateToFullScreenView = false
            }
        }
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenView()
    }
}
