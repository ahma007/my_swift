//главный файл с UI тестами
//  UITestingPracticeUITests.swift
//  UITestingPracticeUITests
//
//  Created by mac on 04.11.2025.
//

import XCTest

class UITestingPracticeUITests: XCTestCase {
    
    //Эта переменная будет доступна во всех тестах
    var app: XCUIApplication!
    
    //Этот метод запускается ПЕРЕД КАЖДЫМ тестом (т.е. предусловие теста, как в ручном тесте)
    override func setUp() {
        super.setUp()
        
        //Не продолжать после неудачи - если тест упал, останавливаемся
        continueAfterFailure = false
        
        //Создаем экземпляр приложения
        app = XCUIApplication()
        
        //Дополнительные настройки запуска
        app.launchArguments = ["UITesting"]
        app.launchEnvironment = ["ENV": "TEST"]
        
        //Запускаем приложение
        app.launch()
    }
    
    //Этот метод запускается ПОСЛЕ КАЖДОГО теста (т.е. постусловие)
    override func tearDown() {
        //"Убираем за собой" - закрываем приложение
        app.terminate()
        super.tearDown()
    }
    
    //Это ПЕРВЫЙ тестовый метод
    func testSuccessfulLogin() {
        // 1. НАХОДИМ ЭЛЕМЕНТЫ
        let emailField = app.textFields["emailField"]
        let passwordField = app.secureTextFields["passwordField"]
        let loginButton = app.buttons["loginButton"]
        
        // 2. ПРОВЕРЯЕМ, что элементы есть на экране
        XCTAssertTrue(emailField.exists, "Поле email должно быть на экране")
        XCTAssertTrue(passwordField.exists, "Поле пароля должно быть на экране")
        XCTAssertTrue(loginButton.exists, "Кнопка входа должна быть на экране")
        
        // 3. ВВОДИМ ДАННЫЕ
        emailField.tap() // Нажимаем на поле email
        emailField.typeText("test@test.com") // Вводим текст
        
        passwordField.tap() // Нажимаем на поле пароля
        passwordField.typeText("654265") // Вводим пароль
        
        // 4. НАЖИМАЕМ КНОПКУ
        loginButton.tap()
        
        // 5. ПРОВЕРЯЕМ РЕЗУЛЬТАТ
        let welcomeText = app.staticTexts["welcomeText"]
        
        // Ждем появления текста (максимум 5 секунд)
        let exists = welcomeText.waitForExistence(timeout: 5)
        XCTAssertTrue(exists, "После входа должен появиться приветственный текст")
        
        // Дополнительная проверка
        if exists {
            XCTAssertEqual(welcomeText.label, "Welcome!")
        }
    }
    
    //Тестирование ошибочных сценариев
    //некорректный ввод данных 
    func testFailedLogin() {
        // 1. НАХОДИМ ЭЛЕМЕНТЫ
        let emailField = app.textFields["emailField"]
        let passwordField = app.secureTextFields["passwordField"]
        let loginButton = app.buttons["loginButton"]
        
        // 2. ПРОВЕРЯЕМ, что элементы есть на экране
        XCTAssertTrue(emailField.exists, "Поле email должно быть на экране")
        XCTAssertTrue(passwordField.exists, "Поле пароля должно быть на экране")
        XCTAssertTrue(loginButton.exists, "Кнопка входа должна быть на экране")
        
        // 3. ВВОДИМ ДАННЫЕ
        emailField.tap() // Нажимаем на поле email
        emailField.typeText("tes@est.com") // Вводим текст неправильно
        
        passwordField.tap() // Нажимаем на поле пароля
        passwordField.typeText("123456") // Вводим не верный пароль
        
        // 4. НАЖИМАЕМ КНОПКУ
        loginButton.tap()
        
        // 5. ПРОВЕРЯЕМ РЕЗУЛЬТАТ
        let errorMessage = app.staticTexts["Неверные email или пароль"]
        
        // Ждем появления текста (максимум 5 секунд)
        let exists = errorMessage.waitForExistence(timeout: 5)
        XCTAssertTrue(exists, "Должна появиться подсказка")
        
        // Дополнительная проверка
        if exists {
            XCTAssertEqual(errorMessage.label, "Неверные email или пароль")
        }
    }
    
    //пустые данные
    func testEmptyDataLogin() {
        // 1. НАХОДИМ ЭЛЕМЕНТЫ
        let emailField = app.textFields["emailField"]
        let passwordField = app.secureTextFields["passwordField"]
        let loginButton = app.buttons["loginButton"]
        
        // 2. ПРОВЕРЯЕМ, что элементы есть на экране
        XCTAssertTrue(emailField.exists, "Поле email должно быть на экране")
        XCTAssertTrue(passwordField.exists, "Поле пароля должно быть на экране")
        XCTAssertTrue(loginButton.exists, "Кнопка входа должна быть на экране")
        
        // 3. ВВОДИМ ДАННЫЕ
        emailField.tap() //Нажимаем на поле email
        emailField.typeText("") //Не вводим текст
        
        passwordField.tap() //Нажимаем на поле пароля
        passwordField.typeText("") //Не вводим пароль
        
        // 4. НАЖИМАЕМ КНОПКУ
        loginButton.tap()
        
        // 5. ПРОВЕРЯЕМ РЕЗУЛЬТАТ
        let errorMessage = app.staticTexts["Введите ваш email и пароль"]
        
        // Ждем появления текста (максимум 5 секунд)
        let exists = errorMessage.waitForExistence(timeout: 5)
        XCTAssertTrue(exists, "Должна появиться подсказка")
        
        // Дополнительная проверка
        if exists {
            XCTAssertEqual(errorMessage.label, "Введите ваш email и пароль")
        }
    }
}
