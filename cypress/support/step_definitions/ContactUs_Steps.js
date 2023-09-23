
import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When('I type first name', () => {
    cy.get("form#contact_form > input[name='first_name']").type('Umo')
})
When('I type last name', () => {
    cy.get("form#contact_form > input[name='last_name']").type('Eno')
})
When('I enter email address', () => {
    cy.get("form#contact_form > input[name='email']").type('ukam22@gmail.com')
})
When('I add comment', () => {
    cy.get("form#contact_form > textarea[name='message']").type('i want to know much about webdriverUniversity admission and tuition fee')
})
When('I click on submit button', () => {
    cy.get("[type='submit']").click()
})
Then('I should be presented with a successful contact us submission message', () => {
    cy.get("div#contact_reply > h1").should('contain', 'Thank You for your Message!')
})
Then('I should be presented with an error message', () => {
    cy.get("body").contains("Error: all fields are required")
})
When('I type a specific first name {string}', (FirstName) => {
    cy.get("form#contact_form > input[name='first_name']").type(FirstName)
})
When('I type a specific last name {string}', (LastName) => {
    cy.get("form#contact_form > input[name='last_name']").type(LastName)
})
When('I enter a specific email address {string}', (mail) => {
    cy.get("form#contact_form > input[name='email']").type(mail)
})
When('I add a specific comment {string} and number {int} within the comment input field', (word , number) => {
    cy.get("form#contact_form > textarea[name='message']").type(word + " " + number)
})
When('I type a first name {word} and a last name {string}', (FirstName, LastName)=> {
    cy.get("form#contact_form > input[name='first_name']").type(FirstName)
    cy.get("form#contact_form > input[name='last_name']").type(LastName)
})
When('I type a mail {string} and a comment {string}', (mail, comment) => {
    cy.get("form#contact_form > input[name='email']").type(mail)
    cy.get("form#contact_form > textarea[name='message']").type(comment)
})
Then('I should be presented with header text {string}', (message) => {
    cy.xpath("//h1 | //body").contains(message)
})