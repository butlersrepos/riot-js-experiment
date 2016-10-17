<todo-adder>
    <h1>I'm real!</h1>
    this.on('mount', function() {
        console.log('ADDER MOUNTED');
        this.opts.itemService.fetch()
            .then( items => {
                console.log(`ADDER used the itemService and saw ${items.length} items.`);
            });
    });
</todo-adder>