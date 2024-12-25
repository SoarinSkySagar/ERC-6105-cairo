use starknet::ContractAddress;

#[derive(Drop, starknet::Store, Serde, Clone, PartialEq)]
pub struct Listing {
    pub sale_price: u256,
    pub expires: u64,
    pub supported_token: ContractAddress,
    pub historical_price: u256
}

#[derive(Drop, starknet::Store, Serde, Clone, PartialEq)]
pub struct CollectionOffer {
    pub buyer: ContractAddress,
    pub amount: u256,
    pub sale_price: u256,
    pub expires: u64,
    pub supported_token: ContractAddress
}

#[derive(Drop, starknet::Store, Serde, Clone, PartialEq)]
pub struct ItemOffer {
    pub token_id: u256,
    pub buyer: ContractAddress,
    pub sale_price: u256,
    pub expires: u64,
    pub supported_token: ContractAddress
}
