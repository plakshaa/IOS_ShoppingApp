# SwiftShoppingApp

A modern iOS shopping application built with SwiftUI that allows users to browse products, manage their shopping cart, and make purchases.

## Features

- 🛍️ Product browsing in a clean grid layout
- 🛒 Shopping cart management
- ➕ Add/remove items from cart
- 💰 Real-time cart total calculation
- 🔄 Quantity adjustment for cart items
- 🎨 Modern, responsive UI design
- 📱 iOS native experience

## Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/SwiftShoppingApp.git
```

2. Open the project in Xcode:
```bash
cd SwiftShoppingApp
open SwiftShoppingApp.xcodeproj
```

3. Select your target device or simulator
4. Build and run the project (⌘R)

## Project Structure

```
SwiftShoppingApp/
├── Product.swift          # Product model and sample data
├── Cart.swift            # Shopping cart management
├── ProductListView.swift # Main product grid view
├── CartView.swift        # Shopping cart view
└── ShoppingApp.swift     # App entry point
```

## Usage

1. Browse products in the main grid view
2. Tap "Add to Cart" to add items to your cart
3. Access your cart using the cart icon in the navigation bar
4. Adjust quantities or remove items in the cart view
5. View your total and proceed to checkout

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Built with SwiftUI
- Uses modern iOS design patterns
- Implements MVVM architecture 