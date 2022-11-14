<template>
    <div class="row">
        <div id="content" class="col-sm-12">
            <h3 class="title"> Men </h3>
            <div class="row row-cols-1 row-cols-xs-2 row-cols-sm-2 row-cols-lg-4 g-3" >
                <div class="product-grid col-lg-2" v-for="item in BindingItems" :key="item.item_id">
                    <div class="thumb">
                        <div class="image">
                            <img href="#"  v-bind:src="'http://localhost:8081/asset/' + item.item_src"  class="img-responsive"> >
                        </div>
                        <div class="caption">
                            <h4>
                                <a href="#" class="product-name">{{ item.item_name }}</a>
                            </h4>
                            <p class="price">{{ item.item_price }}</p>
                        </div>
                        <div class="button-card">
                            <button @click="
                                        addToCart({item_quantity:1, item_total: item.item_price, ...item})
                                    " class="btn" > ADD TO CART </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from "axios";

export default {
    name: "Item",
    data() {
        return {
            BindingItems: [],

        };
    },

    created() {
        this.getProducts();
    },

    methods: {
        // Get All Products
        async getProducts() {
            try {
                const promise1 = (new axios.get('http://localhost:8081/api/items'));
                promise1.then((value) => {
                    this.BindingItems = value.data;
                });
            } catch (error) {
                console.log(error);
            }
        },
        addToCart(item) {
            this.$store.commit('addToCart', item);
        },

    },

}
</script>


<style scoped lang="scss">
.row {
    padding-top: 50px;
    padding: 10px;
}


#content {
    min-height: 400px;

}

.title {
    display: flex;
    justify-content: space-between;
    border-bottom: 1px solid black;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    font-size: 40px;
    color: black;
    text-decoration: double;
}

.product-grid {
    height: 300px;
    position: relative;
    text-align: center;
    vertical-align: top;
    padding: 7px;
    margin-top: 30px;
    margin-bottom: 20px;
    border: 1px solid transparent;
    border-radius: 3px;


}

.product-grid:hover {
    border: 3px solid black;
    transition: .25s;
}

.product-grid .thumb img {
    object-fit: cover;
    height: 200px;
}

.product-grid .thumb h4 a {
    line-height: 18px;
    text-decoration: none;
    color: black;
    padding: 5px;
    margin: 0 auto;
    text-align: center;
    overflow: hidden;
}

.price {
    font-weight: 300;
    color: black;
}

.button-card {
    position: absolute;
    color: white;
    bottom: 0;
    left: calc(50% - 50px);
}

.button-card a {
    text-decoration: none;
    padding: 4px 8px;
    text-transform: uppercase;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
</style>