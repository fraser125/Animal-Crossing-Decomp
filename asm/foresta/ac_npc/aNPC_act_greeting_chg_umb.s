lbl_80532F74:
/* 80532F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532F78  7C 08 02 A6 */	mflr r0
/* 80532F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80532F84  7C 7F 1B 78 */	mr r31, r3
/* 80532F88  48 00 16 91 */	bl aNPC_act_get_chg_umb
/* 80532F8C  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80532F90  28 00 00 FF */	cmplwi r0, 0xff
/* 80532F94  40 82 00 0C */	bne lbl_80532FA0
/* 80532F98  7F E3 FB 78 */	mr r3, r31
/* 80532F9C  4B FF F0 89 */	bl aNPC_setup_greeting_end
lbl_80532FA0:
/* 80532FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80532FA8  7C 08 03 A6 */	mtlr r0
/* 80532FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80532FB0  4E 80 00 20 */	blr 
