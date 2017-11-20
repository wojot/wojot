<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-8">


                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Formularz kontaktowy
                    </h2>
                    <hr>

                    <?= validation_errors('<div class="alert alert-danger" role="alert">', '</div>'); ?>

                    <?php
                    $name = array(
                        'name' => 'contact_name',
                        'type' => 'text',
                        'class' => 'form-control',
                        'maxlength' => '35',
                        'placeholder' => 'Imię',
                        'value' => $this->input->post('contact_name'),
                    );
                    $email = array(
                        'name' => 'contact_email',
                        'type' => 'email',
                        'class' => 'form-control',
                        'placeholder' => 'Email',
                        'value' => $this->input->post('contact_email'),
                    );
                    $telephone = array(
                        'name' => 'contact_telephone',
                        'type' => 'text',
                        'class' => 'form-control',
                        'maxlength' => '12',
                        'placeholder' => 'Telefon (opcjonalnie)',
                        'value' => $this->input->post('contact_telephone'),
                    );
                    $message = array(
                        'name' => 'contact_message',
                        'class' => 'form-control',
                        'maxlength' => '1000',
                        'rows' => '6',
                        'placeholder' => 'Tutaj wpisz wiadomość...',
                        'value' => $this->input->post('contact_message'),
                    );
                    echo form_open();
                    //                echo form_open(base_url() . 'front/email_sent');
                    ?>
                    <div class="form-group col-lg-4"><?= form_input($name); ?></div>
                    <div class="form-group col-lg-4"><?= form_input($email); ?></div>
                    <div class="form-group col-lg-4"><?= form_input($telephone); ?></div>
                    <div class="form-group col-lg-12"><label>Wiadomość: </label><?= form_textarea($message); ?></div>
                    <div
                        class="form-group col-lg-12 text-center"><?= form_submit('submit', 'Wyślij wiadomość', 'class="btn btn-success btn-block"'); ?></div>
                    <?php
                    echo form_close();
                    ?>
                </div>


            </div>
            <div class="col-lg-4">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Kontakt
                    </h2>
                    <hr>
                </div>

                <div class="col-md-12">
                    <p class="text-center"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
                        Telefon:
                        <strong>666 700 779</strong>
                    </p>
                    <p class="text-center"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Email:
                        <strong><a href="mailto:wojotek@gmail.com">wojotek@gmail.com</a></strong>
                    </p>

                    <p class="text-center"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                        Adres: 32-640 Zator, <br /> Podolsze ul. Jutrzenki 5
                    </p>

                </div>
            </div>
        </div>
    </div>
</div>