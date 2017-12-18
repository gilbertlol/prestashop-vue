<script type="text/x-template" id="product-miniature-template">
  <article class="product-miniature"
    @mouseover="onHover = true" @mouseleave="onHover = false"
    :data-id-product="product.id_product"
    :data-id-product-attribute="product.id_product_attribute"
    itemscope itemtype="http://schema.org/Product">
      <a :href="product.url" class="thumbnail product-thumbnail">
        <b-img-lazy
          v-bind:src="imgBig"
          :alt="product.cover.legend"
          :width="product.cover.medium.width"
          :height="product.cover.medium.height"
          fluid center blank-color="#ccc" />
      </a>
      <div>

      </div>
      <h2 class="h2" itemprop="name">
        <a :href="product.url">
          {literal}{{product.name}}{/literal}
        </a>
      </h2>

      <div class="product-description-short" itemprop="description" v-html="product.description_short">
        {literal}{{product.description_short}}{/literal}
      </div>

      <div class="product-list-actions">
        <a
          v-if="product.add_to_cart_url"
          class = "add-to-cart"
          :href  = "product.add_to_cart_url"
          rel   = "nofollow"
          :data-id-product="product.id_product"
          :data-id-product-attribute="product.id_product_attribute"
          data-button-action="add-to-cart"
        >{l s='Add to cart' d='Shop.Theme.Actions'}</a>
      </div>

      <div class="variant-links">
        <a v-for="variant in product.main_variants" :href="variant.url"
          :class="variant.type" v-bind:style="{literal}{backgroundColor: variant.html_color_code}{/literal}"
        >
          {literal}{{variant.name}}{/literal}
        </a>
      </div>

      <div v-if="product.show_price" class="product-price-and-shipping">
        <div v-if="product.has_discount">
          <span v-if="product.has_discount" class="regular-price">
            {literal}{{product.regular_price}}{/literal}
          </span>
          <span v-if="product.discount_type === 'percentage'" class="discount-percentage discount-product">
            {literal}{{product.discount_percentage}}{/literal}
          </span>
          <span v-else-if="product.discount_type === 'amount'" class="discount-amount discount-product">
            {literal}{{product.discount_amount_to_display}}{/literal}
          </span>
        </div>
        <span itemprop="price" class="price">
          {literal}{{product.price}}{/literal}
        </span>
      </div>

      <ul class="product-flags">
        <li v-for="flag in product.flags" :class="flag.type">
          {literal}{{flag.label}}{/literal}
        </li>
      </ul>

      <span v-if="product.show_availability" :class='product.availability'>
        {literal}{{product.availability_message}}{/literal}
      </span>
  </article>
</script>