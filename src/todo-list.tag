<todo-list>
    <ol name="thelist">
        <li each={ items }>
            { this.title }
        </li>
    </ol>
    <todo-adder item-service={ this.opts.itemService }></todo-adder>

    this.opts.itemService.fetch()
        .then( items => {
            this.items = items;
            // update is called automatically on event handlers
            // but this isn't one so we call it explicitly
            this.update();
        });
</todo-list>
