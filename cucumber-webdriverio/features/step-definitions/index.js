//Complete siguiendo las instrucciones del taller
var {Given} = require('cucumber');
var {When} = require('cucumber');
var {Then} = require('cucumber');
var {expect} = require('chai');

Given('I go to losestudiantes home screen', () => {
  browser.url('/');
  if($('button=Cerrar').isDisplayed()) {
    $('button=Cerrar').click();
  }
});

When('I open the login screen', () => {
  $('button=Ingresar').waitForExist(10000);
  $('button=Ingresar').waitForDisplayed(10000);
  $('button=Ingresar').click();
});

When('I fill a wrong email and password', () => {
  var cajaLogIn = $('.cajaLogIn');

  var mailInput = cajaLogIn.$('input[name="correo"]');
  mailInput.click();
  mailInput.setValue('wrongemail@example.com');

  var passwordInput = cajaLogIn.$('input[name="password"]');
  passwordInput.click();
  passwordInput.setValue('123467891');
});

When('I try to login', () => {
  var cajaLogIn = $('.cajaLogIn');
  cajaLogIn.$('button=Ingresar').click();
});

When(/^I fill with (.*) and (.*)$/ , (email, password) => {
    var cajaLogIn = $('.cajaLogIn');
  
   cajaLogIn.$('input[name="correo"]').waitForExist(5000);
   cajaLogIn.$('input[name="correo"]').waitForDisplayed(5000);
   var mailInput = cajaLogIn.$('input[name="correo"]');
   mailInput.click();
   mailInput.keys(email);
  
   var passwordInput = cajaLogIn.$('input[name="password"]');
   passwordInput.click();
   passwordInput.keys(password);
});

When(/^I fill the inputs with (.*) with (.*) with (.*) and (.*)$/ , (name, lastname, email, password) => {
   var cajaSignUp = $('.cajaSignUp');
  
   cajaSignUp.$('input[name="nombre"]').waitForExist(5000);
   cajaSignUp.$('input[name="nombre"]').waitForDisplayed(5000);
   
   var nameInput = cajaSignUp.$('input[name="nombre"]');
   nameInput.click();
   nameInput.keys(name);

   var lastnameInput = cajaSignUp.$('input[name="apellido"]');
   lastnameInput.click();
   lastnameInput.keys(lastname);

   var mailInput = cajaSignUp.$('input[name="correo"]');
   mailInput.click();
   mailInput.keys(email);

   var selectMaster = cajaSignUp.$('select[name="idPrograma"]');
   var optionMaster = selectMaster.$('option[value="12"]');
   optionMaster.click();
   
   var passwordInput = cajaSignUp.$('input[name="password"]');
   passwordInput.click();
   passwordInput.keys(password);

   var checkTerms = cajaSignUp.$('input[name="acepta"]');
   checkTerms.click();
});

When('I try to register', () => {
    var cajaSignUp = $('.cajaSignUp');
    cajaSignUp.$('button=Registrarse').click();
});

Then('I expect to not be able to login', () => {
    $('.aviso.alert.alert-danger').waitForDisplayed(5000);
});

Then('I expect to see {string}', error => {
    $('.aviso.alert.alert-danger').waitForDisplayed(5000);
    var alertText = browser.$('.aviso.alert.alert-danger').getText();
    expect(alertText).to.include(error);
});

Then('I expect to obtain {string}', a => {
    $('.dropDown').waitForExist(10000);
    $('.dropDown').$('button[id="cuenta"]').click();
    $('.dropdown-menu').waitForExist(15000);
    var buttonText = browser.$('.dropdown-menu').$('li').$('a').getText();
    expect(buttonText).to.include(a);

});

Then('I expect to see message {string}', h2 => {
    $('h2').waitForExist(5000);
    var h2Text = browser.$('h2').getText();
    expect(h2Text).to.include(h2);
});

Then('I expect to see error {string}', error => {
    $('.aviso.alert.alert-danger').waitForDisplayed(5000);
    var alertText = browser.$('.aviso.alert.alert-danger').getText();
    expect(alertText).to.include(error);
});