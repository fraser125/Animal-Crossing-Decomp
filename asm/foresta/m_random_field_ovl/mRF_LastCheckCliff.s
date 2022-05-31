lbl_8050928C:
/* 8050928C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80509290  7C 08 02 A6 */	mflr r0
/* 80509294  90 01 00 34 */	stw r0, 0x34(r1)
/* 80509298  39 61 00 30 */	addi r11, r1, 0x30
/* 8050929C  4B B9 1C 2D */	bl func_8009AEC8
/* 805092A0  7C BB 2B 78 */	mr r27, r5
/* 805092A4  7C 7A 1B 78 */	mr r26, r3
/* 805092A8  7C 9E 23 78 */	mr r30, r4
/* 805092AC  7C 83 23 78 */	mr r3, r4
/* 805092B0  7F 7D DB 78 */	mr r29, r27
/* 805092B4  7F 64 DB 78 */	mr r4, r27
/* 805092B8  4B FF FB 85 */	bl mRF_D2ToD1
/* 805092BC  3C 80 80 6A */	lis r4, l_cliff_next_direct@ha /* 0x8069E894@ha */
/* 805092C0  7F 9A 18 AE */	lbzx r28, r26, r3
/* 805092C4  3B E4 E8 94 */	addi r31, r4, l_cliff_next_direct@l /* 0x8069E894@l */
/* 805092C8  48 00 00 3C */	b lbl_80509304
lbl_805092CC:
/* 805092CC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805092D0  7F C5 F3 78 */	mr r5, r30
/* 805092D4  7C 60 FA 14 */	add r3, r0, r31
/* 805092D8  7F A6 EB 78 */	mr r6, r29
/* 805092DC  88 E3 FF F1 */	lbz r7, -0xf(r3)
/* 805092E0  38 61 00 0C */	addi r3, r1, 0xc
/* 805092E4  38 81 00 08 */	addi r4, r1, 8
/* 805092E8  4B FF FB 61 */	bl mRF_Direct2BlockNo
/* 805092EC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805092F0  80 81 00 08 */	lwz r4, 8(r1)
/* 805092F4  4B FF FB 49 */	bl mRF_D2ToD1
/* 805092F8  7F 9A 18 AE */	lbzx r28, r26, r3
/* 805092FC  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 80509300  83 A1 00 08 */	lwz r29, 8(r1)
lbl_80509304:
/* 80509304  7F 83 E3 78 */	mr r3, r28
/* 80509308  38 80 00 00 */	li r4, 0
/* 8050930C  4B FF FB B1 */	bl mRF_CheckBlockGroup
/* 80509310  2C 03 00 00 */	cmpwi r3, 0
/* 80509314  40 82 FF B8 */	bne lbl_805092CC
/* 80509318  2C 1E 00 05 */	cmpwi r30, 5
/* 8050931C  40 81 00 14 */	ble lbl_80509330
/* 80509320  7C 7B E8 50 */	subf r3, r27, r29
/* 80509324  30 03 FF FF */	addic r0, r3, -1
/* 80509328  7C 60 19 10 */	subfe r3, r0, r3
/* 8050932C  48 00 00 08 */	b lbl_80509334
lbl_80509330:
/* 80509330  38 60 00 00 */	li r3, 0
lbl_80509334:
/* 80509334  39 61 00 30 */	addi r11, r1, 0x30
/* 80509338  4B B9 1B DD */	bl func_8009AF14
/* 8050933C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80509340  7C 08 03 A6 */	mtlr r0
/* 80509344  38 21 00 30 */	addi r1, r1, 0x30
/* 80509348  4E 80 00 20 */	blr 
