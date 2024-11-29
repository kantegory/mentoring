// Простейшая реализация роутинга с использованием History API
class Router {
    constructor(routes) {
        this.routes = routes;
        this.init();
    }

    init() {
        window.onpopstate = () => {
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
        history.pushState({}, '', path);
        this.render();
    }

    render() {
        const path = window.location.pathname;
        const route = this.routes[path] || this.routes['/'];
        const content = document.getElementById('app');
        content.innerHTML = route();
    }
}