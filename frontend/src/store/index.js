import { createStore } from "vuex"

let cart = localStorage.getItem('cart');
const store = createStore({
    state() {
        return {
            allItems: [],
            user: undefined,
            admin: undefined,
            cart: cart ? JSON.parse(cart) : [],
        }
    },
    mutations: {
        setItemsData(state, payload) {
            state.allItems = payload;
        },
        setUser(state, payload) {
            state.user = payload;
        },
        addToCart(state, item) {
            let found = state.cart.find(product => product.item_id == item.item_id);

            if (found) {
                found.quantity++;
                found.totalPrice = found.quantity * found.price;
            } else {

                state.cart.push(item);

                state.count++;


            }
            this.commit('saveCart');
        },
        DeleteCartItem(state, item) {
            let index = state.cart.indexOf(item);

            if (index > -1) {

                state.count--;

                state.cart.splice(index, 1);
                state.cart.splice()
            }
            this.commit('saveCart');
        },
        MinusQuantity(state, item) {

            let found = state.cart.find(product => product.item_id == item.item_id);

            if (found && found.item_quantity > 1) {
                found.item_quantity--;
                found.item_total = found.item_quantity * found.item_price;
            }
            this.commit('saveCart');
        },
        PlusQuantity(state, item) {

            let found = state.cart.find(product => product.item_id == item.item_id);

            if (found) {
                found.item_quantity++;
                found.item_total = found.item_quantity * found.item_price;
            }
            this.commit('saveCart');
        },
        saveCart(state) {
            localStorage.setItem('cart', JSON.stringify(state.cart));
            localStorage.setItem('count', state.count);
        },
        CancelBtn(state) {
            state.cart = [],
                state.count = 0,
                localStorage.setItem('cart', JSON.stringify(state.cart));
        }

    },
    actions: {}
})

export default store;