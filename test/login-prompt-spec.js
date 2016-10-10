describe('Login Prompt', function() {
    beforeEach(function () {
        var testee = document.createElement('login-prompt');
        document.body.appendChild(testee);
        riot.mount('login-prompt');
    });
    
    it('should have a login button', function () {
        var suspectedButton = document.querySelector('login-prompt button.login');
        expect(suspectedButton).to.not.be.null;
    });
});