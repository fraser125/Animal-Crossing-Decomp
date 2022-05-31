lbl_80553994:
/* 80553994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553998  7C 08 02 A6 */	mflr r0
/* 8055399C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805539A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805539A4  7C 9F 23 78 */	mr r31, r4
/* 805539A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805539AC  7C 7E 1B 78 */	mr r30, r3
/* 805539B0  4B E6 BC F9 */	bl func_803BF6A8
/* 805539B4  4B E6 D2 E5 */	bl mMsg_Check_MainNormalContinue
/* 805539B8  2C 03 00 01 */	cmpwi r3, 1
/* 805539BC  40 82 00 14 */	bne lbl_805539D0
/* 805539C0  7F C3 F3 78 */	mr r3, r30
/* 805539C4  7F E4 FB 78 */	mr r4, r31
/* 805539C8  38 A0 00 0A */	li r5, 0xa
/* 805539CC  48 00 0F 3D */	bl aNGD_setupAction
lbl_805539D0:
/* 805539D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805539D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805539D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805539DC  7C 08 03 A6 */	mtlr r0
/* 805539E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805539E4  4E 80 00 20 */	blr 
