%{
#include "operator.h"
#include "keyword.h"
%}

%%

[0-9]* {return INTEGER;}

":="  {return op_stdassign;}
":-"  {return op_refassign;}
"not"  {return op_boolnot;}
"and"  {return op_booland;}
"or"  {return op_boolor;}
"="  {return op_equal;}
"<>"  {return op_notequal;}
"<="  {return op_lessequal;}
">="  {return op_greaterequal;}
"<"  {return op_less;}
">"  {return op_greater;}
"!"  {return op_comment;}

"short integer"  {return key_data;}
"real"  {return key_data;}
"long real"  {return key_data;}
"boolean"  {return key_data;}
"boolean character"  {return key_data;}

"activate"  {return key_activate;}
"after"  {return key_after;}
"array"  {return key_array;}
"at"  {return key_at;}
"before"  {return key_before;}
"begin"  {return key_begin;}
"character"  {return key_character;}
"class"  {return key_class;}

"delay"  {return key_delay;}
"do"  {return key_do;}
"else"  {return key_else;}
"end"  {return key_end;}
"eqv"  {return key_eqv;}
"external"  {return key_external;}
"for"  {return key_for;}
"go"  {return key_go;}
"goto"  {return key_goto;}

"hidden"  {return key_hidden;}
"if"  {return key_if;}
"imp"  {return key_imp;}
"in"  {return key_in;}
"inner"  {return key_inner;}
"inspect"  {return key_inspect;}
"integer"  {return key_integer;}
"is"  {return key_is;}
"long"  {return key_long;}

"Name"  {return key_Name;}
"new"  {return key_new;}
"none"  {return key_none;}
"notext"  {return key_notext;}
"otherwise"  {return key_otherwise;}
"prior"  {return key_prior;}
"procedure"  {return key_procedure;}
"protected"  {return key_protected;}
"qua"  {return key_qua;}

"reactivate"  {return key_reactivate;}
"ref"  {return key_ref;}
"short"  {return key_short;}
"step"  {return key_step;}
"switch"  {return key_switch;}
"text"  {return key_text;}
"then"  {return key_then;}
"this"  {return key_this;}
"to"  {return key_to;}

"until"  {return key_until;}
"value"  {return key_value;}
"virtual"  {return key_virtual;}
"when"  {return key_when;}
"while"  {return key_while;}
"false"  {return key_false;}
"true"  {return key_true;}

///insert identifier here

%% 
