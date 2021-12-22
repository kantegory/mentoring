<template>
  <div class="about">
    <h1>This is an about page</h1>

    {{ hello }}

    <div v-for="post in posts" :key="post.id" style="border: 1px solid #333; padding: 1.25rem 1.5rem; margin: 1rem">
      <p><strong>{{ post.title }}</strong></p>
      <p><small>{{ post.author }}</small></p>
    </div>
  </div>
</template>
<script>
import requestMixin from '@/mixins/requestMixin'

export default {
  mixins: [requestMixin],

  data () {
    return {
      hello: 'Hello'
    }
  }
}
</script>
