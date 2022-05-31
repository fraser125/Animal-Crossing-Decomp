lbl_8055EB78:
/* 8055EB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EB7C  7C 08 02 A6 */	mflr r0
/* 8055EB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EB84  4B FF BC C5 */	bl aNSC_set_pw_name_str
/* 8055EB88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055EB8C  7C 08 03 A6 */	mtlr r0
/* 8055EB90  38 21 00 10 */	addi r1, r1, 0x10
/* 8055EB94  4E 80 00 20 */	blr 
