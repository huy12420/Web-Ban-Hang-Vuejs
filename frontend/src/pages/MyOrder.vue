<template>
    <div class="my-order-container">
        <div class="my-order-cards">
            <div>
                <div class="card-head d-flex flex-wrap flex-sm-nowrap justify-content-between">
                    <div>
                        <span>Order No - </span>
                        <span></span>
                    </div>
                    <div class="btn"> 
                     <button>  <router-link  @click="scrollToTop()" to="/thank"> Complete Payment</router-link></button>
                    </div>
                </div>

                <div class="d-flex flex-wrap flex-sm-nowrap justify-content-between card-summary">
                    <div class="w-100 text-center py-1 px-2"><span> Address </span> <input type="text">
                    </div>
                    <div class="w-100 text-center py-1 px-2"><span> Phone Number </span> <input type="number">
                    </div>
                    <div class="w-100 text-center py-1 px-2"><span> Name </span> <input type="text"> </div>
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
}

.steps .step {
    display: block;
    width: 100%;
    margin-bottom: 35px;
    text-align: center
}

.steps .step .step-icon-wrap {
    display: block;
    position: relative;
    width: 100%;
    height: 80px;
    text-align: center
}

.steps .step .step-icon-wrap::before,
.steps .step .step-icon-wrap::after {
    display: block;
    position: absolute;
    top: 50%;
    width: 50%;
    height: 3px;
    margin-top: -1px;
    background-color: #e1e7ec;
    content: '';
    z-index: 1
}

.steps .step .step-icon-wrap::before {
    left: 0
}

.steps .step .step-icon-wrap::after {
    right: 0
}

.steps .step .step-icon {
    display: inline-block;
    position: relative;
    width: 80px;
    height: 80px;
    border: 1px solid #e1e7ec;
    border-radius: 50%;
    background-color: #f5f5f5;
    color: #374250;
    font-size: 38px;
    line-height: 81px;
    z-index: 5
}

.steps .step .step-title {
    margin-top: 16px;
    margin-bottom: 0;
    color: #606975;
    font-size: 14px;
    font-weight: 500
}

.steps .step:first-child .step-icon-wrap::before {
    display: none
}

.steps .step:last-child .step-icon-wrap::after {
    display: none
}

.steps .step.completed .step-icon-wrap::before,
.steps .step.completed .step-icon-wrap::after {
    background-color: #0da9ef
}

.steps .step.completed .step-icon {
    border-color: #0da9ef;
    background-color: #0da9ef;
    color: #fff
}

.no-food {
    text-align: center;
    justify-content: center;
    display: block;
    width: 100%;
    height: 100%;
    margin: auto;
}

.no-food a {
    margin-top: 20px;
    margin-left: -10px;
}

@media (max-width: 320px) {
    .my-order-container {
        padding: 0px;
    }

    .card-head {
        font-size: 14px;
    }

    .no-food .content h2 {
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

    .no-food div img {}
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