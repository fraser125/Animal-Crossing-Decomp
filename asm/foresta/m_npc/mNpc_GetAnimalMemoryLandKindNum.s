lbl_803CC34C:
/* 803CC34C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CC350  7C 08 02 A6 */	mflr r0
/* 803CC354  90 01 00 34 */	stw r0, 0x34(r1)
/* 803CC358  39 61 00 30 */	addi r11, r1, 0x30
/* 803CC35C  4B CC EB 61 */	bl func_8009AEBC
/* 803CC360  7C 7C 1B 78 */	mr r28, r3
/* 803CC364  7C 9D 23 78 */	mr r29, r4
/* 803CC368  3B 00 00 FF */	li r24, 0xff
/* 803CC36C  3B E0 00 00 */	li r31, 0
/* 803CC370  3B C0 00 00 */	li r30, 0
/* 803CC374  48 00 00 A4 */	b lbl_803CC418
lbl_803CC378:
/* 803CC378  7F 83 E3 78 */	mr r3, r28
/* 803CC37C  3B 5C 00 1C */	addi r26, r28, 0x1c
/* 803CC380  4B FF F4 F1 */	bl mNpc_CheckFreeAnimalMemory
/* 803CC384  2C 03 00 00 */	cmpwi r3, 0
/* 803CC388  40 82 00 78 */	bne lbl_803CC400
/* 803CC38C  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 803CC390  7C 00 F6 30 */	sraw r0, r0, r30
/* 803CC394  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803CC398  2C 00 00 01 */	cmpwi r0, 1
/* 803CC39C  40 82 00 5C */	bne lbl_803CC3F8
/* 803CC3A0  3B 3C 01 54 */	addi r25, r28, 0x154
/* 803CC3A4  3A FE 00 01 */	addi r23, r30, 1
/* 803CC3A8  3B 60 00 01 */	li r27, 1
/* 803CC3AC  48 00 00 44 */	b lbl_803CC3F0
lbl_803CC3B0:
/* 803CC3B0  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 803CC3B4  7C 00 BE 30 */	sraw r0, r0, r23
/* 803CC3B8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803CC3BC  2C 00 00 01 */	cmpwi r0, 1
/* 803CC3C0  40 82 00 2C */	bne lbl_803CC3EC
/* 803CC3C4  A0 9A 00 08 */	lhz r4, 8(r26)
/* 803CC3C8  7F 43 D3 78 */	mr r3, r26
/* 803CC3CC  A0 D9 00 08 */	lhz r6, 8(r25)
/* 803CC3D0  7F 25 CB 78 */	mr r5, r25
/* 803CC3D4  4B FE 74 A5 */	bl mLd_CheckCmpLand
/* 803CC3D8  2C 03 00 01 */	cmpwi r3, 1
/* 803CC3DC  40 82 00 10 */	bne lbl_803CC3EC
/* 803CC3E0  7F 60 B8 30 */	slw r0, r27, r23
/* 803CC3E4  7F 00 00 78 */	andc r0, r24, r0
/* 803CC3E8  54 18 06 3E */	clrlwi r24, r0, 0x18
lbl_803CC3EC:
/* 803CC3EC  3A F7 00 01 */	addi r23, r23, 1
lbl_803CC3F0:
/* 803CC3F0  7C 17 E8 00 */	cmpw r23, r29
/* 803CC3F4  41 80 FF BC */	blt lbl_803CC3B0
lbl_803CC3F8:
/* 803CC3F8  3B FF 00 01 */	addi r31, r31, 1
/* 803CC3FC  48 00 00 14 */	b lbl_803CC410
lbl_803CC400:
/* 803CC400  38 00 00 01 */	li r0, 1
/* 803CC404  7C 00 F0 30 */	slw r0, r0, r30
/* 803CC408  7F 00 00 78 */	andc r0, r24, r0
/* 803CC40C  54 18 06 3E */	clrlwi r24, r0, 0x18
lbl_803CC410:
/* 803CC410  3B 9C 01 38 */	addi r28, r28, 0x138
/* 803CC414  3B DE 00 01 */	addi r30, r30, 1
lbl_803CC418:
/* 803CC418  7C 1E E8 00 */	cmpw r30, r29
/* 803CC41C  41 80 FF 5C */	blt lbl_803CC378
/* 803CC420  7F E3 FB 78 */	mr r3, r31
/* 803CC424  39 61 00 30 */	addi r11, r1, 0x30
/* 803CC428  4B CC EA E1 */	bl func_8009AF08
/* 803CC42C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CC430  7C 08 03 A6 */	mtlr r0
/* 803CC434  38 21 00 30 */	addi r1, r1, 0x30
/* 803CC438  4E 80 00 20 */	blr 
