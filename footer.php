<footer>
  <div class="container">
    <div class="footer-wrapper d-flex">
      <div class="footer-about">
        <h4>MC</h4>
        <p>
          Medical Center
        </p>
      </div>
      <div class="footer-col">
        <h5><b>Medical Center Main Page</b></h5>
        <ul>
          <li><a href="index.php">Home</a></li>
          <li><a href="#">About Us</a></li>
        </ul>
      </div>
      <div class="footer-col">
        <h5><b>Our Contact</b></h5>
        <ul>
          <li><a href="http://wa.me/6282233254044">WhatsApp</a></li>
          <li><a href="https://fahmialhafidza@gmail.com">Email</a></li>

        </ul>
      </div>
      <div class="footer-col">
        <h5><b>Social Media</b></h5>
        <ul>
          <li><a href="https://www.linkedin.com/in/dzachmid/">Linkedin</a></li>
          <li><a href="https://www.instagram.com/fahmialhafidz._/">Instagram</a></li>
        </ul>
      </div>
    </div>
    <div class="copyright">
      <p>Copyright &copy; 2023. MC All Rights Reserved</p>
    </div>
  </div>
</footer>

<script>
  $('.datepicker').datepicker({
    format: "yyyy-mm-dd"
  })
  window.start_load = function() {
    $('body').prepend('<di id="preloader2"></di>')
  }
  window.end_load = function() {
    $('#preloader2').fadeOut('fast', function() {
      $(this).remove();
    })
  }

  window.uni_modal = function($title = '', $url = '') {
    start_load()
    $.ajax({
      url: $url,
      error: err => {
        console.log()
        alert("An error occured")
      },
      success: function(resp) {
        if (resp) {
          $('#uni_modal .modal-title').html($title)
          $('#uni_modal .modal-body').html(resp)
          $('#uni_modal').modal('show')
          end_load()
        }
      }
    })
  }
  window.uni_modal_right = function($title = '', $url = '') {
    start_load()
    $.ajax({
      url: $url,
      error: err => {
        console.log()
        alert("An error occured")
      },
      success: function(resp) {
        if (resp) {
          $('#uni_modal_right .modal-title').html($title)
          $('#uni_modal_right .modal-body').html(resp)
          $('#uni_modal_right').modal('show')
          end_load()
        }
      }
    })
  }
  window.alert_toast = function($msg = 'TEST', $bg = 'success') {
    $('#alert_toast').removeClass('bg-success')
    $('#alert_toast').removeClass('bg-danger')
    $('#alert_toast').removeClass('bg-info')
    $('#alert_toast').removeClass('bg-warning')

    if ($bg == 'success')
      $('#alert_toast').addClass('bg-success')
    if ($bg == 'danger')
      $('#alert_toast').addClass('bg-danger')
    if ($bg == 'info')
      $('#alert_toast').addClass('bg-info')
    if ($bg == 'warning')
      $('#alert_toast').addClass('bg-warning')
    $('#alert_toast .toast-body').html($msg)
    $('#alert_toast').toast({
      delay: 3000
    }).toast('show');
  }
  window.load_cart = function() {
    $.ajax({
      url: 'admin/ajax.php?action=get_cart_count',
      success: function(resp) {
        if (resp > -1) {
          resp = resp > 0 ? resp : 0;
          $('.item_count').html(resp)
        }
      }
    })
  }
  $('#login_now').click(function() {
    uni_modal("LOGIN", 'login.php')
  })
  $(document).ready(function() {
    load_cart()
  })
</script>
<!-- Bootstrap core JS-->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>