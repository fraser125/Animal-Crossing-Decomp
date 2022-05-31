lbl_8039D514:
/* 8039D514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039D518  7C 08 02 A6 */	mflr r0
/* 8039D51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039D520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039D524  3B E0 00 00 */	li r31, 0
/* 8039D528  93 C1 00 08 */	stw r30, 8(r1)
/* 8039D52C  7C 7E 1B 78 */	mr r30, r3
/* 8039D530  4B FF D9 89 */	bl mEv_CheckTitleDemo
/* 8039D534  2C 03 00 00 */	cmpwi r3, 0
/* 8039D538  40 82 00 08 */	bne lbl_8039D540
/* 8039D53C  3B E0 00 02 */	li r31, 2
lbl_8039D540:
/* 8039D540  7F C3 F3 78 */	mr r3, r30
/* 8039D544  7F E4 FB 78 */	mr r4, r31
/* 8039D548  4B FF FE 59 */	bl init_event
/* 8039D54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039D550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039D554  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039D558  7C 08 03 A6 */	mtlr r0
/* 8039D55C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039D560  4E 80 00 20 */	blr 
