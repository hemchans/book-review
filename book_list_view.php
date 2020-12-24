<?php
require_once 'book_list.php';

function GetBookListView($bookList, $sortKey, $sortOrder) {
    if ($sortOrder != 0 && $sortOrder != 1)
        exit();
    $tokens[ASCENDING] = '&#8593;';
    $tokens[DESCENDING] = '&#8595;';
    $orderToken = $tokens[$sortOrder];
    
    $sortToken = array();
    $columnNames = array('title', 'authors', 'rating');
    for ($i = 0; $i < count($columnNames); $i++)
        $sortToken[] = (strcmp($sortKey, $columnNames[$i]) == 0) ? $orderToken : '';
    
    $body = <<<XML
        <table class="master">
            <tr>
                <th>
                    <p class="title">
                        <a data-toggle="tooltip" title="Sort on Title" href="index.php?sort=title">Title</a>$sortToken[0]
                    </p>
                </th>
                <th>
                    <p class="title">
                        <a data-toggle="tooltip" title="Sort on Author(s)" href="index.php?sort=authors">Author(s)</a>$sortToken[1]
                    </p>
                </th><th>
                    <p class="title">
                        <a data-toggle="tooltip" title="Sort on Rating" href="index.php?sort=rating">Rating</a>$sortToken[2]
                    </p>
                </th>
            </tr>
        XML;
    
    foreach ($bookList as $book) {
        $body = $body.<<< _END
        <tr>
            <td>
                <p class="title">
                    <a href="index.php?id=$book->id">$book->title</a>
                </p>
            </td>
            <td><p class="authors">$book->authors</p></td>
            <td><p class="authors">$book->rating</p></td>
        </tr>
        _END;
    }
    $body = $body.'</table>';
    return $body;
}
?>