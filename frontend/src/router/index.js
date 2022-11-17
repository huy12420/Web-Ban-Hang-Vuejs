import { createWebHistory, createRouter } from "vue-router";
import Login from '../pages/Login.vue';
import Register from '../pages/Register.vue';
import Home from '../pages/Home.vue';
import About from '../pages/About.vue';
import Item from '../pages/Item.vue';
import Cart from '../pages/Cart.vue';
import Checkout from '../pages/Checkout.vue';
import Thank from '../pages/Thank.vue';
import MyOrder from '../pages/MyOrder.vue';



const routes = [{
        path: "/about",
        name: "About",
        component: About,
    },
    {
        path: "/cart",
        name: "Cart",
        component: Cart,
    },
    {
        path: "/item",
        name: "Item",
        component: Item,
    },
    {
        path: "/login",
        name: "Login",
        component: Login,
    },

    {
        path: "/register",
        name: "Register",
        component: Register,
    },
    {
        path: "/checkout",
        name: "Checkout",
        component: Checkout,
    },
    {
        path: "/thank",
        name: "Thank",
        component: Thank,
    },
    {
        path: "/myorder",
        name: "MyOrder",
        component: MyOrder,
    },

    {
        path: '/:pathMatch(.*)*',
        component: Home,
    },
    {
        path: "/",
        name: "Home",
        component: Home,
    },
];

const router = createRouter({
    history: createWebHistory(),
    routes,
});

export default router;