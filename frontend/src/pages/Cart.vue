<template>
    <div class="shopping-cart-section">

        <div class="heading">
            <span>Shopping cart</span>
            <h3>Good products, fast delivery</h3>
        </div>

        <div class="container">
            <div class="wrapper wrapper-content">
                <div class="row">
                    <div class="in-cart col-md-9">
                        <div class="box">
                            <div class="box-title item-total row">
                                <h3>
                                    <p style="font-size: 15px;">
                                        <span>item</span>
                                        <span></span>
                                    </p>in your cart
                                </h3>
                            </div>

                            <div>
                                <div>
                                    <div class="box-content row" v-for="item in $store.state.cart" :key="item.item_id">
                                        <div class="image-box col-sm-3" style="padding-left: 0;">
                                            <img v-bind:src="'http://localhost:8081/asset/' + item.item_src" alt=""
                                                class="cart-product-img" />
                                        </div>

                                        <div class="desc col-sm-4">
                                            <h2 class="item-name"></h2>
                                            <div class="item-desc">
                                                <b>Description</b>
                                                <p>{{ item.item_desc }}</p>
                                            </div>
                                            <button class="btn remove-btn" @click="DeleteCartItem(item)"><i
                                                    class="fa fa-trash"></i>Remove
                                                item</button>
                                        </div>

                                        <div class="item-price col-sm-1">
                                            <span class="sale-price">{{ item.item_price }}$
                                            </span>
                                        </div>

                                        <div class="item-qty col-sm-2 d-inline">
                                            <label for="iQuantity"
                                                style="font-size: 12px; padding-right: 2px;">Quantity:</label>
                                            <input type="number" min="1" id="iQuantity"
                                                class="form-control item-quantity" :value="item.item_quantity">
                                            <button class="btn btn-link px-2" @click="MinusQuantity(item)">
                                                <i class="fas fa-minus"></i>
                                            </button>
                                            <button class="btn btn-link px-2" @click="PlusQuantity(item)">
                                                <i class="fas fa-plus"></i>
                                            </button>
                                        </div>

                                        <div class="cal-total col-sm-2">
                                            <h4 class="item-total">{{
                                                    item.item_total
                                            }}$
                                            </h4>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="box">
                            <div class="box-title">
                                <h3>Cart Summary</h3>
                            </div>

                            <div class="box-content">
                                <span>Summary</span>

                                <hr />

                                <span>Total</span>
                                <h2 class="font-bold total-sale"> {{ totalPrice }}</h2>

                                <div class="btn-group">
                                    <div class="btn check-out-btn"><i class="fa fa-shopping-cart" ></i>
                                        <router-link class="btn check-out-btn" @click="CheckOutProducts()"
                                             to="/myorder"> Checkout </router-link>
                                    </div>
                                    <button class="btn cancel-btn" @click="CancelBtn()">
                                        Cancel</button>
                                </div>
                            </div>
                        </div>

                        <div class="box">
                            <div class="box-title">
                                <h3>Support</h3>
                            </div>
                            <div class="box-content text-center">
                                <h3><i class="fa fa-phone"></i> +84 70 290 6216</h3>
                                <span class="small">
                                    Please contact with us if you have any questions. We are avalible 24h.
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>

import axios from 'axios';
export default {
    name: "Cart",
    data() {
        return {
            total: 0,
            cartData: {
                user_id: '',
                user_name: '',
                cart: '',
                total: 0,
                valid: false,
            },
        };
    },
    computed: {
        totalPrice() {
            var total = 0;
            for (let item of this.$store.state.cart) {
                total += parseInt(item.item_total);
            }
            return total;
        },

    },
    methods: {
        async CheckOutProducts() {
            try {
                var data = { dataItems: this.$store.state.cart, TOTAL_DIFFER_ITEMM: this.$store.state.cart.length, TOTAL_PRICE: this.totalPrice}

                var sendMessage = await axios.post("/carts/", data);
                
                
                if(sendMessage.status == 200){
                    alert("Item has been added ");
                }
                
            } catch (error) {
                alert(error);
            }
        },
        addToCart(item) {
            this.$store.commit('addToCart', item);

            console.log(item);
        },
        DeleteCartItem(item) {
            this.$store.commit('DeleteCartItem', item);
        },
        MinusQuantity(item) {
            this.$store.commit('MinusQuantity', item);
        },
        PlusQuantity(item) {
            this.$store.commit('PlusQuantity', item);
        },
        CancelBtn() {
            this.$store.commit('CancelBtn');
        }
    },
}
</script>
<style scoped>
.shopping-cart-section {
    background: #fff;
    padding: 2rem 9%;

}

.item-name {
    color: black;
}

.cart-product-img {
    text-align: center;
    width: 100%;
    height: 125px;
    object-fit: cover;
    background-color: #f7f7f7;

}

.box {
    clear: both;
    margin: 0;
    margin-bottom: 20px;
    padding: 0;
}

.box:after,
.box:before {
    display: table;
}

.box-title {
    background-color: inherit;
    border-color: #e7eaec;
    border-style: solid solid none;
    border-width: 3px 0 0;
    color: inherit;
    margin-bottom: 0;
    padding: 14px 15px 7px;
    min-height: 78px;
}

.box-content {
    background-color: inherit;
    color: inherit;
    padding: 15px 20px 20px 20px;
    border-color: #e7eaec;
    border-image: none;
    border-style: solid solid none;
    border-width: 1px 0;

}

.item-desc b {
    font-size: 12px;
}

.item-desc p {
    font-size: 10px;
}

.sale-price,
.first-price,
.item-quantity {
    font-size: 12px;
}

.item-quantity {
    width: 60px;
    height: 15px;
}

.first-price {
    text-decoration: line-through;
}

.remove-btn {
    font-size: 10px;
    padding: 5px;
    margin-top: 27px;
}

.remove-btn i {
    padding-right: 5px;
}

.box-content button i,
.box-content a i {
    padding-right: 5px;
}

.no-item {
    text-align: center;
    justify-content: center;
    display: block;
}

.no-item .image img {
    width: 200px;
    height: 200px;
}


@media (max-width: 768px) {
    .box-content .item-name {
        font-size: 14px;
    }

    .desc button {
        position: absolute;
        bottom: 0;
    }

    .box-content .btn-group {
        display: block;
    }

    .box-content .btn-group button {
        border-radius: .5rem !important;
    }

    .box-content .btn-group button i {
        margin-top: 3px;
    }

    .box-content .btn-group .check-out-btn {
        display: flex;
        margin-top: 10px;
        margin-bottom: 10px;
    }
}

@media (max-width: 576px) {

    .box-title {
        min-height: 48px;
    }

    .box-title.item-total {
        border: none;
    }

    .in-cart .box-content .btn-group {
        margin-top: 5px;
        display: inline-flex;
    }

    .in-cart .box-content .btn-group .check-out-btn {
        display: flex;
        margin-top: 0px;
        margin-right: 5px;
        margin-bottom: 0px;
    }

    .image-box {
        position: absolute;
        opacity: 0.8;
        max-width: 100%;
        width: 100%;
        max-height: 100%;
        filter: brightness(60%);
        padding: none;
    }

    .image-box img {
        border-radius: 15px;

    }

    .in-cart .box-content {
        color: white;
        margin-left: -25px;
        border: none;
        display: flex;
    }

    .desc .item-name {
        font-size: 16px;
        filter: brightness(160%);
    }

    .desc b {
        font-size: 10px;
    }

    .desc p {
        font-size: 12px;
    }

    .desc .remove-btn {
        font-size: 10px;
        position: relative;

    }

    .item-price {
        position: absolute;
        margin-top: 55px;
    }

    .item-price .first-price {
        display: inline;
        padding-left: 5px;
        color: red !important;
    }

    .item-qty {
        position: absolute;
        margin-top: 55px;
        padding-left: 160px;

    }


    .cal-total {
        display: none;
    }

    .in-cart .box-content .check-out-btn {
        display: none;
    }

}
</style>