# 19_frontend_router

Примеры реализации клиентской маршрутизации (SPA-роутинга) на ванильном JavaScript без использования тяжелых сторонних фреймворков.

## Рассмотренные подходы

1. **Hash-based роутинг**:
   - `locationExample.html` и `locationResolver.js` — отслеживание изменения хэша через событие `window.onhashchange` (`#/about`, `#/contact`).
2. **History API роутинг**:
   - `historyExample.html` и `historyResolver.js` — работа с реальными путями URL с использованием методов `window.history.pushState` и события `window.onpopstate`.

## Просмотр

Откройте `.html` файлы в браузере (для History API рекомендуется использовать локальный веб-сервер, например `npx serve`).
