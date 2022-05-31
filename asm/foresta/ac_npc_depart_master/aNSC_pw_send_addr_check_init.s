lbl_805525DC:
/* 805525DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805525E0  7C 08 02 A6 */	mflr r0
/* 805525E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805525E8  4B FF B2 F9 */	bl aNSC_set_pw_name_str
/* 805525EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805525F0  7C 08 03 A6 */	mtlr r0
/* 805525F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805525F8  4E 80 00 20 */	blr 
