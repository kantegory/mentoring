<script setup>
// Import our custom CSS
import 'bootstrap/dist/css/bootstrap.min.css'

// Import all of Bootstrap’s JS
import * as bootstrap from 'bootstrap'

import { RouterView } from 'vue-router'
</script>

<template>
  <RouterView />
</template>

<style>
body {
  height: 100%;
  min-height: 100vh;
  max-height: 100vh;
}
</style>
