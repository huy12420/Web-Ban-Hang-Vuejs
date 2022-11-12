import { createStore } from "vuex"
import axios from "axios"

const store = createStore({
    state() {
        return {
            allItems: [],
            user: undefined,
            admin: undefined,
        }
    },
    mutations: {
        setItemsData(state, payload) {
            state.allItems = payload;
        },
        setUser(state, payload) {
            state.user = payload;
        },
        setAdmin(state, payload) {
            state.admin = payload;
        }
    },
    actions: {
        async getItemsData(context) {
            await axios.get('/items')
                .then(function(response) {
                    context.commit("setItemsData", response.data);
                })
                .catch(function(error) {
                    console.log(error);
                });
        },
    }
})

export default store;