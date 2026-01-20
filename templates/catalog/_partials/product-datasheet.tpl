{if isset($product.features) && $product.features}
  <section class="product-features my-4">
    {foreach from=$product.features item=feature name=featLoop}
      {if ($smarty.foreach.featLoop.index % 2 == 0)}
        {assign var=nextIndex value=$smarty.foreach.featLoop.index + 1}
        {if isset($product.features[$nextIndex])}
          {assign var=nextFeature value=$product.features[$nextIndex]}
        {else}
          {assign var=nextFeature value=null}
        {/if}

        <div class="d-flex py-2 border-bottom
          {if ($smarty.foreach.featLoop.index / 2) % 2 != 0}bg-info-bg{/if}">
          
          <div class="w-50 pe-3">
            <strong>{$feature.name}</strong> <span class="product-feature-value">{$feature.value|escape:'htmlall'|nl2br nofilter}</span>
          </div>

          {if $nextFeature}
            <div class="w-50 ps-3">
              <strong>{$nextFeature.name}</strong> <span class="product-feature-value">{$nextFeature.value|escape:'htmlall'|nl2br nofilter}</span>
            </div>
          {else}
            <div class="w-50 ps-3">&nbsp;</div>
          {/if}
        </div>
      {/if}
    {/foreach}
  </section>
{/if}