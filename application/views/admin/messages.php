<div class="container">
    <div class="row">
        <div class="box">
            <div class="col-lg-12">

                <table class="table table-striped table-bordered">
                    <tr>
                        <th>ID</th>
                        <th>Imię</th>
                        <th>Email</th>
                        <th>Telefon</th>
                        <th>Wiadomość</th>
                    </tr>
                    <?php foreach ($messages as $message) {
                        ?>
                        <tr>
                            <td><?= $message->id_message ?></td>
                            <td><?= $message->name ?></td>
                            <td><?= $message->email ?></td>
                            <td><?= $message->telephone ?></td>
                            <td><?= $message->message ?></td>
                        </tr>


                    <?php } ?>
                </table>
            </div>
        </div>
    </div>
</div>