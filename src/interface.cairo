use starknet::ContractAddress;

#[starknet::interface]
pub trait IERC6105<TState> {
    fn list_item(
        ref self: TState,
        token_id: u256,
        sale_price: u256,
        expires: u64,
        supported_token: ContractAddress
    );

    fn list_item_with_benchmark(
        ref self: TState,
        token_id: u256,
        sale_price: u256,
        expires: u64,
        supported_token: ContractAddress,
        benchmark_price: u256
    );

    fn delist_item(ref self: TState, token_id: u256);

    fn buy_item(
        ref self: TState, token_id: u256, sale_price: u256, supported_token: ContractAddress
    );

    fn get_listing(self: @TState, token_id: u256) -> (u256, u64, ContractAddress, u256);
}


#[starknet::interface]
pub trait IERC6105CollectionOffer<TState> {
    fn make_collection_offer(
        ref self: TState,
        amount: u256,
        sale_price: u256,
        expires: u64,
        supported_token: ContractAddress
    );

    fn accept_collection_offer(
        ref self: TState,
        token_id: u256,
        sale_price: u256,
        supported_token: ContractAddress,
        buyer: ContractAddress
    );

    fn accept_collection_offer_with_benchmark(
        ref self: TState,
        token_id: u256,
        sale_price: u256,
        supported_token: ContractAddress,
        buyer: ContractAddress,
        benchmark_price: u256
    );

    fn cancel_collection_offer(ref self: TState);

    fn get_collection_offer(
        self: @TState, buyer: ContractAddress
    ) -> (u256, u256, u64, ContractAddress);
}

#[starknet::interface]
pub trait IERC6105ItemOffer<TState> {
    fn make_item_offer(
        ref self: TState,
        token_id: u256,
        sale_price: u256,
        expires: u64,
        supported_token: ContractAddress
    );

    fn cancel_item_offer(ref self: TState, token_id: u256);

    fn accept_item_offer(
        ref self: TState,
        token_id: u256,
        sale_price: u256,
        supported_token: ContractAddress,
        buyer: ContractAddress
    );

    fn accept_item_offer_with_benchmark(
        ref self: TState,
        token_id: u256,
        sale_price: u256,
        supported_token: ContractAddress,
        buyer: ContractAddress,
        benchmark_price: u256
    );

    fn get_item_offer(
        self: @TState, token_id: u256, buyer: ContractAddress
    ) -> (u256, u64, ContractAddress);
}
