/**
 * @name Functions longer than 10 lines
 * @description Finds functions that are longer than 10 lines in the codebase.
 * @kind problem
 * @id javascript/long-functions
 * @problem.severity recommendation
 */

import javascript

from Function f
where f.getNumLines() > 10
select f, "Function is longer than 10 lines."
