<template>
    <div class="d-flex w-100 h-100 justify-content-center align-items-center">
        <form class="d-flex flex-column my-5">
            <input
                type="text"
                class="my-1"
                placeholder="username"
            >

            <input
                type="password"
                class="my-1"
                placeholder="password"
            >

            <button
                type="submit"
                class="btn btn-primary"
                @click.prevent="setLogin"
            >
                Войти
            </button>
        </form>
    </div>
</template>

<script>
export default {
  name: 'AuthPage',

  methods: {
    setLogin() {
        localStorage.setItem('login', true)

        this.$router.push({ name: "privateNotes" })
    }
  },

  mounted() {
    if (localStorage.login) {
        this.$router.push({ name: "privateNotes" })
    }
  }
}
</script>
