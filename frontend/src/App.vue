<template>
    <div id="app">
        <div v-if="admin">
            <router-view></router-view>
        </div>
        <div v-else>
            <NavBar />

            <div class="auth-wrapper">
                <div class="auth-inner">
                    <router-view></router-view>
                </div>
            </div>
            <FooterComponent />
        </div>
    </div>
</template>

<script>
import NavBar from './components/NavBar.vue';
import FooterComponent from './components/FooterComponent.vue';
export default {
    name: 'App',
    components: {
        NavBar,
        FooterComponent
    },
}
</script>

<style>
@import "./assets/css/global_style.css";
</style>

