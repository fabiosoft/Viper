//
//  PersonPresenter.swift
//  Prova
//
//  Created Diego Caridei on 03/08/18.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class PersonPresenter: PersonPresenterProtocol, PersonInteractorOutputProtocol {
    
    var wireframe: PersonWireframeProtocol?
    weak internal var view: PersonViewProtocol?
    var interactor: PersonInteractorInputProtocol?
    private let router: PersonWireframeProtocol

    init(interface: PersonViewProtocol, interactor: PersonInteractorInputProtocol?, router: PersonWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
    func didRetrievePeople(_ people: [PersonEntity]) {
        view?.show(people: people)
    }
    func viewDidLoad() {
        interactor?.fetchPeople()
    }
    func save(person: PersonEntity) {
        interactor?.savePerson(person: person)
    }
    
}