{* Smartyにおけるループ *}

<div>
  <div>テンプレート内のみでのループ</div>
  {section name=i start=0 loop=5 step=1}
    <div>
      {$smarty.section.i.index}
    </div>
  {/section}
</div>
<hr />

<div>
  <div>通常の配列の表示</div>
  {foreach from=$array_sample key=k item=v}
    <div>
      <span>Key:{$k}</span>
      <span>Val:{$v}</span>
    </div>
  {/foreach}
</div>
<hr />

<div>
  <div>連想配列の表示</div>
  {foreach from=$key_array_sample key=k item=v}
    <div>
      <span>Key:{$k}</span>
      <span>Val:{$v}</span>
    </div>
  {/foreach}
</div>
<hr />

