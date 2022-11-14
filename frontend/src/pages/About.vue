<template>
    <section class="about-section">
        <div class="heading">
            <span>about us</span>
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
                <h3>GUCCI </h3>
            </div>
        </div>
        <div class="content-text">
            <p> <i><b> Original Start </b></i></p>
            <p> Gucci is an Italian fashion brand founded in 1921 by Guccio Gucci,
                making it one of the oldest Italian fashion brands in operation today. Like many historic fashion
                houses,
                the brand started out as a luggage manufacturer,
                producing luxury travel goods for Italy’s wealthy upper-classes, as well as equestrian equipment.</p>
            <p> Initially the brand produced primarily leather goods, as well as premium knitwear, silk goods,
                shoes and handbags. During the second world war,
                material constraints owing to the war effort forced the label to use cotton to create their goods. It
                was during this time that the label introduced its distinctive “Double-G” monogram,
                as well as the now iconic Gucci stripe, consisting of two green stripes interrupted by a single red bar.
            </p>
            <p> <i><b> Into The Line Of Bussiness </b> </i> </p>
            <p>
                From the 1950s onwards, Gucci experienced incredible success as a label of choice amongst wealthy
                travellers,
                Hollywood stars and other well-heeled shoppers,
                renowned for its extravagant, opulent designs. Guccio Gucci passed away in 1953,
                but the business continued under the leadership of his three sons, Aldo, Vasco and Rodolfo,
                In the mid-‘60s, the brand introduced luxury accessories such as eyewear,
                watches and jewelry to their product line; items which have since become a cornerstone of the label.
            </p>
            <p> <i> <b> When Money Take Over  </b></i></p>
            <p>
                In 1983, Rodolfo Gucci passed away, and control was passed to his son, Maurizio,
                who struggled to maintain Gucci’s successes. During this period,
                the brand experienced numerous troubles owing to family disputes, tax evasion charges, assassinations
                and sales to foreign investors.
                In 1990, American designer Tom Ford was hired as a ready-to-wear designer, eventually being promoted to
                Creative Director four years later. Ford is credited as being instrumental in helping to restore Gucci’s
                reputation during that period,
                reducing the brand’s product offer,

                streamlining its identity and restoring the opulence and extravagance that had defined the label
                previously.
            </p>
            <p><i> <b> Power </b></i></p>
            <p>
                In 2004, Tom Ford presented his last collection with Gucci, being replaced by Frida Giannini. In 2006,
                Giannini took control of both men’s and women’s ready-to-wear design, and served in this role until late
                2014.

                At the time of Giannini’s departure, there was a perception developing that Gucci had become stale or
                irrelevant, with a lot of talk about who would replace her. The brand surprised their audience when, in
                2015, it was announced that Alessandro Michele would take over as creative director of the brand.
            </p>
            <button> 
                <i> <b> The Inheritance Of Legacy </b></i>
            </button>
            <p>
                Though Michele had worked for Gucci in various roles for 12 years, he was still relatively unknown as a
                designer, and it was not clear in what direction he would take the brand. However, Michele’s unique
                style, blending Gucci’s classic penchant for extravagance and opulence with a theatrical,
                somewhat-kitschy pageantry, has proven to be a huge success, attracting many young and aspirational
                customers, as well as numerous fashion insiders. In early 2017, it was announced that Gucci had achieved
                record sales under Michele’s leadership, fuelling an 11% boost in profits for the brand’s
                parent-company, Kering, and the brand’s high performance continues to this day.
            </p>
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

/* // */
.about-section .row {
    width: 100%;
    height: auto;
}

#content {
    min-height: 500px;
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
    bottom: 0;
    left: calc(50% - 50px);
}

.button-card a {
    text-decoration: none;
    padding: 4px 8px;
    text-transform: uppercase;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}

/* // */
.about-section .about-content {
    display: flex;
    width: 100%;

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
.content-text { 
    font-size: 20px;
    padding-top: 30px;
    margin: auto;
    font-family: 'Satisfy', cursive;
}
.content-text p i { 
    font-size: 35px;
    font-family: 'Satisfy', cursive;
    padding: 5px;
}
</style>