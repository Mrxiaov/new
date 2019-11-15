var id = location.search;

window.onload = function () {


    $.ajax({
        type: "GET",
        dataType: "JSON",
        url: "PHP/list_reply.php" + id,
        success: function (response) {
            var resLen = response.length
            $('#well').remove()
            
            var well = `
            <div class="well well-lg" id="well">
                <div class="contheader">
                    <span class="h3">`+ response[0].theme + `</span>
                    <div class="changes">
                        <span>发布于 `+ response[0].time + `</span>
                        <span>作者 <a href="#">`+ response[0].username+`</a></span>
                        <span>714 次浏览</span>
                        <span> 来自 问答</span>
                    </div>
                </div>
                <hr>
                <p>`+ response[0].content + `</p>
            </div>
            `
            $('.showcontent').append(well)
            $('.cell').remove()
            if (resLen < 2) {
                $('.listbody').append('<h2 class="text text-center text-muted">暂时还没评论哦</h2>');
                return false
            }
            for (let i = 1; i < resLen; i++) {
                var cell = `
                    <div class="cell">
                    <a href="#" class="user_avatar"><img src="upload/227713.jpg" alt=""></a>
                    <a href="#" class="time"><span>`+ response[i].time_reply + `</span></a>
                    <div class="title">
                        <span class="glyphicon glyphicon-comment"></span>
                        <span href="#" class="title text-left">`+ response[i].content_reply + `</span>
                    </div>
               
            `
            $('.listbody').append(cell)
            }

        },
        async: false,
    });
}