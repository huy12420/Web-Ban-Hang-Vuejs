<template>
    <section class="about-section">
        <div class="heading">
            <span>about us</span>
            <h3>Never be caught.</h3>
        </div>

        <div class="row">
            <div class="about-content">
                
                <div class="about-content-text">
                    <p></p>
                    <p></p>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="about-article">
                <h3>Be exclusive, Be Devine, Be yourself.</h3>
            </div>
        </div>

        <div class="row gallery">
            <div class="Wrapper">
             
                <img src="../assets/images/taco/item3.jpg" alt="">
                <img src="../assets/images/taco/item4.avif" alt="">
                <img src="../assets/images/taco/item5.avif" alt="">
                <img src="../assets/images/taco/item6.avif" alt="">
                <img src="../assets/images/taco/item7.avif" alt="">
                <img src="../assets/images/taco/item8.avif" alt="">
                
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: "About",
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Satisfy&display=swap");

.about-section {
    padding: 2rem 9%;
}

.about-section .about-content {
    display: flex;
    width: 100%;

}

.about-section .about-content img {
    background-color: rgb(249, 249, 249);
}

.about-section .about-content .about-content-text {
    font-size: 16px;
    padding-left: 50px;
}

.about-section .about-article {
    margin-top: 50px;
    padding: 10px;
    text-align: center;
    background-color: black;
    width: 100%;
}

.about-section .about-article h3 {
    font-family: 'Satisfy', cursive;
    font-size: 32px;
    color: white;
}


.about-section .gallery {
  

}

.about-section .gallery .wrapper {
  
}



.about-section .gallery .wrapper img:nth-child(7n + 1) {
    grid-column: 2 / span 2;
}
.about-section .gallery .wrapper img:hover {
    z-index: 2;
    transform: scale(2);
}

@media (max-width: 768px) {
    .about-section .about-content img {
        width: 50px;
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2);
    }
}

@media (max-width: 576px) {
    .about-section .about-content img {
        width: inherit;
    }

    .about-section .about-content {
        display: block;
    }

    .about-section .about-content .about-content-text {
        padding-left: 0px;
    }

    .about-section .gallery {
        padding: 50px 0px;
    }

    .about-section .gallery .wrapper img {
        transform: scale(1);
        transition: all .25s;
        z-index: 1;

    }

    .about-section .gallery .wrapper {
    
    }

    .about-section .gallery .wrapper img:hover {
        transform: scale(2);
    }

}
</style>