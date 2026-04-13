class NotesApi {
  constructor(instance) {
    this.API = instance
  }

  getAll = async () => {
    return this.API({
      url: '/notes',
    })
  }

  createNote = async (data) => {
    return this.API({
      method: 'POST',
      url: '/notes',
      data,
      headers: {
        'Content-Type': 'application/json',
      },
    })
  }

  patchNote = async (id, data) => {
    return this.API({
      method: 'PATCH',
      url: `/notes/${id}`,
      data,
      headers: {
        'Content-Type': 'application/json',
      },
    })
  }
}

export default NotesApi
