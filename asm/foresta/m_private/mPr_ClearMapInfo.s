lbl_803E2358:
/* 803E2358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E235C  7C 08 02 A6 */	mflr r0
/* 803E2360  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E2364  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2368  4B CB 8B 6D */	bl func_8009AED4
/* 803E236C  7C 7D 1B 78 */	mr r29, r3
/* 803E2370  7C 9E 23 78 */	mr r30, r4
/* 803E2374  3B E0 00 00 */	li r31, 0
/* 803E2378  48 00 00 18 */	b lbl_803E2390
lbl_803E237C:
/* 803E237C  7F A3 EB 78 */	mr r3, r29
/* 803E2380  4B FD 15 49 */	bl mLd_ClearLandName
/* 803E2384  B3 FD 00 08 */	sth r31, 8(r29)
/* 803E2388  3B BD 00 0A */	addi r29, r29, 0xa
/* 803E238C  3B DE FF FF */	addi r30, r30, -1
lbl_803E2390:
/* 803E2390  2C 1E 00 00 */	cmpwi r30, 0
/* 803E2394  40 82 FF E8 */	bne lbl_803E237C
/* 803E2398  39 61 00 20 */	addi r11, r1, 0x20
/* 803E239C  4B CB 8B 85 */	bl func_8009AF20
/* 803E23A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E23A4  7C 08 03 A6 */	mtlr r0
/* 803E23A8  38 21 00 20 */	addi r1, r1, 0x20
/* 803E23AC  4E 80 00 20 */	blr 
