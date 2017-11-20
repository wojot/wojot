<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center">Logowanie do panelu administratora
                </h2>
                <hr>
                <?php
                if (isset($error)) {
                    echo "<div class='alert alert-danger' role='alert'>" . $error . "</div>";
                }
                echo form_error('login', '<div class="alert alert-danger" role="alert">', '</div>');
                echo form_error('password', '<div class="alert alert-danger" role="alert">', '</div>');

                $login = array(
                    'name' => 'login',
                    'type' => 'text',
                    'class' => 'form-control',
                    'placeholder' => 'Nick',
                );
                $password = array(
                    'name' => 'password',
                    'type' => 'password',
                    'class' => 'form-control',
                    'placeholder' => 'Hasło',
                );

                echo form_open('', 'class="form-inline text-center"');

                ?>
                <div class="form-group">
                    <?= form_input($login); ?>
                </div>
                <div class="form-group">
                    <?= form_password($password); ?>
                </div>
                <?php
                echo form_submit('submit', 'Zaloguj', 'class="btn btn-success"');
                echo form_close();
                ?>
            </div>
        </div>
    </div>
</div>