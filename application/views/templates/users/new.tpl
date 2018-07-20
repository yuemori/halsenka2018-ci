<h1>ユーザ登録</h1>

<form action="{$SITE_URL}/user/create/" method="post" class="shadow-sm p-3 mb-5 bg-white rounded">
  <div class="form-group">
    <label for="name">ユーザ名</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="ユーザ名" value="">
  </div>
  <div class="form-group">
    <label for="email">メールアドレス</label>
    <input type="email" class="form-control" id="email" name="email" placeholder="メールアドレス" value="">
  </div>

  <button type="submit" class="btn btn-success" value="submit">登録</button>
</form>
