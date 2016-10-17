describe('Todo List', function() {
    var mockService = {
        fetch: function() {
            console.log('Mock fetch infiltrated successfully!');
            return Promise.resolve([
                {title: 'one'},
                {title: 'two'},
                {title: 'threee'}
            ]);
        }
    };

    beforeEach(function(done) {
        var testee = document.createElement('todo-list');
        document.body.appendChild(testee);

        riot.mount('todo-list', {itemService: mockService});
        setTimeout(done, 1);
    });

    it('has a list of items', function() {
        var listItems = document.querySelectorAll('todo-list li');
        expect(listItems).to.have.lengthOf(3);
    });
});