<template>
    <b-input
        :value="value"
        :type="type"
        :placeholder="placeholder"
        @input="inputData"
    />
</template>

<script>
export default {
    name: 'CustomInput',

    props: {
        placeholder: {
            type: String,
            required: false
        },
        type: {
            type: String,
            required: false
        },
        value: {
            type: String,
            required: false
        }
    },

    methods: {
        inputData (newValue) {
            this.$emit('input', newValue)
        }
    }
}
</script>
