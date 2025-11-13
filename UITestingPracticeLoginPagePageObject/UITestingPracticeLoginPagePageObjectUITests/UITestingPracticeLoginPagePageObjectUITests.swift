//
//  UITestingPracticeLoginPagePageObjectUITests.swift
//  UITestingPracticeLoginPagePageObjectUITests
//
//  Created by mac on 13.11.2025.
//

import XCTest

//Структура для локаторов
struct LoginPage { //описывает экран (Page Oobject) - все элементы и действия
    let app: XCUIApplication
    
    //локаторы (static let)
    struct Identifiers { //храним идентификаторы элементов
        static let emailField = "emailField"
        static let passwordField = "passwordField"
        static let loginButton = "loginButton"
        static let errorMessage = "errorMessage"
    }
    
    //элементы экрана
    var emailField: XCUIElement {app.textFields[Identifiers.emailField]}
    var passwordField: XCUIElement {app.secureTextFields[Identifiers.passwordField]}
    var loginButton: XCUIElement {app.buttons[Identifiers.loginButton]}
    var errorMessage: XCUIElement {app.staticTexts[Identifiers.errorMessage]}
    
    //методы (func)
    func enterCredentials(email: String, password: String) { //описывает действия пользователя
        emailField.tap()
        emailField.typeText(email)
        
        passwordField.tap()
        passwordField.typeText(password)
    }
    
    func tapLoginButton() {
        loginButton.tap()
    }
    
    func loginAs(email: String, password: String) { //описывает действия пользователя
        self.enterCredentials(email: email, password: password) //явно указывает вызов метода текущей структуры
        self.tapLoginButton() //self- ссылка на текущий экземпляр структуры
    }
}

//Возможные состояния (enum) - успех, ошибки
enum LoginState {
    case success //успех
    case invalidCredentials //ошибки
    case emptyFields //пустота
}

//Предусловия и постусловия
class BestTestCase: XCTestCase {
    var app: XCUIApplication!
    
    //предусловие
    override func setUp() {
        super.setUp()
        continueAfterFailure = false //Не продолжать после неудачи - если тест упал, останавливаемся
        app = XCUIApplication() //Создаем экземпляр приложения
        app.launch() //Запускаем приложение
    }
    
    //постусловие
    override func tearDown() {
        //"Убираем за собой" - закрываем приложение
        app.terminate()
        app = nil
        super.tearDown()
    }
}

//Тест-кейсы
class LoginTests: BestTestCase {
    
    //негативный кейс с не правильными данными
    func testInvalidCredentialsError() {
        //инициализация Page Object
        let loginPage = LoginPage(app: app)
        
        //шаги - ввод неверных данных
        loginPage.loginAs(email: "tes@est.com", password: "123456")
        
        //проверка результата
        XCTAssertTrue(loginPage.errorMessage.exists)
        XCTAssertEqual(loginPage.errorMessage.label, "Неверные email или пароль")
    }
    
    //негативный кейс с пустыми данными
    func testEmptyFieldsError() {
        //инициализация Page Object
        let loginPage = LoginPage(app: app)
        
        //шаги
        //оставляем пустые поля и нажимаем на кнопку
        loginPage.tapLoginButton()
        
        //проверка результата
        XCTAssertTrue(loginPage.errorMessage.exists)
        XCTAssertEqual(loginPage.errorMessage.label, "Введите ваш email и пароль")
    }
    
    //позитивный кейс с успешно введёнными данными
    func testLoginSuccess() {
        //инициализация Page Object
        let loginPage = LoginPage(app: app)
        
        //шаги
        //оставляем пустые поля
        loginPage.loginAs(email: "test@test.com", password: "654265")
        
        //проверка результата
        let welcomeText = app.staticTexts["welcomeText"]
        XCTAssertTrue(welcomeText.waitForExistence(timeout: 5))
        XCTAssertEqual(welcomeText.label, "Welcome!")
    }
}
