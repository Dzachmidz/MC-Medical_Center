<div id="capture" class="container" style="padding-top: 90px;">
        <div class="card">
            <div class="card-body">
                <div class="container bootdey">
                    <div class="row invoice row-printable justify-content-center">
                            <div class="panel panel-default plain" id="dash_0">
                                <!-- Start .panel -->
                                <div class="panel-body">
                                    <div class="row">
                                        <!-- Start .row -->
                                        <div class="col-lg-6">
                                            <!-- col-lg-6 start here -->
                                            <div class="invoice-logo"><img width="100" src="./assets/img/logobc.png" alt="Invoice logo"></div>
                                        </div>
                                        <!-- col-lg-6 end here -->
                                        <div class="col-lg-6">
                                            <!-- col-lg-6 start here -->
                                            <div class="invoice-from">
                                                <ul class="list-unstyled text-right">
                                                    <li><h3>Medical Center</h3></li>
                                                    <li>PT Medical Care Makcun Coorporation</li>
                                                    <li>Sidoarjo Indonesia 523985</li>
                                                    <li>Company Number 123458</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- col-lg-6 end here -->
                                        <div class="col-lg-12">
                                            <!-- col-lg-12 start here -->
                                            <div class="invoice-details mt25">
                                                <div class="well">
                                                    <ul class="list-unstyled mb0">
                                                        <li><strong>Invoice Number</strong> #936988</li>
                                                        <li><strong>Invoice Date:</strong> <?php date_default_timezone_set('Asia/Jakarta'); echo $date = date('l, dS M Y');?></li>
                                                        <li><strong>Invoice Status:</strong> <span class="label label-success">SUCCESSFULL PAID</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="invoice-to mt25">
                                                <ul class="list-unstyled">
                                                    <li><strong>Invoiced To</strong></li>
                                                    <li><?php echo $_SESSION['login_first_name'] ?> <?php echo $_SESSION['login_last_name'] ?></li>
                                                    <li><?php echo $_SESSION['login_mobile'] ?></li>
                                                    <li><?php echo $_SESSION['login_address'] ?></li>
                                                    <li><?php echo $_SESSION['login_email'] ?></li>
                                                </ul>
                                            </div>
                                            
                                            <div class="invoice-items">
                                                <div class="table-responsive" style="overflow: hidden; outline: none;" tabindex="0">
                                                    <table class="table table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th class="per70 text-center">Products</th>
                                                                <th class="per5 text-center">Qty</th>
                                                                <th class="per25 text-center">Total Products</th>
                                                            </tr>
                                                        </thead>
                                                            <?php
                                                                if (isset($_SESSION['login_user_id'])) {
                                                                    $data = "where c.user_id = '" . $_SESSION['login_user_id'] . "' ";
                                                                } else {
                                                                    // $ip = isset($_SERVER['HTTP_CLIENT_IP']) ? $_SERVER['HTTP_CLIENT_IP'] : isset($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR'];
                                                                    $ip = (isset($_SERVER['HTTP_CLIENT_IP']) ? $_SERVER['HTTP_CLIENT_IP'] : (isset($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR']));
                                                                    $data = "where c.client_ip = '" . $ip . "' ";
                                                                }
                                                                $total = 0;
                                                                $get = $conn->query("SELECT *,c.id as cid FROM cart c inner join product_list p on p.id = c.product_id " . $data);
                                                                while ($row = $get->fetch_assoc()):
                                                                    $total += ($row['qty'] * $row['price']);
                                                                ?>
                                                        <tbody>
                                                            <tr>
                                                                <td><?php echo $row['name'] ?> - <?php echo $row['description'] ?></td>
                                                                <td class="text-center"><?php echo $row['qty'] ?></td>
                                                                <td class="text-center">Rp <?php echo number_format($row['qty'] * $row['price'], 2) ?></td>

                                                                <?php endwhile; ?>
                                                            </tr>
                                                            
                                                        </tbody>
                                                        <tfoot>
                                                            <tr>
                                                                <th colspan="2" class="text-right">Total:</th>
                                                                <th class="text-center">Rp <?php echo number_format($total, 2) ?></th>
                                                            </tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="invoice-footer mt25">
                                                <p class="text-center">Printed on The Date <?php date_default_timezone_set('Asia/Jakarta'); echo $date = date('Y-m-d H:i:s');?>
                                                <a onclick="print()" class="btn btn-default ml15"><i class="fa fa-print mr5"></i> Print Invoice</a></p>
                                                <a class="btn btn-default ml15" href="index.php?page=checkout"> Back to Checkout</a>
                                            </div>
                                        </div>
                                        <!-- col-lg-12 end here -->
                                    </div>
                                    <!-- End .row -->
                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                </div>
            </div>
        </div>
    </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
<script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<script>
function print(){
    html2canvas(document.getElementById('capture')).then(function(canvas){
        window.jsPDF = window.jspdf.jsPDF;
        // document.body.appendChild(canvas);
        var imgdata = canvas.toDataURL("image/jpg");
        var doc = new jsPDF('l','mm','a4');
        doc.addImage(imgdata,"JPG",1,1, 297, 180);
        doc.save("receipt.pdf");
    });
}
</script>