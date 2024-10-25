import javascript

from CallExpr call, Function f
where call.getCallee().getName() = "pressActionKey" and 
      f.isTestFunction() and 
      call.getEnclosingFunction() = f
select call, "Test calls pressActionKey."
