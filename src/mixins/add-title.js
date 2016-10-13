var addTitleMixin =  {
    init: function() {
        console.log(this);
        var title = document.createElement('h1');
        title.className = 'mixin-title';
        
        this.name = this.root.localName;
        title.innerHTML = this.name;
        
        this.root.insertBefore(title, this.root.firstChild);
    }
}