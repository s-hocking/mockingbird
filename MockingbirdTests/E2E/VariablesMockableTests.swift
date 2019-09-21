//
//  VariablesMockableTests.swift
//  MockingbirdTests
//
//  Created by Andrew Chang on 9/9/19.
//

import Foundation
import Mockingbird
@testable import MockingbirdTestsHost

// MARK: - Mockable declarations

private protocol MockableVariablesContainer: Mock {
  var readonlyVariableOverwrittenAsReadwrite: Bool { get set }
  var uninitializedVariable: Bool { get set }
  
  var computedVariable: Bool { get }
  var computedMutableVariable: Bool { get set }
  
  var computedVariableWithDidSetObserver: Bool { get set }
  var computedVariableWithWillSetObserver: Bool { get set }
  
  var storedVariableWithImplicitType: Bool { get set }
  var storedVariableWithExplicitType: Bool { get set }
  
  // Technically not mockable, but `VariablesContainer` should still conform.
  var constantVariableWithImplicitType: Bool { get }
  var constantVariableWithExplicitType: Bool { get }
  
  var weakVariable: VariablesContainer? { get set }
}
extension VariablesContainerMock: MockableVariablesContainer {}
