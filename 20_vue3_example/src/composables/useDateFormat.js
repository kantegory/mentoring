import { ref, onMounted } from 'vue'

const useDateFormat = (value) => {
    const date = ref(null)

    onMounted(() => {
        date.value = new Date(value).toLocaleDateString('ru-RU')
    })

    return date
}

export default useDateFormat;
