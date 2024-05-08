<!-- <div class="container-fluid">
    <form action="" id="book-form">
        <div class="form-group">
            <input name="package_id" type="hidden" value="" >
            <p>Booking Date</p>
            <input type="date" class='form form-control' required   name='schedule'><br>
            <input type="text" class="form form-control" required name="full_name" placeholder="Full Name"><br>
            <input type="text" class="form form-control" required name="gender" placeholder="Gender"><br>
            <input type="number" class="form form-control" required name="adult" placeholder="Adult"><br>
            <input type="number" class="form form-control" required name="children" placeholder="Children"><br>
            
        </div>
    </form>
</div> -->

<div class="container-fluid">
    <form action="" id="book-form">
        <div class="form-group">
            <input name="package_id" type="hidden" value="<?php echo $_GET['package_id'] ?>" >
            <p>Booking Date</p>
            <input type="date" class="form-control" required name="schedule"><br>
            <input type="text" class="form-control" required name="full_name" placeholder="Full Name"><br>
            <input type="tel" class="form-control" required name="phone_number" placeholder="Phone Number"><br>
            <input type="email" class="form-control" required name="email" placeholder="Email"><br>
            <select class="form-control" required name="gender">
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select><br>
            <input type="number" class="form-control" required name="adult" placeholder="Adult"><br>
            <input type="number" class="form-control" required name="children" placeholder="Children"><br>
        </div>
        <!-- <button type="submit" class="btn btn-primary">Submit</button> -->
    </form>
</div>

<!-- <script>
    $(function(){
        $('#book-form').submit(function(e){
            e.preventDefault();
            start_loader()
            $.ajax({
                url:_base_url_+"classes/Master.php?f=book_tour",
                method:"POST",
                data:$(this).serialize(),
                dataType:"json",
                error:err=>{
                    console.log(err)
                    alert_toast("an error occured",'error')
                    end_loader()
                },
                success:function(resp){
                    if(typeof resp == 'object' && resp.status == 'success'){
                        alert_toast("Book Request Successfully sent.")
                        $('.modal').modal('hide')
                    }else{
                        console.log(resp)
                        alert_toast("an error occured",'error')
                    }
                    end_loader()
                }
            })
        })
    })
</script> -->

<script>
    $(function(){
        $('#book-form').submit(function(e){
            e.preventDefault();
            start_loader();
            $.ajax({
                url: _base_url_ + "classes/Master.php?f=book_tour",
                method: "POST",
                data: $(this).serialize(),
                dataType: "json",
                error: function(err) {
                    console.log(err);
                    alert_toast("An error occurred", 'error');
                    end_loader();
                },
                success: function(resp) {
                    if(typeof resp == 'object' && resp.status == 'success') {
                        alert_toast("Book Request Successfully sent.");
                        $('.modal').modal('hide');
                    } else {
                        console.log(resp);
                        alert_toast("An error occurred", 'error');
                    }
                    end_loader();
                }
            });
        });
    });
</script>