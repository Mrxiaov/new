<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="reply.css">
</head>
<body>
    <div class="box">
        <div class="list">
        <?php include_once("../reply/list_reply.php");?>
        
        </div>
    </div>

    <div class="add_post">
        <form action="reply_ok.php" method="post">
            <input type="text" name="content" class="reply" placeholder="回复" id="reply">
            <input type="submit" value="回复" class="sub " >
        </form>
    </div>
</body>
</html>