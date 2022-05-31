lbl_8057C25C:
/* 8057C25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C260  7C 08 02 A6 */	mflr r0
/* 8057C264  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C268  4B FF B2 F9 */	bl aNSC_set_pw_name_str
/* 8057C26C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C270  7C 08 03 A6 */	mtlr r0
/* 8057C274  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C278  4E 80 00 20 */	blr 
