import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            NavigationView {
                ActivitiesContentView(activtiesData: Activities(data: ActivitiesMockStore.activityData, items: ActivitiesMockStore.activities))
            }
            .tag(0)
            .tabItem {
                Image("shopping-cart-icon")
                    .resizable()
                Text("Store")
            }
            NavigationView {
                ActivitiesCartView(ShoppingCartItemsData: ActivitiesCart(data: ActivitiesMockStore.shoppingCartData))
            }
            .tag(1)
            .tabItem {
                Image("shopping-cart-icon")
                Text("Cart")
            }
            
            NavigationView {
                     AccountView()
                  }
                   .tag(2)
                   .tabItem {
                    Image("profile-glyph-icon")
                    Text("Account")
                }
            NavigationView {
                     MapKit()
                  }
                   .tag(2)
                   .tabItem {
                    Image("maps")
                    Text("Location")
                }
         
            
            
        }
    }
}



