import Vue from 'vue'
import BootstrapVue from 'bootstrap-vue'
import prestashop from 'prestashop'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

$('[data-module-name]').each(function () {
  prestashop.modules[$(this).data('module-name')] = $(this).data('module-data')
})

Vue.use(BootstrapVue)

Vue.component('product-miniature', {
  template: '#product-miniature-template',
  props: ['product'],
  data() {
    return {
      product: this.product
    }
  }
})

new Vue({
  el: '#wrapper',
  data: prestashop
})
