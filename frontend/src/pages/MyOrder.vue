<template>
    <div class="my-order-container">
        <div class="my-order-cards">
            <div>
                <div class="card-head d-flex flex-wrap flex-sm-nowrap justify-content-between">
                    <div>
                        <span>Your Oders </span>
                        <span></span>
                    </div>
                    <div class="btn">
                        <router-link class="btn check-out-btn" @click="scrollToTop()" to="/thank">Checkout</router-link>
                    </div>
                </div>

                <div class="d-flex flex-wrap flex-sm-nowrap justify-content-between card-summary">
                    <div class="w-100 text-center py-1 px-2"><span><b>Address</b> </span> <input type="text">
                    </div>
                    <div class="w-100 text-center py-1 px-2"><span> <b>Phone Number</b> </span> <input type="number">
                    </div>
                    <div class="w-100 text-center py-1 px-2"><span> <b>Name </b></span> <input type="text"> </div>
                </div>


            </div>
        </div>



    </div>

</template>


<script>

export default {
    name: 'MyOrder',


}
</script>

<style scoped>
.my-order-container {
    padding: 2rem 9%;
    background: #fff;
    height: 100%;
}

.my-order-container.fit-screen {
    height: 90vh;
}

.my-order-cards {
    margin-bottom: 2rem;
    padding: 10px;
    height: 200px;
}


.card {
    margin-bottom: 3px;
}

.card-head {
    padding: 12px 0px;
    color: white;
    font-size: 16px;
    background: black;

}

.card-head span:first-of-type {
    margin-left: 20px;
}

.card-head .oder-btn {
    background-color: inherit;
    color: white;
    margin-right: 20px;
    font-weight: 500;
}

.card-head button:hover {
    color: #f38609;
}

.card-summary {
    padding: 12px 10px;
    background: #eee;
    font-size: 14px;
    padding: 10px;
    height: 200px;
}

.card-summary b {
    font-size: 20px;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    padding-top: 10px;
}

.card-summary input {
    border-radius: 10px;
    padding: 7px;

}


@media (max-width: 320px) {
    .my-order-container {
        padding: 0px;
    }

    .card-head {
        font-size: 14px;
    }




}

@media (max-width: 576px) {
    .my-order-container {
        padding: 1rem 4.5%;
    }

    .flex-sm-nowrap .step .step-icon-wrap::before,
    .flex-sm-nowrap .step .step-icon-wrap::after {
        display: none
    }

    .card {
        margin-top: 20px;
    }

}

@media (max-width: 768px) {

    .flex-md-nowrap .step .step-icon-wrap::before,
    .flex-md-nowrap .step .step-icon-wrap::after {
        display: none
    }
}

@media (max-width: 991px) {

    .flex-lg-nowrap .step .step-icon-wrap::before,
    .flex-lg-nowrap .step .step-icon-wrap::after {
        display: none
    }
}

@media (max-width: 1200px) {

    .flex-xl-nowrap .step .step-icon-wrap::before,
    .flex-xl-nowrap .step .step-icon-wrap::after {
        display: none
    }
}

.bg-faded,
.bg-secondary {
    background-color: #f5f5f5 !important;
}
</style>