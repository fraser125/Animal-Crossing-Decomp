lbl_803E24A4:
/* 803E24A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E24A8  7C 08 02 A6 */	mflr r0
/* 803E24AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E24B0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E24B4  4B CB 8A 19 */	bl func_8009AECC
/* 803E24B8  7C 7B 1B 79 */	or. r27, r3, r3
/* 803E24BC  7C 9C 23 78 */	mr r28, r4
/* 803E24C0  7C BD 2B 78 */	mr r29, r5
/* 803E24C4  3B E0 FF FF */	li r31, -1
/* 803E24C8  41 82 00 48 */	beq lbl_803E2510
/* 803E24CC  28 1D 00 00 */	cmplwi r29, 0
/* 803E24D0  41 82 00 40 */	beq lbl_803E2510
/* 803E24D4  3B C0 00 00 */	li r30, 0
/* 803E24D8  48 00 00 30 */	b lbl_803E2508
lbl_803E24DC:
/* 803E24DC  A0 9B 00 08 */	lhz r4, 8(r27)
/* 803E24E0  7F 63 DB 78 */	mr r3, r27
/* 803E24E4  A0 DD 00 0A */	lhz r6, 0xa(r29)
/* 803E24E8  7F A5 EB 78 */	mr r5, r29
/* 803E24EC  4B FD 13 8D */	bl mLd_CheckCmpLand
/* 803E24F0  2C 03 00 01 */	cmpwi r3, 1
/* 803E24F4  40 82 00 0C */	bne lbl_803E2500
/* 803E24F8  7F DF F3 78 */	mr r31, r30
/* 803E24FC  48 00 00 14 */	b lbl_803E2510
lbl_803E2500:
/* 803E2500  3B 7B 00 0A */	addi r27, r27, 0xa
/* 803E2504  3B DE 00 01 */	addi r30, r30, 1
lbl_803E2508:
/* 803E2508  7C 1E E0 00 */	cmpw r30, r28
/* 803E250C  41 80 FF D0 */	blt lbl_803E24DC
lbl_803E2510:
/* 803E2510  7F E3 FB 78 */	mr r3, r31
/* 803E2514  39 61 00 20 */	addi r11, r1, 0x20
/* 803E2518  4B CB 8A 01 */	bl func_8009AF18
/* 803E251C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E2520  7C 08 03 A6 */	mtlr r0
/* 803E2524  38 21 00 20 */	addi r1, r1, 0x20
/* 803E2528  4E 80 00 20 */	blr 
