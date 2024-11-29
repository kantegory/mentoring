const mainPage = `
    ${navbarComponent({ items })}

    <section class="row container mx-auto my-2">
        <div class="col-4">
            ${cardComponent({ content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus odio nobis voluptate, facere minus ratione nemo veniam sunt vitae inventore, corrupti temporibus et. Aperiam eos iure vitae culpa numquam molestias.' })}
        </div>
        <div class="col-4">
            ${cardComponent({ content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus odio nobis voluptate, facere minus ratione nemo veniam sunt vitae inventore, corrupti temporibus et. Aperiam eos iure vitae culpa numquam molestias.' })}
        </div>
        <div class="col-4">
            ${cardComponent({ content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus odio nobis voluptate, facere minus ratione nemo veniam sunt vitae inventore, corrupti temporibus et. Aperiam eos iure vitae culpa numquam molestias.' })}
        </div>
    </section>
`;
    