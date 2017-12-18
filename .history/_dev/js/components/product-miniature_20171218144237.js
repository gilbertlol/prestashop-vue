import Vue from 'vue'

var productMiniature = Vue.extend({
  template: '#product-miniature-template',
  props: ['product'],
  data: function () {
    return {
      imgBig: this.product.cover.medium.url,
      onHover: false,
      zoomStyle: {},
      mainImgStyle: {
        opacity: 1
      }
    }
  },
  methods: {
    changeImg: function (event) {
      if (event) {
        this.imgBig = event.target.dataset.bigImg
      }
    },
    moveBG: function (event) {
      let elementZoom = event.target

      let e = {
        w: elementZoom.offsetWidth,
        h: elementZoom.offsetHeight
      }

      let c = {
        x: Math.round((event.clientX - (container.offsetLeft - window.scrollX)) / (e.w / 100)),
        y: Math.round((event.clientY - (container.offsetTop - window.scrollY)) / (e.h / 100))
      }

      imgZoom.style.backgroundPosition = c.x + '% ' + c.y + '%'
    }
  }
})

export default productMiniature
