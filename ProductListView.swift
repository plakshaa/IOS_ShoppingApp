import SwiftUI

struct ProductListView: View {
    @StateObject private var cart = Cart()
    let products = Product.sampleProducts
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ], spacing: 16) {
                    ForEach(products) { product in
                        ProductCard(product: product, cart: cart)
                    }
                }
                .padding()
            }
            .navigationTitle("Shop")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: CartView(cart: cart)) {
                        Image(systemName: "cart")
                            .badge(cart.items.count)
                    }
                }
            }
        }
    }
}

struct ProductCard: View {
    let product: Product
    @ObservedObject var cart: Cart
    
    var body: some View {
        VStack {
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 120)
                .padding()
            
            Text(product.name)
                .font(.headline)
            
            Text("$\(String(format: "%.2f", product.price))")
                .font(.subheadline)
                .foregroundColor(.blue)
            
            Button(action: {
                cart.addToCart(product)
            }) {
                Text("Add to Cart")
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding(.bottom)
        }
        .frame(maxWidth: .infinity)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 4)
    }
} 