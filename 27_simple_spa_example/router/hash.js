// Простейшая реализация роутинга с использованием window.location.hash
class HashRouter {
    constructor(routes) {
        this.routes = routes;
        this.init();
    }

    init() {
        window.onhashchange = () => {
            this.render();
        };

        document.addEventListener('click', (event) => {
            if (event.target.matches('[data-link]')) {
                event.preventDefault();
                const path = event.target.getAttribute('href');
                this.navigate(path);
            }
        });

        this.render(); // вызов изначального рендеринга
    }

    navigate(path) {
        window.location.hash = path;
        this.render();
    }

    render() {
        const path = window.location.hash.slice(1) || '/';
        const route = this.routes[path] || this.routes['/'];
        const content = document.getElementById('app');
        content.innerHTML = route();
    }
}
