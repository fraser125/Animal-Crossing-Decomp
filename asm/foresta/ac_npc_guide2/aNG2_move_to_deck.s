lbl_80555D7C:
/* 80555D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555D80  7C 08 02 A6 */	mflr r0
/* 80555D84  3C A0 80 65 */	lis r5, lit_801@ha /* 0x80649628@ha */
/* 80555D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555D8C  C0 25 96 28 */	lfs f1, lit_801@l(r5)  /* 0x80649628@l */
/* 80555D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555D94  7C 9F 23 78 */	mr r31, r4
/* 80555D98  93 C1 00 08 */	stw r30, 8(r1)
/* 80555D9C  7C 7E 1B 78 */	mr r30, r3
/* 80555DA0  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 80555DA4  4B E1 A6 E5 */	bl cKF_FrameControl_passCheck_now
/* 80555DA8  2C 03 00 01 */	cmpwi r3, 1
/* 80555DAC  40 82 00 10 */	bne lbl_80555DBC
/* 80555DB0  80 7E 09 C0 */	lwz r3, 0x9c0(r30)
/* 80555DB4  38 00 00 01 */	li r0, 1
/* 80555DB8  90 03 02 4C */	stw r0, 0x24c(r3)
lbl_80555DBC:
/* 80555DBC  7F C3 F3 78 */	mr r3, r30
/* 80555DC0  7F E4 FB 78 */	mr r4, r31
/* 80555DC4  4B FF FE 4D */	bl aNG2_standup
/* 80555DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80555DD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80555DD4  7C 08 03 A6 */	mtlr r0
/* 80555DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80555DDC  4E 80 00 20 */	blr 
