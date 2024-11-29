const navbarComponent = ({ items }) => {
    let renderedItems = '';

    items.forEach((item) => {
        const isActive = window.location.pathname === item.href

        renderedItems += `
            <li class="nav-item">
                <a
                    class="nav-link ${isActive ? 'active' : ''}"
                    ${isActive ? 'aria-current="page"' : ''}
                    href="${item.href}"
                    data-link
                >
                    ${item.text}
                </a>
            </li>
        `
    });
    
    return `
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">SimpleSPA</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        ${renderedItems}
                    </ul>
                </div>
            </div>
        </nav>
    `
};
