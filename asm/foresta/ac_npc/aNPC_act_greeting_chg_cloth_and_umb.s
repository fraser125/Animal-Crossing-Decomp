lbl_80532FB4:
/* 80532FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532FB8  7C 08 02 A6 */	mflr r0
/* 80532FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80532FC4  7C 7F 1B 78 */	mr r31, r3
/* 80532FC8  48 00 17 19 */	bl aNPC_act_get_chg_cloth_and_umb
/* 80532FCC  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80532FD0  28 00 00 FF */	cmplwi r0, 0xff
/* 80532FD4  40 82 00 0C */	bne lbl_80532FE0
/* 80532FD8  7F E3 FB 78 */	mr r3, r31
/* 80532FDC  4B FF F0 49 */	bl aNPC_setup_greeting_end
lbl_80532FE0:
/* 80532FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80532FE8  7C 08 03 A6 */	mtlr r0
/* 80532FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80532FF0  4E 80 00 20 */	blr 
