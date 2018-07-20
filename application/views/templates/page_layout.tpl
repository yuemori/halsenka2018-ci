<!doctype html>
<html lang="ja">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">

    <title>HAL Web専科</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container">
        <a class="navbar-brand" href="{$SITE_URL}">HAL Web専科</a>
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="{$SITE_URL}/user/index">ユーザ一覧</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{$SITE_URL}/user/new">ユーザ登録</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{$SITE_URL}/user/search">ユーザ検索</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container mt-4">
{include $INCLUDE_PAGE}
    </div>
  </body>
</html>
