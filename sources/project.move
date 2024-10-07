module MyModule::DecentralizedECommerce {

    use aptos_framework::signer;
    use std::vector;

    /// Struct representing a product listed by a seller.
    struct Product has store, key {
        seller: address,       // Address of the seller
        name: vector<u8>,      // Name of the product
        price: u64,            // Price of the product in tokens
        is_available: bool,    // Whether the product is available for purchase
    }

    /// Function for a seller to list a product for sale.
    public fun list_product(seller: &signer, name: vector<u8>, price: u64) {
        let product = Product {
            seller: signer::address_of(seller),
            name,
            price,
            is_available: true,
        };
        move_to(seller, product);
    }

    /// Function for a buyer to purchase an available product.
    public fun purchase_product(buyer: &signer, seller_address: address) acquires Product {
        let product = borrow_global_mut<Product>(seller_address);

        // Ensure the product is available
        assert!(product.is_available, 1);

        // Mark the product as sold
        product.is_available = false;

        // TODO: Implement token transfer logic between buyer and seller.
        // The actual transfer of funds is to be handled here.
    }
}
