/**
 * @name Functions longer than 10 lines
 * @description Finds functions that are longer than 10 lines in the codebase.
 * @kind problem
 * @id javascript/long-functions
 * @problem.severity recommendation
 */

import javascript

predicate howLong(Function function) {
    function.getNumLines() > 10
}

from Function function
where howLong(function)
select f, "Longer than 10 lines."
