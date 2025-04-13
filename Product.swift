import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let description: String
    let imageURL: String
    
    // Sample products for testing
    static let sampleProducts = [
        Product(name: "iPhone 13", price: 999.99, description: "Latest iPhone model with amazing features", imageURL: "iphone13"),
        Product(name: "MacBook Pro", price: 1299.99, description: "Powerful laptop for professionals", imageURL: "macbook"),
        Product(name: "AirPods Pro", price: 249.99, description: "Wireless earbuds with noise cancellation", imageURL: "airpods")
    ]
} 