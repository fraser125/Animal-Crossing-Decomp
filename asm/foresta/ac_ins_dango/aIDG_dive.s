lbl_80597E84:
/* 80597E84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80597E88  7C 08 02 A6 */	mflr r0
/* 80597E8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80597E90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80597E94  7C 9F 23 78 */	mr r31, r4
/* 80597E98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80597E9C  7C 7E 1B 78 */	mr r30, r3
/* 80597EA0  3C 60 80 6C */	lis r3, data_806C31B8@ha /* 0x806C31B8@ha */
/* 80597EA4  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 80597EA8  38 03 31 B8 */	addi r0, r3, data_806C31B8@l /* 0x806C31B8@l */
/* 80597EAC  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 80597EB0  7C 04 03 78 */	mr r4, r0
/* 80597EB4  38 61 00 08 */	addi r3, r1, 8
/* 80597EB8  90 A1 00 08 */	stw r5, 8(r1)
/* 80597EBC  38 A0 02 60 */	li r5, 0x260
/* 80597EC0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80597EC4  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80597EC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80597ECC  4B DF C0 ED */	bl mCoBG_GetWaterHeight_File
/* 80597ED0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80597ED4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80597ED8  4C 40 13 82 */	cror 2, 0, 2
/* 80597EDC  40 82 00 14 */	bne lbl_80597EF0
/* 80597EE0  7F C3 F3 78 */	mr r3, r30
/* 80597EE4  7F E5 FB 78 */	mr r5, r31
/* 80597EE8  38 80 00 06 */	li r4, 6
/* 80597EEC  48 00 03 69 */	bl aIDG_setupAction
lbl_80597EF0:
/* 80597EF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80597EF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80597EF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80597EFC  7C 08 03 A6 */	mtlr r0
/* 80597F00  38 21 00 20 */	addi r1, r1, 0x20
/* 80597F04  4E 80 00 20 */	blr 
