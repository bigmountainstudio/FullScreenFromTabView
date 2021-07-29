# FullScreenFromTabView
How to navigate from a TabView to another view that covers the TabView.

# Starting View is a TabView
![Tab](https://user-images.githubusercontent.com/24855856/127545555-0b5e41d1-0e92-4a89-91b7-e05f661b5aa2.png)


# Navigate to a full screen view
Notice it is covering the TabView here:

![fullscreen](https://user-images.githubusercontent.com/24855856/127545559-2dcdb4bb-8bbd-41df-992a-b3a629946aa0.png)


# Add Animation with a Transition
Note: The animation modifier could exist right below the transition modifier. 
Creating a VStack and adding it there just allows you to preview it.
```swift
struct MainView: View {
    @EnvironmentObject var navigationOO: NavigationOO
    
    var body: some View {
        VStack {
            if navigationOO.navigateToFullScreenView {
                FullScreenView()
                    .transition(.move(edge: .trailing))
            } else {
                TabViewScreen()
            }
        }
        .animation(.default)
    }
}
```

# Reference
See this [video](https://youtu.be/-sOkTOsAzMs) for reference regarding conditional navigation like this and using transitions.
