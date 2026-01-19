{**
 * Copyright since 2007 PrestaShop SA and Contributors
 * PrestaShop is an International Registered Trademark & Property of PrestaShop SA
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.md.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to https://devdocs.prestashop.com/ for more information.
 *
 * @author    PrestaShop SA and Contributors <contact@prestashop.com>
 * @copyright Since 2007 PrestaShop SA and Contributors
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 *}
<article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}">
  <div class="thumbnail-container">
    <a href="{$product.url}">
      <img src="{$product.cover.bySize.home_default.url}" alt="{$product.cover.legend}">
    </a>

    {foreach from=$product.flags item=flag}
      {if $flag.type === 'new'}
        <span class="badge badge-new">NUEVO</span>
      {elseif $flag.type === 'out_of_stock'}
        <span class="badge badge-out-of-stock">FUERA DE STOCK</span>
      {/if}
    {/foreach}
  </div>

  <div class="product-description">
    {block name='product_name'}
      <h3 class="product-title"><a href="{$product.url}">{$product.name}</a></h3>
    {/block}

    {block name='product_price_and_shipping'}
      {if $product.show_price}
        <div class="product-price-and-shipping">
          <span class="price">{$product.price}</span>
          {if $product.has_discount}
            <span class="regular-price">{$product.regular_price}</span>
            <span class="discount-percentage">{$product.discount_percentage}</span>
          {/if}
        </div>
      {/if}
    {/block}
  </div>
</article>