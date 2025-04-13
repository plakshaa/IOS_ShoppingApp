import SwiftUI

struct CartView: View {
    @ObservedObject var cart: Cart
    
    var body: some View {
        List {
            ForEach(Array(cart.items.keys), id: \.id) { product in
                CartItemRow(product: product, quantity: cart.items[product] ?? 0, cart: cart)
            }
            
            Section {
                HStack {
                    Text("Total")
                        .font(.headline)
                    Spacer()
                    Text("$\(String(format: "%.2f", cart.total))")
                        .font(.headline)
                }
            }
            
            Section {
                Button(action: {
                    // Implement checkout functionality
                }) {
                    Text("Checkout")
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .listRowBackground(Color.clear)
            }
        }
        .navigationTitle("Cart")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Clear") {
                    cart.clearCart()
                }
            }
        }
    }
}

struct CartItemRow: View {
    let product: Product
    let quantity: Int
    @ObservedObject var cart: Cart
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(.headline)
                Text("$\(String(format: "%.2f", product.price))")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    cart.removeFromCart(product)
                }) {
                    Image(systemName: "minus.circle")
                }
                
                Text("\(quantity)")
                    .frame(minWidth: 30)
                
                Button(action: {
                    cart.addToCart(product)
                }) {
                    Image(systemName: "plus.circle")
                }
            }
        }
    }
} 