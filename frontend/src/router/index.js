import { createWebHistory, createRouter } from "vue-router";
import Login from '../pages/Login.vue';
import Register from '../pages/Register.vue';
import Home from '../pages/Home.vue';
import Men from '../pages/Men.vue'
import About from '../pages/About.vue';
import Cart from '../pages/Cart.vue';
import Checkout from '../pages/Checkout.vue';
import Thank from '../pages/Thank.vue';
import MyOrder from '../pages/MyOrder.vue';
import Admin from '../admin/Admin.vue';
import Dashboard from '../admin/Dashboard.vue';



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
        path: "/login",
        name: "Login",
        component: Login,
    },
    {
        path: "/men",
        name: "Men",
        component: Men,
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
        path: "/admin",
        name: "Admin",
        component: Admin,
    },
    {
        path: "/admin/dashboard",
        name: "Dashboard",
        component: Dashboard,
    },
    {
        path: '/:pathMatch(.*)*',
        component: Home,
        // https://stackoverflow.com/questions/68504803/how-can-i-make-a-catch-all-other-route-in-vue-router-also-catch-the-url-when-p
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