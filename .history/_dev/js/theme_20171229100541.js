import prestashop from 'prestashop'
import VueCarousel from 'VueCarousel'
import Vue from 'vue'
import BootstrapVue from 'bootstrap-vue'
import SocialSharing from 'vue-social-sharing'
import Avatar from 'vue-avatar'
import VueStringFilter from 'vue-string-filter'
import filters from './filters'
import components from './components'

// global methods
import updateCart from './global-methods/updateCart'
import showCartModal from './global-methods/showCartModal'
import hideCartModal from './global-methods/hideCartModal'

prestashop.blockcart = prestashop.blockcart || {}
prestashop.blockcart.modalData = '<h1>Hello cart</h1>'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

$('[data-module-name]').each(function () {
  prestashop.modules[$(this).data('module-name')] = $(this).data('module-data')
})

Vue.use(BootstrapVue)
Vue.use(VueStringFilter)
Vue.use(SocialSharing)

filters()
components()

new Vue({
  el: '#app',
  data: prestashop,
  components: {
    'avatar': Avatar,
    'carousel': window.VueCarousel.Carousel,
    'slide': window.VueCarousel.Slide
  },
  methods: {
    showCartModal,
    hideCartModal,
  updateCart},
  created: function () {
    this.updateCart()
  }
})
