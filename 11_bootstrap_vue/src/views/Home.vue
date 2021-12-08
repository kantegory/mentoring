<template>
    <b-container class="home mt-3">
        <h1>
            Hello, {{ msg }}
        </h1>

        <custom-input v-model="msg" />
    </b-container>
</template>

<script>
// @ is an alias to /src
import CustomInput from '@/components/CustomInput'

export default {
    name: 'Home',

    data () {
        return {
            msg: ''
        }
    },

    components: {
        CustomInput
    }
}
</script>
