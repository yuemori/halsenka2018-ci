<h1>ユーザ検索</h1>

<form action="{$SITE_URL}/user/search" method="get" class="shadow-sm p-3 mb-5 bg-white rounded">
  <div class="form-group row">
    <label for="name" class="col-2">ユーザ名</label>
    <div class="col-10">
      <input type="text" class="form-control" id="name" name="name" placeholder="ユーザ名">
    </div>
  </div>

  <button type="submit" class="btn btn-primary">検索</button>
</form>

{if count($users) > 0 }
<table class="table">
    <thead>
        <tr>
            <th>ユーザID</th>
            <th>ユーザ名</th>
            <th>Eメール</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1</td>
            <td>yuemori</td>
            <td>yuemori@aiming-inc.com</td>
        </tr>
    </tbody>
</table>
{/if}
