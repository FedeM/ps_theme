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


{block name='pagination_page_list'}
  {if $pagination.should_be_displayed}
    <nav class="pagination-container d-flex align-items-center justify-content-between flex-wrap">
      
      <div class="showing-results">
        {l s='Mostrando %from%-%to% de %total% artículos' d='Shop.Theme.Catalog' sprintf=[
          '%from%' => $pagination.items_shown_from,
          '%to%' => $pagination.items_shown_to,
          '%total%' => $pagination.total_items
        ]}
      </div>

      <ul class="page-list pagination mt-4 mb-2">
        {foreach from=$pagination.pages item="page"}
          <li class="page-item 
            {if $page.current}active{/if} 
            {if $page.type === 'spacer'}disabled{/if} 
            {if $page.type === 'previous'}prev-item{/if} 
            {if $page.type === 'next'}next-item{/if} 
            {if $page.type === 'page'}number-item{/if}">
            
            {if $page.type === 'spacer'}
              <span class="page-link spacer">&hellip;</span>
            {else}
              <a
                rel="{if $page.type === 'previous'}prev{elseif $page.type === 'next'}next{else}nofollow{/if}"
                href="{$page.url}"
                class="page-link {['disabled' => !$page.clickable, 'js-search-link' => true]|classnames}"
              >
                {if $page.type === 'previous'}
                  <span class="material-icons">keyboard_arrow_left</span>
                  <span class="text-label">{l s='Anterior' d='Shop.Theme.Actions'}</span>
                {elseif $page.type === 'next'}
                  <span class="text-label">{l s='Siguiente' d='Shop.Theme.Actions'}</span>
                  <span class="material-icons">keyboard_arrow_right</span>
                {else}
                  {$page.page}
                {/if}
              </a>
            {/if}
          </li>
        {/foreach}
      </ul>
    </nav>
  {/if}
{/block}
