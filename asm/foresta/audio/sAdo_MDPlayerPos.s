lbl_8062E2AC:
/* 8062E2AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062E2B0  7C 08 02 A6 */	mflr r0
/* 8062E2B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062E2B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8062E2BC  4B A6 CC 19 */	bl func_8009AED4
/* 8062E2C0  7C 9D 23 78 */	mr r29, r4
/* 8062E2C4  7C BE 2B 78 */	mr r30, r5
/* 8062E2C8  7C 65 1B 78 */	mr r5, r3
/* 8062E2CC  7C DF 33 78 */	mr r31, r6
/* 8062E2D0  38 61 00 0C */	addi r3, r1, 0xc
/* 8062E2D4  38 81 00 08 */	addi r4, r1, 8
/* 8062E2D8  4B FF F8 45 */	bl func_8062DB1C
/* 8062E2DC  A0 61 00 08 */	lhz r3, 8(r1)
/* 8062E2E0  7F A4 EB 78 */	mr r4, r29
/* 8062E2E4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062E2E8  7F C5 F3 78 */	mr r5, r30
/* 8062E2EC  7F E6 FB 78 */	mr r6, r31
/* 8062E2F0  4B 9E 5D 6D */	bl Na_MDPlayerPos
/* 8062E2F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8062E2F8  4B A6 CC 29 */	bl func_8009AF20
/* 8062E2FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062E300  7C 08 03 A6 */	mtlr r0
/* 8062E304  38 21 00 20 */	addi r1, r1, 0x20
/* 8062E308  4E 80 00 20 */	blr 
