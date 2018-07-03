{* Smarty における条件分岐 *}
{* PHPと基本何も変わりません *}
{* 論理演算子 && || も普通に利用できます。 *}
<div>
{if $foo == "bar"}
  foo は bar です。
{else}
  foo は bar じゃない。
{/if}
</div>


<div>
{if $foo != "bar"}
  foo は bar じゃない。
{else}
  foo は bar です。
{/if}
</div>


{* 特殊な条件の記述 *}
{* hoge が 2 で割り切れる時真（TRUE） *}
{*
   ループのカウンタと組み合わせて利用する事で
   N行に一回ヘッダを表示する、とか使う機会が多いかも？

   ループカウンタの参照方法は
   section に name で名前を付けて
   $smarty.section.[name].index

   section name=loopname
   なら
   $smarty.section.loopname.index
   で参照可能
 *}
<div>
  {if $hoge is div by 2}
    hoge は 2 で割り切れます！
  {/if}
</div>

<div>
  {section name=i start=0 loop=16 step=1}
    <div>
      {$smarty.section.i.index}
      {if $smarty.section.i.index is div by 4}
        は４で割り切れる
      {/if}
    </div>
  {/section}
</div>

