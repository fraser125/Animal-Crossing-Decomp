lbl_803954C4:
/* 803954C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803954C8  7C 08 02 A6 */	mflr r0
/* 803954CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 803954D0  39 61 00 50 */	addi r11, r1, 0x50
/* 803954D4  4B D0 59 F9 */	bl func_8009AECC
/* 803954D8  7C BE 2B 78 */	mr r30, r5
/* 803954DC  7C 7D 1B 78 */	mr r29, r3
/* 803954E0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 803954E4  7C DF 33 78 */	mr r31, r6
/* 803954E8  2C 00 00 00 */	cmpwi r0, 0
/* 803954EC  40 81 00 D4 */	ble lbl_803955C0
/* 803954F0  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 803954F4  28 00 00 00 */	cmplwi r0, 0
/* 803954F8  41 82 00 C8 */	beq lbl_803955C0
/* 803954FC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80395500  2C 00 00 00 */	cmpwi r0, 0
/* 80395504  40 81 00 BC */	ble lbl_803955C0
/* 80395508  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8039550C  28 00 00 00 */	cmplwi r0, 0
/* 80395510  40 82 00 08 */	bne lbl_80395518
/* 80395514  48 00 00 AC */	b lbl_803955C0
lbl_80395518:
/* 80395518  7C 1B 03 78 */	mr r27, r0
/* 8039551C  48 00 00 8C */	b lbl_803955A8
lbl_80395520:
/* 80395520  88 1B 00 00 */	lbz r0, 0(r27)
/* 80395524  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80395528  41 82 00 7C */	beq lbl_803955A4
/* 8039552C  83 9E 00 10 */	lwz r28, 0x10(r30)
/* 80395530  48 00 00 5C */	b lbl_8039558C
lbl_80395534:
/* 80395534  38 7B 00 0C */	addi r3, r27, 0xc
/* 80395538  38 9C 00 04 */	addi r4, r28, 4
/* 8039553C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80395540  48 07 4C D5 */	bl Math3D_sphereCrossTriangle3_cp
/* 80395544  2C 03 00 00 */	cmpwi r3, 0
/* 80395548  41 82 00 40 */	beq lbl_80395588
/* 8039554C  38 61 00 14 */	addi r3, r1, 0x14
/* 80395550  38 9B 00 0C */	addi r4, r27, 0xc
/* 80395554  48 02 59 85 */	bl xyz_t_move_s_xyz
/* 80395558  7F 83 E3 78 */	mr r3, r28
/* 8039555C  38 81 00 08 */	addi r4, r1, 8
/* 80395560  4B FF EE D1 */	bl func_80394430
/* 80395564  7F A3 EB 78 */	mr r3, r29
/* 80395568  7F C4 F3 78 */	mr r4, r30
/* 8039556C  7F 85 E3 78 */	mr r5, r28
/* 80395570  7F E7 FB 78 */	mr r7, r31
/* 80395574  7F 68 DB 78 */	mr r8, r27
/* 80395578  38 C1 00 08 */	addi r6, r1, 8
/* 8039557C  39 21 00 14 */	addi r9, r1, 0x14
/* 80395580  39 41 00 20 */	addi r10, r1, 0x20
/* 80395584  4B FF FF 11 */	bl CollisionCheck_setOCC_HitInfo
lbl_80395588:
/* 80395588  3B 9C 00 44 */	addi r28, r28, 0x44
lbl_8039558C:
/* 8039558C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80395590  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80395594  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80395598  7C 03 02 14 */	add r0, r3, r0
/* 8039559C  7C 1C 00 40 */	cmplw r28, r0
/* 803955A0  41 80 FF 94 */	blt lbl_80395534
lbl_803955A4:
/* 803955A4  3B 7B 00 1C */	addi r27, r27, 0x1c
lbl_803955A8:
/* 803955A8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803955AC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 803955B0  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 803955B4  7C 03 02 14 */	add r0, r3, r0
/* 803955B8  7C 1B 00 40 */	cmplw r27, r0
/* 803955BC  41 80 FF 64 */	blt lbl_80395520
lbl_803955C0:
/* 803955C0  39 61 00 50 */	addi r11, r1, 0x50
/* 803955C4  4B D0 59 55 */	bl func_8009AF18
/* 803955C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803955CC  7C 08 03 A6 */	mtlr r0
/* 803955D0  38 21 00 50 */	addi r1, r1, 0x50
/* 803955D4  4E 80 00 20 */	blr 
