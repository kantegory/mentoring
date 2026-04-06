<script setup lang="ts">
import AsideComponent from '@/components/common/AsideComponent.vue'
import HeaderComponent from '@/components/common/HeaderComponent.vue'
</script>

<template>
  <div class="row">
    <header-component />
    <aside-component />
    <main class="col-12 col-xl-10">
      <slot />
    </main>
  </div>
</template>
