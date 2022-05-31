lbl_8041C500:
/* 8041C500  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041C504  7C 08 02 A6 */	mflr r0
/* 8041C508  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041C50C  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C510  4B C7 E9 B9 */	bl func_8009AEC8
/* 8041C514  7C 9A 23 78 */	mr r26, r4
/* 8041C518  7C BB 2B 78 */	mr r27, r5
/* 8041C51C  7C DC 33 78 */	mr r28, r6
/* 8041C520  7C FD 3B 78 */	mr r29, r7
/* 8041C524  7D 1E 43 78 */	mr r30, r8
/* 8041C528  4B F8 87 A5 */	bl mFI_GetFieldId
/* 8041C52C  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041C530  41 82 00 0C */	beq lbl_8041C53C
/* 8041C534  38 60 00 00 */	li r3, 0
/* 8041C538  48 00 00 80 */	b lbl_8041C5B8
lbl_8041C53C:
/* 8041C53C  57 DF 06 3E */	clrlwi r31, r30, 0x18
/* 8041C540  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C544  7F E4 FB 78 */	mr r4, r31
/* 8041C548  4B F8 1D 65 */	bl mEv_get_common_place
/* 8041C54C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C550  40 82 00 64 */	bne lbl_8041C5B4
/* 8041C554  38 00 00 02 */	li r0, 2
/* 8041C558  B3 A1 00 18 */	sth r29, 0x18(r1)
/* 8041C55C  7F E4 FB 78 */	mr r4, r31
/* 8041C560  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 8041C564  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C568  80 1B 00 04 */	lwz r0, 4(r27)
/* 8041C56C  90 61 00 08 */	stw r3, 8(r1)
/* 8041C570  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041C574  80 7C 00 00 */	lwz r3, 0(r28)
/* 8041C578  80 1C 00 04 */	lwz r0, 4(r28)
/* 8041C57C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8041C580  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041C584  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C588  4B F8 1C 3D */	bl mEv_reserve_common_place
/* 8041C58C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C590  40 82 00 18 */	bne lbl_8041C5A8
/* 8041C594  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C598  38 80 00 20 */	li r4, 0x20
/* 8041C59C  4B F8 14 35 */	bl mEv_set_status
/* 8041C5A0  38 60 00 00 */	li r3, 0
/* 8041C5A4  48 00 00 14 */	b lbl_8041C5B8
lbl_8041C5A8:
/* 8041C5A8  38 81 00 08 */	addi r4, r1, 8
/* 8041C5AC  38 A0 00 14 */	li r5, 0x14
/* 8041C5B0  4B BE 6E E1 */	bl memcpy
lbl_8041C5B4:
/* 8041C5B4  7F C3 F3 78 */	mr r3, r30
lbl_8041C5B8:
/* 8041C5B8  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C5BC  4B C7 E9 59 */	bl func_8009AF14
/* 8041C5C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041C5C4  7C 08 03 A6 */	mtlr r0
/* 8041C5C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8041C5CC  4E 80 00 20 */	blr 
