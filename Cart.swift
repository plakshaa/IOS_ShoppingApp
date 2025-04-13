import Foundation

class Cart: ObservableObject {
    @Published var items: [Product: Int] = [:]
    
    var total: Double {
        items.reduce(0) { $0 + ($1.key.price * Double($1.value)) }
    }
    
    func addToCart(_ product: Product) {
        items[product, default: 0] += 1
    }
    
    func removeFromCart(_ product: Product) {
        items[product] = (items[product] ?? 1) - 1
        if items[product] == 0 {
            items.removeValue(forKey: product)
        }
    }
    
    func clearCart() {
        items.removeAll()
    }
} 