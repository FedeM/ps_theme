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
{block name='header_banner'}
    <div class="header-banner topbar">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                
                {* Parte izquierda: Horario y Teléfono *}
                <div class="col-auto topbar-left">
                    <span class="topbar-text">
                        Lun-Vie 9:00h - 19:00h 
                        <span class="separator">|</span> 
                        976 123 456
                    </span>
                </div>

                {* Parte derecha: Promo envíos *}
                <div class="col-auto topbar-right">
                    <span class="topbar-text promo">
                        Envíos gratuítos por compras SUPERIORES a 50€
                    </span>
                </div>

            </div>
        </div>
    </div>
{/block}

{block name='header_top'}
    <div class="header-top js-header-top">
        <div class="container">
            <div class="row align-items-center py-3">
                
                <div class="col-md-3 col-6">
                   
                </div>

                <div class="col-md-6 d-none d-md-block">
                    <div id="search_widget" class="search-widget-custom">
                        <form method="get" action="{$urls.pages.search}">
                            <input type="hidden" name="controller" value="search">
                            <input type="text" name="s" placeholder="Buscar productos..." aria-label="Buscar">
                            <button type="submit">
                                <i class="material-icons search"></i>
                            </button>
                        </form>
                    </div>
                </div>

                <div class="col-md-3 col-6 d-flex justify-content-end align-items-center header-icons-custom">
                    
                    <a href="{$urls.pages.my_account}" class="header-icon-item" title="Mi cuenta">
                        <img src="{$urls.theme_assets}img/icon-profile.svg" alt="Mi cuenta" class="user-icon-img">
                    </a>

                    <a href="{$urls.pages.cart}" class="header-icon-item" title="Carrito">
                        <div class="cart-icon-wrapper">
                            <img src="{$urls.theme_assets}img/icon-cart.svg" alt="Carrito" class="cart-icon-img">
                            <span class="cart-count">{$cart.products_count|default:0}</span>
                        </div>
                    </a>
                </div>
                
            </div>
        </div>
    </div>

    <div class="header-menu-section">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-auto">
                    <button
                        class="navbar-toggler mobile-menu-toggler"
                        type="button"
                        data-toggle="modal"
                        data-target="#mobile_top_menu_wrapper"
                    >
                    <i class="material-icons">menu</i>
                    </button>
                </div>

                <div class="col">
                    {hook h='displayNavFullWidth'}
                </div>
                {include file='_partials/modal-menu.tpl'}
            </div>
        </div>
    </div>

{/block}
