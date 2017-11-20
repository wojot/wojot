<div class="container">

    <div class="row">
        <div class="box">
            <div class="col-lg-12 text-center">
                <div id="carousel-example-generic" class="carousel slide">
                    <!-- Indicators -->
                    <ol class="carousel-indicators hidden-xs">


                        <?php

                        for ($i = 0; $i < sizeof($slides); $i++) {
                            $slide_path = base_url() . $slides[$i]->name . '.jpg';

                            ?>
                            <li data-target="#carousel-example-generic" data-slide-to="<?= $i; ?>" <?php if ($i == 0) {
                                echo "class='active'";
                            } ?>
                            >
                            </li>

                            <?php

                        } ?>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <?php

                        for ($i = 0; $i < sizeof($slides); $i++) {
                            $slide_path = base_url() . 'uploads/' . $slides[$i]->name . '.jpg';

                            ?>
                            <div class="item <?php if ($i == 0) {
                                echo 'active';
                            } ?>">
                                <img class="img-responsive img-full" src="<?= $slide_path; ?>" alt="">
                            </div>

                            <?php

                        } ?>

                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="icon-prev"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="icon-next"></span>
                    </a>
                </div>

            </div>
        </div>
    </div>


    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">
                    WojoT Studio
                </h2>
                <hr>

                <p class="text-center">
                    Potrzebujesz profesjonalnego fotografa?<br/>
                    Marzysz o jedynych i niepowtarzalnych zdjęciach?<br/><br/>

                    <strong>Trafiłeś/aś idealnie!</strong><br/>
                    Fotografia to moja domena!<br/>

                    Pracuję na systemie Canon 6d oraz 600d. <br/>

                    Fotografuję na ślubach, imprezach klubowych, studniówkach, chrztach oraz innych imprezach
                    okolicznościowych, a także produkty.<br/><br/>

                    Moje zdjęcia ukazały się m.in. w katalogach <strong>Avanti</strong>, Wisan, Darymex.<br/>
                    Na stronie można znaleźć zdjęcia osób takich jak: <br/>
                    <strong>
                        Remady&Manu-L, MBrother, Robert Burneika, Max Farenthide, Jankes, <br/>
                        DJ Thomas, DJ Hubertus, a także współpracuję z miss małopolski 2013 (jednocześnie vice miss
                        małopolski 2015).</strong><br/><br/>


                    Portfolio moich prac dostępne jest w zakładce Fotografia. <br/>Znajdziesz tam fotografie z dziedzin:
                    <strong>fotografia produktowa, fotografia ślubna, fotografia motoryzacyjna, fotografia klubowa,
                        fotografia wnętrz, fotografia reklamowa</strong> a także inne fotki :)
                    <br/>Działam w województwach: <strong>małopolskie, śląskie</strong> a zdjęcia produktów robię dla
                    klientów z całej Polski.<br/><br/>
                    

                    Jeżeli pragniesz uzyskać więcej informacji na temat współpracy ze mną to zapraszam serdecznie do
                    <a href="<?= base_url(); ?>kontakt">kontaktu.</a>
                </p>
            </div>
        </div>
    </div>

</div>