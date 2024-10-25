/**
 * @name Public methods called by tests
 * @description Finds all public methods that are called by test functions.
 * @kind problem
 * @id javascript/public-methods-called-by-tests
 * @tags maintainability, testing
 * @problem.severity recommendation
 * @precision high
 */

import javascript

/**
 * Predicate to identify public methods.
 */
predicate isPublicMethod(Function f) {
  f.isPublic()
}

from Function test, Method m
where test.isTestFunction() and 
      isPublicMethod(m) and
      m.getACall().getEnclosingFunction() = test
select m, "Public method called by a test."

