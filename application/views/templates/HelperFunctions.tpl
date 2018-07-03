<div>
date_format の実験
  <div>
    現在時刻 {$ti|date_format:"%Y-%m-%d (%A) %H:%M:%S"}
  </div>
  <div>
    ちなみに、現在時刻は $smarty.now でも参照できます。
    {$smarty.now|date_format:"%Y-%m-%d (%A) %H:%M:%S"}
  </div>
</div>


<hr />
<div>
  HTMLタグを含んだ文字列変数。
  <div>
    <p>escape無しだとこうなる</p>
    {$tag_string}
  </div>
  <div>
    <p>escape無すると。。。</p>
    {$tag_string|escape}
  </div>
</div>


<hr />
<div>
  stripの実験
  <pre>
    stripなしだとこんな感じで出力されます。
    右クリック「ソース表示」でご覧下さい。
    ソース内の改行コードが装飾に影響を与える事もあるので、
    テンプレート全体をstripするのオススメ。
    ＊但し、改行コードが意味を持つ、スクリプトとかを囲んじゃうと動かなくなる事もあるので要注意！
  </pre>
  <pre>
    {strip}
      stripで囲まれるとこうなる。
      右クリック「ソース表示」でご覧下さい。
      この部分はテンプレートでは改行されてましたが、
      出力される時に改行コードが消されてます。
    {/strip}
  </pre>
</div>




<hr />
{literal}
<div>
  literalの実験
  <pre>
  literal で囲むとSmartyのテンプレート解析をスキップできるので、
  テンプレート内に "{foreach }" とかが書けるようになります。
  スタイルシートとかでは多様するので、覚えておくと良いかも？
  </pre>
</div>
{/literal}
