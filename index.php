<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to Kanika's book reviews</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1 class="title">
    Welcome to my website where I will share brief summaries of books as a I read them. You can use that to decide whether you want to read the book or not. Thank you for visiting!<br><br>
</h1>
<?php
    require_once 'book_list.php';
    require_once 'book_list_view.php';
    require_once 'book_view.php';
    
    if (isset($_GET['id'])) {
        $bookId = intval($_GET['id']);
        echo GetBookView(GetBook($bookId));
    }
    elseif (isset($_GET['sort'])) {
        $newSortKey = $_GET['sort'];
        $newOrder = ASCENDING;
        
        $oldOrder = $_COOKIE['order'];
        $oldSortKey = $_COOKIE['sort'];
        if (strcmp($oldSortKey, $newSortKey) == 0)
            $newOrder = ($oldOrder + 1) % 2;
        
        if (0 == strcasecmp('title', $newSortKey)) {
            echo GetBookListView(GetBookListSortedOnTitle($newOrder), $newSortKey, $newOrder);
        }
        elseif (0 == strcasecmp('authors', $newSortKey)) {
            echo GetBookListView(GetBookListSortedOnAuthor($newOrder), $newSortKey, $newOrder);
        }
        elseif (0 == strcasecmp('rating', $newSortKey)) {
            echo GetBookListView(GetBookListSortedOnRating($newOrder), $newSortKey, $newOrder);
        }
        
        setcookie('sort', $newSortKey, time() + 60*60*24);
        setcookie('order', $newOrder, time() + 60*60*24);
    }
    else {
        echo GetBookListView(GetBookListSortedOnId(ASCENDING), 'id', ASCENDING);
        
        setcookie('sort', 'id', time() + 60*60*24);
        setcookie('order', ASCENDING, time() + 60*60*24);
    }
?>

   <script>
    $(document).ready(function(){
      $('[data-toggle="tooltip"]').tooltip();
    });
</script>

</body>
</html>