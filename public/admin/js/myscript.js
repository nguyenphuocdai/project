    // Cấu hình chung cho ajax 
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });


    $('div.alert').delay(10000).slideUp();

    function xacnhanxoa(msg) {
        if (window.confirm(msg)) {
            return true;
        }
        return false;
    }
      $(function() {
        $('#datetimepicker1').datetimepicker({
          language: 'pt-BR'
        });
      });
       $(function() {
        $('#datetimepicker2').datetimepicker({
          language: 'pt-BR'
        });
      });
    // $(function () {
    //     $('.datepicker').datepicker({ format: "dd//mm/yyyy" }).on('changeDate', function (ev) {
    //         $(this).datepicker('hide');
    //     });
    // });






    // $('body').on('click','.del_image', function(e){
    //     var url = "http://localhost/Project/admin/products/delimage/";
    //     var idHinh = $(this).parent().find("img").attr("idHinh");
    //     var img = $(this).parent().find("img").attr("src");
    //     var rid = $(this).parent().find("img").attr("id");
    //     var formData = new FormData();
    //     formData.append('idHinh', idHinh);
    //     formData.append('urlHinh', img);
    //     $.ajax({
    //         url: url+idHinh,
    //         type: 'POST',
    //         cache: false,
    //         data: formData,
    //         processData: false,
    //         contentType: false,
    //     }).done(function(data){
    //         if(data=="Oke"){
    //             $('#'+rid).remove();
    //         }
    //         else
    //         {
    //             alert('Lỗi');
    //         }
    //     });

    // });
    $('body').on('click', '#del_image', function(e) {
        var url = $(this).data('url');
        var id = $(this).data('id');
        var formData = new FormData();
        formData.append('id', id);

        $.ajax({
            url: url,
            type: 'POST',
            cache: false,
            data: formData,
            processData: false,
            contentType: false,
        }).done(function(data) {
            if (data == "Oke") {
                $('#del').remove();
            } else {
                alert('Lỗi');
            }
        });

    });

    // $(document).ready(function() {
    //             $('body').on('click', '.del_image', function(e){
    //                 e.preventDefault();
    //                 var url = $(this).data('url'); // có url để xóa;
    //                 var id = $(this).data('id'); 
    //                 var formData = new FormData();
    //                 formData.append('id',id);
    //                 // Dùng cái upload form này sau cứ dùng lại thôi
    //                  $.ajax({
    //                             url: url,
    //                             type: 'POST',
    //                             cache: false,
    //                             processData: false,
    //                             contentType: false,
    //                             data: formData
    //                 }).done(function(res){
    //                     console.log(res);
    //                 });
    //             });
    //              function uploadForm(url, formData){
    //                 return $.ajax({
    //                             url: url,
    //                             type: 'POST',
    //                             cache: false,
    //                             processData: false,
    //                             contentType: false,
    //                             data: formData
    //                            });
    //             }
    //         });
    $(document).ready(function() {
        $('#addImages').click(function() {
            // đoạn này ko co chó tác6 dụng
            // cây cấu trúc doom chỉ thêm vào sau khi form đc khởi tạo nhưng ko có nghĩa là nó load lại đủ đoạn code đó 
            // lên cái name này ko tồn tại và ko gửi lên
            // :) nhầm nhọt gửi rùi e thử tạo vài cái xem nó gửi lên 1 hay nhiềuok a
            // vẫn gửi 1 ảnh uh gửi thử 2-3 cái xem multi
            $('#insert').append('<div class="form-group"><label>Hình ảnh</label><input type="file" name="fEditDetail[]"></div>');
        });
    });
