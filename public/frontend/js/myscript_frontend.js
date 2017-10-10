$(document).ready(function($) {
    $('.cart-update').click(function() {
        //lấy giá trị id lúc click vào update

        var rowId = $(this).attr('id');
        var qty = $(this).parent().parent().find(".qty").val();
        var token = $("input[name='_token']").val();
      
        if(qty>20)
        {
            var r = confirm("Bạn chắc chắn chứ ?");
            if(r==true)
            {
                $.ajax({
                    url: 'cap-nhat',
                    type: 'post',
                    dataType: 'text',
                    cache: false,
                    data: { "_token": token, "id": rowId, "qty": qty },
                    success: function(data) {
                        if (data == "oke") {
                            window.location = "gio-hang";
                        }
                        else
                            alert("lỗi");
                    }

                });
            }  
           
        }
        else
        {
             $.ajax({
                    url: 'cap-nhat',
                    type: 'post',
                    dataType: 'text',
                    cache: false,
                    data: { "_token": token, "id": rowId, "qty": qty },
                    success: function(data) {
                        if (data == "oke") {
                            window.location = "gio-hang";
                        }
                        else
                            alert("lỗi");
                    }

                });
        }
        
        
      
    });
        
});
$('div.alert').delay(10000).slideUp();