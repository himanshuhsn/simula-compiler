#include <stdio.h>
#include <stdlib.h>
#include "type.h"
#include "operator.h"
#include "keyword.h"

extern yylType yylval;

int main(void)
{
	int s;

	while( (s=yylex()) )
	{
		switch(s) {
			case ID : printf("<ID, %s> ", yylval.string);
						free (yylval.string);
						break;
			case NUM : printf("<NUM, %d> ",yylval.integer);
						break;
			case STRNG : printf("<STRNG, %s> ",yylval.string);
						free (yylval.string);
						break;

			/* operator printing */			
			case char_newline : printf("\n"); break;
			case op_stdassign : printf("<:=> "); break;
			case op_refassign : printf("<:-> "); break;
			case op_boolnot : printf("<OP_NOT> "); break;
			case op_booland : printf("<OP_AND> "); break;
			case op_boolor : printf("<OP_OR> "); break;
			case op_equal : printf("<=> "); break;
			case op_notequal : printf("<<>> "); break;
			case op_lessequal : printf("<<=> "); break;
			case op_greaterequal : printf("<>=> "); break;
			case op_less : printf("<<> "); break;
			case op_greater : printf("<>> "); break;
			case op_comment : printf("<OP_COMMENT> "); break;
			case op_leftparen : printf("<(> "); break;
			case op_rightparen : printf("<)> "); break;
			case op_semicolon : printf("<;> "); break;
			case op_plus : printf("<+> "); break;
			case op_minus : printf("<-> "); break;
			case op_mult : printf("<*> "); break;
			case op_div : printf("</> "); break;

			/* keyword printing */
			case key_activate : printf("<KEY_ACTIVATE> "); break;
			case key_after : printf("<KEY_AFTER> "); break;
			case key_array : printf("<KEY_ARRAY> "); break;
			case key_at : printf("<KEY_AT> "); break;
			case key_before : printf("<KEY_BEFORE> "); break;
			case key_begin : printf("<KEY_BEGIN> "); break;
			case key_boolean : printf("<KEY_BOOLEAN> "); break;
			case key_character : printf("<KEY_CHARACTER> "); break;
			case key_class : printf("<KEY_CLASS> "); break;
			case key_delay : printf("<KEY_DELAY> "); break;
			case key_do : printf("<KEY_DO> "); break;
			case key_else : printf("<KEY_ELSE> "); break;
			case key_end : printf("<KEY_END> "); break;
			case key_eqv : printf("<KEY_EQV> "); break;
			case key_external : printf("<KEY_EXTERNAL> "); break;
			case key_for : printf("<KEY_FOR> "); break;
			case key_go : printf("<KEY_GO> "); break;
			case key_goto : printf("<KEY_GOTO> "); break;
			case key_hidden : printf("<KEY_HIDDEN> "); break;
			case key_if : printf("<KEY_IF> "); break;
			case key_imp : printf("<KEY_IMP> "); break;
			case key_in : printf("<KEY_IN> "); break;
			case key_inner : printf("<KEY_INNER> "); break;
			case key_inspect : printf("<KEY_INSPECT> "); break;
			case key_integer : printf("<KEY_INTEGER> "); break;
			case key_is : printf("<KEY_IS> "); break;
			case key_long : printf("<KEY_LONG> "); break;
			case key_name : printf("<KEY_NAME> "); break;
			case key_new : printf("<KEY_NEW> "); break;
			case key_none : printf("<KEY_NONE> "); break;
			case key_notext : printf("<KEY_NOTEXT> "); break;
			case key_otherwise : printf("<KEY_OTHERWISE> "); break;
			case key_prior : printf("<KEY_PRIOR> "); break;
			case key_procedure : printf("<KEY_PROCEDURE> "); break;
			case key_protected : printf("<KEY_PROTECTED> "); break;
			case key_qua : printf("<KEY_QUA> "); break;
			case key_reactivate : printf("<KEY_REACTIVATE> "); break;
			case key_ref : printf("<KEY_REF> "); break;
			case key_short : printf("<KEY_SHORT> "); break;
			case key_step : printf("<KEY_STEP> "); break;
			case key_switch : printf("<KEY_SWITCH> "); break;
			case key_text : printf("<KEY_TEXT> "); break;
			case key_then : printf("<KEY_THEN> "); break;
			case key_this : printf("<KEY_THIS> "); break;
			case key_to : printf("<KEY_TO> "); break;
			case key_until : printf("<KEY_UNTIL> "); break;
			case key_value : printf("<KEY_VALUE> "); break;
			case key_virtual : printf("<KEY_VIRTUAL> "); break;
			case key_when : printf("<KEY_WHEN> "); break;
			case key_while : printf("<KEY_WHILE> "); break;
			case key_false : printf("<KEY_FALSE> "); break;
			case key_true : printf("<KEY_TRUE> "); break;
			case data_shortint : printf("<DATA_SHORTINT> "); break;
			case data_real : printf("<DATA_REAL> "); break;
			case data_longreal : printf("<DATA_LONGREAL> "); break;
			case data_bool : printf("<DATA_BOOL> "); break;
			case data_boolchar : printf("<DATA_BOOLCHAR> "); break;
			case key_outtext : printf("<KEY_OUTTEXT> "); break;
			case key_outimage : printf("<KEY_OUTIMAGE> "); break;
			case key_outreal : printf("<KEY_OUTREAL> "); break;
			case key_outint : printf("<KEY_OUTINT> "); break;

			//add the case for other keyword

			default : printf("%d ",s);
		}
	}

	return 0;
}
