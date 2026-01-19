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
<div class="container">
  <div class="row">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div>
<div class="footer-container">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-12 mb-lg-4 custom-contact-column">
          <ul class="contact-links-list">
            <li>
              <img src="{$urls.theme_assets}img/phone.svg" alt="phone icon" class="contact-icon"/>
              <a href="tel:+5491112345678">+34 976 123 456</a>
            </li>
            <li>
              <img src="{$urls.theme_assets}img/email.svg" alt="email icon" class="contact-icon"/>
              <a href="mailto:info@dominio.com">info@dominio.com</a>
            </li>
            <li>
              <img src="{$urls.theme_assets}img/location.svg" alt="location icon" class="contact-icon"/>
              <span>PC/ Calle del cliente nº 45<br>50011, Zaragoza</span>
            </li>
          </ul>
      </div>
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
    </div>
    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}

      <div class="col-12 text-right footer-copyright">
        <p>Todos los derechos reservados - Desarrollado por VGS</p>
      </div>
    </div>
  </div>
</div>
