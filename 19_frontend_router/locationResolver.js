const app = document.querySelector("#app")

const locationResolver = (location) => {
    switch (location) {
        case "#/users/":
            app.innerHTML = `
                <h1>${location}</h1>

                <p>Страница с пользователями</p>
            `
            break
        case "#/login/":
            app.innerHTML = `
                <h1>${location}</h1>

                <p>Страница логина</p>
            `
            break
        case "#/":
            app.innerHTML = `
                <h1>${location}</h1>

                <p>Главная страница</p>
            `
            break
    }
}

window.addEventListener('load', () => {
    const location = window.location.hash

    if (location) {
        locationResolver(location)
    }
})
