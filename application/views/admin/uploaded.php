<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Dodawanie fotografii
                </h2>
                <hr>
                <?php
                if (isset($upload_error)) { ?>
                    <div class="alert alert-danger" role="alert">Błąd dodawania
                        pliku <?= $upload_error; ?></div>
                <?php }

                if (isset($upload_success)) {
                    ?>
                    <div class="alert alert-success" role="alert">Zdjęcia dodane pomyślnie! Nowe nazwy:<br>
                        <?php
                        foreach ($last_added as $last) {
                            echo $last->name . '<br>';
                        } ?>
                        Kategoria: <?= $category . ' <br>Liczba plików:' . $num; ?></div>
                <?php }
                if (isset($upload_error)) { ?>
                    <div class="alert alert-danger" role="alert">Błąd dodawania
                        pliku <?= $upload_error; ?></div>
                <?php } ?>

                <!--                <pre>--><? //= var_dump($new_photos); ?><!--</pre>-->
            </div>
        </div>
    </div>
</div>