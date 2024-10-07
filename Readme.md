

# Decentralized E-Commerce Platform

## Vision

The Decentralized E-Commerce project aims to create a trustless, peer-to-peer marketplace where sellers can list products and buyers can purchase them without relying on intermediaries. By leveraging blockchain technology, the platform offers transparent transactions, secure product listings, and efficient payment solutions, empowering sellers and buyers globally while reducing transaction fees and fostering trust.

## Features

- **Product Listing**: Sellers can list their products for sale, providing details such as product name and price.
- **Decentralized Purchases**: Buyers can purchase available products directly from sellers using tokens, removing the need for third-party payment processors.
- **Trustless Transactions**: The blockchain ensures transparent product availability and purchase status, building trust between sellers and buyers.

## Contract Address

- **Network**: Aptos Devnet
- **Contract Address**: `0x2ec909b6a944be894ed6b90b27695a7d50cc013b15f7e97d46607e542505c7dc`

## How It Works

1. **List Product**:

   - Sellers can call the `list_product` function to list a product for sale.
   - The function takes the seller's address, product name, and price in tokens, storing this information on the blockchain.

2. **Purchase Product**:
   - Buyers can purchase a listed product by calling the `purchase_product` function.
   - The contract checks if the product is still available and, once confirmed, updates the status to mark it as sold.
   - In future iterations, the payment process will be implemented to handle token transfers between buyer and seller.

## Future Scope

- **Payment Integration**: Implement direct token transfer logic to facilitate payments between buyers and sellers securely.
- **Ratings and Reviews**: Allow buyers to leave ratings and reviews for products and sellers, promoting transparency and informed decision-making.
- **Escrow Mechanism**: Introduce an escrow feature to hold funds during transactions, ensuring the buyer receives the product before funds are released to the seller.
- **Product Categories**: Expand product listings to include categories for easier navigation and filtering.
- **Dispute Resolution**: Integrate a decentralized dispute resolution mechanism to handle conflicts between buyers and sellers fairly.

## Getting Started

- Clone this repository and install the necessary dependencies for the Aptos blockchain.
- Deploy the contract using your preferred deployment tool.
- Once deployed, sellers can list products, and buyers can purchase products through the smart contract functions.

---

Feel free to modify and update the README as your project evolves!
