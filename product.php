<link href="./css/3.css" rel="stylesheet" />
<div class="container">
    <section class="page-section menu" id="menu">
        <div id="menu-field" class="card-deck">
            <?php
            include 'admin/db_connect.php';
            $qry = $conn->query("SELECT * FROM  product_list order by rand() ");
            while ($row = $qry->fetch_assoc()) :
            ?>
                <?php "<br>" ?>
                <div class="col-lg-3" style="margin-bottom: 20px;">
                    <div class="card menu-item ">
                        <img src="assets/img/<?php echo $row['img_path'] ?>" class="card-img-top" alt="...">

                        <div class="card-body">
                            <h5 class="card-title">
                                <?php echo $row['name'] ?>
                            </h5>
                            <p class="card-text truncate">
                                <?php echo $row['description'] ?>
                            </p>
                            <h6 class="card-title">Price: Rp
                                <?php echo $row['price'] ?>
                            </h6>
                            <div class="text-center">
                                <button class="btn btn-sm btn-outline-primary view_prod btn-block" data-id=<?php echo $row['id'] ?>><i class="fa fa-eye"></i> Lihat</button>

                            </div>
                        </div>

                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </section>
</div>

<script>
    $('.view_prod').click(function() {
        uni_modal_right('Product', 'view_prod.php?id=' + $(this).attr('data-id'))
    })
</script>