<template>
    <div class="header">
        <router-link @click="scrollToTop()" to="/" class="logo"><img src="../assets/images/Gucci-logo.jpg" alt="" />
        </router-link>

        <nav class="navbar">
            <router-link @click="scrollToTop()" to="/">home</router-link>
            <router-link @click="scrollToTop()" to="/about">about</router-link>
            <router-link @click="scrollToTop()" to="/item">Store</router-link>
        </nav>

        <div class="icons">
            <div id="men-btn" class="fas fa-bars men-btn" @click="showNav"></div>
            <router-link @click="scrollToTop()" to="cart">
                <div class="fas fa-shopping-cart cart"></div>
            </router-link>

            <div v-if="!user" class="fas fa-user account">
                <ul class="drop-down-select">
                    <li>
                        <router-link @click="scrollToTop()" to="/login">login</router-link>
                    </li>
                    <li>
                        <router-link @click="scrollToTop()" to="/register">register</router-link>
                    </li>
                </ul>

            </div>

            <div v-else class="fas fa-user account" style="background: #f38609;color: white;">
                <ul class="drop-down-select">
                    <li>
                        <router-link @click="handleLogout" to="/">logout</router-link>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</template>

<script>
import { mapState, mapMutations } from "vuex";
export default {
    name: 'NavBar',

    computed: {
        ...mapState(["user"])
    },



    methods: {
        ...mapMutations(["setUser"]),

        scrollToTop() {
            window.scrollTo(0, 0);
        },


        handleLogout: function () {
            this.setUser("");
        }
    }
}
</script>

<style scoped>
.header {
    position: sticky;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
    background: #fff;
    box-shadow: 0 1rem 1rem rgba(0, 0, 0, 0.05);
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 2rem 9%;
}

.header .logo {
    font-size: 2.5rem;
    font-weight: bolder;
    color: #130f40;
}

.header .logo img {
    padding-right: .5rem;
    color: #27ae60;
}

.header .navbar a {
    font-size: 1.7rem;
    margin: 0 1rem;
    color: #666;
}

.header .navbar a:hover {
    color: #e7254f;
}

.header .navbar a.router-link-exact-active {
    color: #e7254f;
}

.header .icons div {
    height: 4.5rem;
    width: 4.5rem;
    line-height: 4.5rem;
    font-size: 2rem;
    background: #f7f7f7;
    color: #130f40;
    border-radius: .5rem;
    margin-left: .3rem;
    cursor: pointer;
    text-align: center;
}

.header .icons div:hover {
    color: #fff;
    background: #e7254f !important;
}

.header .icons a.router-link-exact-active .cart {
    background: white;
    color: black;
}

#men-btn {
    display: none;
}

.header .icons .account .drop-down-select {
    display: none;
    position: absolute;
    margin-left: -50px;
    list-style-type: none;
}

.header .icons .account .drop-down-select a {
    text-decoration: none;
    color: #130f40;
    font-size: 15px;
    font-weight: 500;
    float: left;
    width: 95px;
    border-radius: 5%;

}

.header .icons .account .drop-down-select.active {
    display: block !important;
}

.header .icons .account .drop-down-select.active a {
    background-color: #f7f7f7;
}

.header .icons .account .drop-down-select.active a:hover {
    background-color: black;
    color: white;
}


.header .icons .account:hover .drop-down-select a {
    background-color: #f7f7f7;

}

.header .icons .account:hover .drop-down-select a:hover {
    background-color: black;
    color: white;
}

@media (min-width: 769px) {
    .header .icons .account:hover .drop-down-select {
        display: block;
    }
}

@media (max-width: 768px) {
    .header .navbar {
        position: absolute;
        top: 99%;
        left: 0;
        right: 0;
        background: #fff;
        border-top: 0.1rem solid rgba(0, 0, 0, 0.2);
        border-bottom: 0.1rem solid rgba(0, 0, 0, 0.2);
        clip-path: polygon(0 0, 100% 0, 100% 0, 0 0);
    }

    .header .navbar.active {
        clip-path: polygon(0 0, 100% 0, 100% 100%, 0% 100%);
    }

    .header .navbar a {
        font-size: 2rem;
        margin: 2rem;
        display: block;
    }

    #men-btn {
        display: inline-block;
    }

}

@media (max-width: 576px) {
    .header .navbar a {
        font-size: 1.5rem;
        margin: 0;
    }
}
</style>