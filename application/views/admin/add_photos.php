<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Dodawanie fotografii
                </h2>
                <hr>
                <?php
                if (isset($_FILES['photos']['size'][0]) && $_FILES['photos']['size'][0] == 0) {

                    echo '<div class="alert alert-danger" role="alert">Nie załadowano zdjęć.</div>';
                }

                echo form_error('category', '<div class="alert alert-danger" role="alert">', '</div>');


                $input_file = array(
                    'type' => 'file',
                    'name' => 'photos[]',
                    'style' => 'display:none',
                    'multiple' => TRUE,
                );

                $slider = array(
                    'type' => 'radio',
                    'name' => 'category',
                    'value' => 'slider',
                );

                $produktowa = array(
                    'type' => 'radio',
                    'name' => 'category',
                    'value' => 'products',
                );

                $klubowa = array(
                    'type' => 'radio',
                    'name' => 'category',
                    'value' => 'clubbing',
                );

                $motoryzacyjna = array(
                    'type' => 'radio',
                    'name' => 'category',
                    'value' => 'cars',
                );

                $rozne = array(
                    'type' => 'radio',
                    'name' => 'category',
                    'value' => 'other',
                );

                $sesje = array(
                    'type' => 'radio',
                    'name' => 'category',
                    'value' => 'sessions',
                );

                $wnetrz = array(
                    'type' => 'radio',
                    'name' => 'category',
                    'value' => 'interior',
                );

                $submit = array(
                    'type' => 'submit',
                    'value' => 'Dodaj wybrane zdjęcia',
                    'class' => 'btn btn-success btn-block',
                );

                echo form_open_multipart('admin/add_photos');
                ?>
                <div class="row text-center">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="btn btn-primary btn-block">Wybierz
                                zdjęcia<?= form_input($input_file); ?></label>
                        </div>
                        <p class="help-block">Wybierz kategorię do której zdjęcia mają zostać dodane:</p>

                        <div class="radio">
                            <label>
                                <?= form_input($slider); ?>
                                Slider na stronie głównej
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <?= form_input($produktowa); ?>
                                Fotografia produktowa
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <?= form_input($klubowa); ?>
                                Fotografia klubowa
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <?= form_input($motoryzacyjna); ?>
                                Fotografia motoryzacyjna
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <?= form_input($rozne); ?>
                                Fotografie różne
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <?= form_input($sesje); ?>
                                Sesje zdjęciowe
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <?= form_input($wnetrz); ?>
                                Fotografia wnętrz
                            </label>
                        </div>

                        <?php
                        echo form_submit($submit);
                        echo form_close();
                        ?>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>