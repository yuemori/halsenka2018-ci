{* 整数の表示 *}
<div>
  <span>int</span>
  <span>{$int_sample}</span>
</div>

{* 文字列の表示 *}
<div>
  <span>string</span>
  <span>{$string_sample}</span>
</div>

{* 配列要素の表示 *}
<div>
  <span>array[0]</span>
  <span>{$array_sample.0}</span>
  <span>array[1]</span>
  <span>{$array_sample.1}</span>
  <span>array[2]</span>
  <span>{$array_sample.2}</span>
</div>

{* 連想配列の表示 *}
<div>
  <span>key_array</span>
  <span>{$key_array_sample.k1}</span>
  <span>{$key_array_sample.k2}</span>
</div>

{* オブジェクトの表示 *}
<div>
  <span>object.member</span>
  <span>{$object_sample->hoge}</span>
</div>

{* オブジェクトのメソッド呼び出し表示 *}
<div>
  <span>object.method</span>
  <span>{$object_sample->getValue()}</span>
</div>

{* 変数から渡された値の表示 *}
<div>
  <span>$test_val_?</span>
  <span>{$test_val_1}</span>
  <span>{$test_val_2}</span>
  <span>{$test_val_3}</span>
</div>

{* テンプレート内部のみでの変数の宣言 *}
<div>
  {assign var="template_val" value=12345}
  <span>template variable</span>
  <span>{$template_val}</span>
</div>
