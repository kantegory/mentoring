<template>
  <v-row>
    <v-col v-for="epicItem in epicItems" :key="epicItem.identificator" cols="6">
      <v-card
        elevation="2"
        class="px-2 py-5"
      >
        <v-row>
          <v-col cols="4">
            <v-img :src="epicItem.image" />
          </v-col>

          <v-col cols="8">
              <v-card-text>
                {{ epicItem.caption }}
              </v-card-text>
              <v-card-text>
                {{ epicItem.fullDate }}
              </v-card-text>
          </v-col>
        </v-row>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>
const apiKey = 'pv7mgIb4MCWKU5a8q0Zm8phM3KZiCaKdOXA0Hmth'
const apiUrl = 'https://api.nasa.gov/EPIC'

export default {
  name: 'Nasa',

  data: () => ({
    epicItems: []
  }),

  methods: {
    async loadEpicItems () {
      try {
        const response = await this.axios
          .get(`${apiUrl}/api/natural?api_key=${apiKey}`)

        console.log(response)

        if (response.status !== 200) {
          throw new Error(response.status)
        }

        // пройдёмся по полученному массиву данных и
        // приведём его к тому виду, с которым будет
        // удобно работать
        const epicItems = response.data.map((epicItem) => {
          epicItem.fullDate = epicItem.date

          const date = new Date(epicItem.date)

          // собираем дату в нужном виде
          const year = date.getFullYear()

          const month = String(date.getMonth() + 1).length > 1
            ? date.getMonth() + 1
            : `0${date.getMonth() + 1}`

          const day = String(date.getDate()).length > 1
            ? date.getDate()
            : `0${date.getDate()}`

          epicItem.date = `${year}/${month}/${day}`

          // получаем картинку
          epicItem.image =
            `${apiUrl}/archive/natural/${epicItem.date}/png/${epicItem.image}.png?api_key=${apiKey}`

          return epicItem
        })
        this.epicItems = epicItems
      } catch (e) {
        console.error('AN API ERROR', e)
      }
    }
  },

  created () {
    this.loadEpicItems()
  }
}
</script>
