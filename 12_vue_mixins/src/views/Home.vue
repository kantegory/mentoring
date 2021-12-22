<template>
  <div class="home">
    <p><input type="number" name="a" id="a" v-model="a"></p>
    <p><input type="number" name="b" id="b" v-model="b"></p>

    <button @click="count(a, b)">Произвести расчёт</button>

    <p v-if="result">Результат: <strong>{{ result }}</strong></p>
  </div>
</template>

<script>
// @ is an alias to /src
import exampleMixin from '@/mixins/exampleMixin'

export default {
  name: 'Home',

  mixins: [exampleMixin],

  data () {
    return {
      a: 0,
      b: 0,
      result: 0
    }
  }
}
</script>
