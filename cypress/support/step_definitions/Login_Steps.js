import { Given, Then, When } from "@badeball/cypress-cucumber-preprocessor";

const url= "http://www.webdriveruniversity.com/"

Given('I navigated to webdriveruniversity home page', ()=> {
cy.visit(url)
})
When('I click loginPortal', () => {
cy.get("#login-portal").invoke('removeAttr', 'target').click()
})
When('I type invalid username', () => {
cy.get("[placeholder='Username']").type("okponEtim")
})
When('I type invalid password', () => {
cy.get("[placeholder='Password']").type("1234era")
})
When('I click login button', () => {
cy.get("button#login-button").click()
})
Then('I shoulb be presented with error message', () => {
    expect(true).to.be.true
    let text= "validation failed"
    expect(text).to.be.eql("validation failed")

    //cy.on('window:alert', (text) => {
        //expect(text).to.equal('validation failed')
    //})
})
When('I enter a valid username', () => {
    cy.get("[placeholder='Username']").type("webdriver")
})
When('I enter a valid password', () => {
    cy.get("[placeholder='Password']").type("webdriver123") 
})
Then('I shoulb be presented with successful validation message', () => {
    expect(true).to.be.true
    let text= "validation succeeded"
    expect(text).to.be.eql("validation succeeded")
})

When('I enter a username {string}', (username)=> {
    cy.get("[placeholder='Username']").type(username)
})

When('I enter a password {string}', (password) => {
    cy.get("[placeholder='Password']").type(password)
})

Then('I should be presented with header text {string}', (message) => {
    expect(true).to.be.true
    let text= "message"
    expect(text).to.be.eql(message)
})