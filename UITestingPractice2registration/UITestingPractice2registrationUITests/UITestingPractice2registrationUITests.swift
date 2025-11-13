//
//  UITestingPractice2registrationUITests.swift
//  UITestingPractice2registrationUITests
//
//  Created by mac on 10.11.2025.
//

import XCTest

final class UITestingPractice2registrationUITests: XCTestCase {
    
    var app: XCUIApplication!

    override func setUpWithError() throws {super.setUp()
        
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

    override func tearDownWithError() throws {
        app.terminate()
        super.tearDown()
    }

    //Проверка позитивного тестового сценария
    func testCompleteRegistrationFlow() {
        //Шаг 1: НАХОДИМ ЭЛЕМЕНТЫ
        let usernameField = app.textFields["usernameField"]
        let emailField = app.textFields["emailField"]
        let passwordField = app.secureTextFields["passwordField"]
        let signUpButton = app.buttons["signUpButton"]
        
        //Шаг 2: Проверяем, что элементы есть на экране
        XCTAssertTrue(usernameField.exists, "Поле username должно быть на экране")
        XCTAssertTrue(emailField.exists, "Поле email должно быть на экране")
        XCTAssertTrue(passwordField.exists, "Поле пароля должно быть на экране")
        XCTAssertTrue(signUpButton.exists, "Кнопка входа должна быть на экране")
        
        //Шаг 3: Заполняем данные
        usernameField.tap()
        usernameField.typeText("Ryan")
        
        emailField.tap()
        emailField.typeText("test@test.com")
        
        passwordField.tap()
        passwordField.typeText("4265")
        
        //Шаг 4: Регистрируемся нажав на кнопку
        signUpButton.tap()
        
        //Шаг 5: Проверяем результат
        let welcomeText = app.staticTexts["welcomeText"]
        
        //Шаг 6: Ждем появления текста (максимум 10 секунд)
        let exists = welcomeText.waitForExistence(timeout: 10)
        XCTAssertTrue(exists, "После входа должен появиться приветственный текст")
        
        //Дополнительная проверка
        if exists {
            XCTAssertEqual(welcomeText.label, "Welcome!")
        }
    }
}
