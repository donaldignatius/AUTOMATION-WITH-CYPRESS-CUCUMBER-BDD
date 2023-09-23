import { Given, When } from "@badeball/cypress-cucumber-preprocessor";

const url = "http://www.webdriveruniversity.com/"
Given('I navigated to WebdriverUniversity homepage', () => {
    cy.visit(url)
})
When('I click contact us button', () => {
    cy.contains('CONTACT US').invoke('removeAttr', 'target').click()
})
