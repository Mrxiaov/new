var page = 1


window.onload = function () {
    getData(1)
}

function getData(p) {
    if (p >= 1) {
        page = p;
        $.ajax({
            type: "get",
            url: "PHP/lists.php?p=" + p,
            dataType: "JSON",
            success: function (response) {

                $('.cell').remove();
                for (let i = 0; i < response.length; i++) {
                    var cell = `
                    <div class="cell">
                            <a href="#" class="user_avatar"><img src="upload/227713.jpg" alt=""></a>
                            <a href="#" class="time"><span>`+ response[i].time + `</span></a>
                            <div class="title">
                                <span class="glyphicon glyphicon-comment"></span>
                                <a href="../Forum/reply.html?id=`+ response[i].Id +`" class="title">`+ response[i].theme + `</a>
                            </div>
                        </div>
                    `;
                    $('.list').append(cell);

                }

            },
            error: function (err) {
                alert('再也没有了哦！')
            },
            async: false,
        });
    }

}

