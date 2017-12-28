{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<section class="col-12 featured-products clearfix"  data-module-name="sameCategoryProduct" data-module-data="{$products|@json_encode}">
  <h2>
    {if $products|@count == 1}
      {l s='%s other product in the same category:' sprintf=[$products|@count] d='Modules.Categoryproducts.Shop'}
    {else}
      {l s='%s other products in the same category:' sprintf=[$products|@count] d='Modules.Categoryproducts.Shop'}
    {/if}
  </h2>
  {* <div>
      {foreach from=$products item="product"}
          {include file="catalog/_partials/miniatures/product.tpl" product=$product}
      {/foreach}
  </div> *}

  <carousel class="products" :per-page-custom="[[768, 3], [1024, 4], [2560, 4]]" navigation-enabled :pagination-padding="5">
    <slide v-for="product in modules.sameCategoryProduct" :key="product.id">
      <div is="product-miniature" :product='product'></div>
    </slide>
  </carousel>
</section>
