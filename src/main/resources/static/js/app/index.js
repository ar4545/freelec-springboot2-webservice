var main = {
        init : function(){
            var _this = this;
            $('#btn-save').on('click', function(){
                _this.save();
            });
        },
        save : function(){
            var data = {
                title : $('#title').val(),
                content : $('#content').val(),
                author : $('#author').val()
            };

            $.ajax({
                type : 'POST',
                url : '/api/v1/posts',
                dataType : 'json',
                contentType : 'application/json; charset=utf-8',
                data : JSON.Stringify(data)
            }).done(function(){
                alert('글이 등록되었습니다.');
                window.location.href = "/";
            }).fail(function err(){
                alert(JSON.Stringify(error));
            });
        }
};

main.init();