" define syntax highlight for aslan++ code
"
syntax keyword aslanppKeyword specification channel_model CCM ICM ACM entity on else import types symbols nonpublic noninvertible macros clauses equations body breakpoints new any where send receive over retract assert constraints goals forall exists Actor for
highlight link aslanppKeyword Keyword

syntax keyword aslanppConditional select on if else elseif then
highlight link aslanppConditional Conditional

syntax keyword aslanppFunction fresh iknows
highlight link aslanppFunction Function

syntax keyword aslanppBool true false
highlight link aslanppBool Boolean

syntax match aslanppOperator "\v\*-\>\*"
highlight link aslanppOperator Operator

syntax match aslanppOperator "\v\:\-"
highlight link aslanppOperator Operator

syntax match aslanppIdentifier "\v\?\w*"
highlight link aslanppIdentifier Identifier

syntax keyword aslanppRepeat while
highlight link aslanppRepeat Repeat

syntax keyword aslanppType fact message text agent
highlight link aslanppType Type

syntax match aslanppComment "\v\%.*$"
highlight link aslanppComment Comment

syntax match aslanppComment "\v\@.*$"
highlight link aslanppComment Comment

syntax match aslanppTodo "\v\%todo:.*$"
highlight link aslanppTodo Todo
