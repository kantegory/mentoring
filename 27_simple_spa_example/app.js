const routes = {
    '/': () => mainPage,
    '/about': () => aboutPage,
    '/contacts': () => contactsPage,
};

// history router
const router = new Router(routes);
// hash router: откомментируйте, чтобы подключить
// const router = new HashRouter(routes);
