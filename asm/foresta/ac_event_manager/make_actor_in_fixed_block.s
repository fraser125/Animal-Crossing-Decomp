lbl_8041C3EC:
/* 8041C3EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041C3F0  7C 08 02 A6 */	mflr r0
/* 8041C3F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041C3F8  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C3FC  4B C7 EA CD */	bl func_8009AEC8
/* 8041C400  7C 9A 23 78 */	mr r26, r4
/* 8041C404  7C BB 2B 78 */	mr r27, r5
/* 8041C408  7C DC 33 78 */	mr r28, r6
/* 8041C40C  7C FF 3B 78 */	mr r31, r7
/* 8041C410  7D 1D 43 78 */	mr r29, r8
/* 8041C414  4B F8 88 B9 */	bl mFI_GetFieldId
/* 8041C418  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041C41C  41 82 00 0C */	beq lbl_8041C428
/* 8041C420  38 60 00 00 */	li r3, 0
/* 8041C424  48 00 00 C4 */	b lbl_8041C4E8
lbl_8041C428:
/* 8041C428  57 BD 06 3E */	clrlwi r29, r29, 0x18
/* 8041C42C  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C430  7F A4 EB 78 */	mr r4, r29
/* 8041C434  4B F8 1E 79 */	bl mEv_get_common_place
/* 8041C438  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C43C  40 82 00 A8 */	bne lbl_8041C4E4
/* 8041C440  38 00 00 02 */	li r0, 2
/* 8041C444  B3 E1 00 18 */	sth r31, 0x18(r1)
/* 8041C448  3B E1 00 10 */	addi r31, r1, 0x10
/* 8041C44C  3B C1 00 14 */	addi r30, r1, 0x14
/* 8041C450  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 8041C454  80 9B 00 00 */	lwz r4, 0(r27)
/* 8041C458  80 7B 00 04 */	lwz r3, 4(r27)
/* 8041C45C  90 81 00 08 */	stw r4, 8(r1)
/* 8041C460  90 61 00 0C */	stw r3, 0xc(r1)
/* 8041C464  80 DC 00 00 */	lwz r6, 0(r28)
/* 8041C468  80 BC 00 04 */	lwz r5, 4(r28)
/* 8041C46C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8041C470  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8041C474  4B FB 69 31 */	bl mNpc_CheckNpcSet
/* 8041C478  2C 03 00 00 */	cmpwi r3, 0
/* 8041C47C  40 82 00 34 */	bne lbl_8041C4B0
/* 8041C480  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8041C484  7F C3 F3 78 */	mr r3, r30
/* 8041C488  80 C1 00 08 */	lwz r6, 8(r1)
/* 8041C48C  7F E4 FB 78 */	mr r4, r31
/* 8041C490  4B FF E4 75 */	bl neighbor_check
/* 8041C494  2C 03 00 00 */	cmpwi r3, 0
/* 8041C498  40 82 00 18 */	bne lbl_8041C4B0
/* 8041C49C  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C4A0  38 80 00 20 */	li r4, 0x20
/* 8041C4A4  4B F8 15 2D */	bl mEv_set_status
/* 8041C4A8  38 60 00 00 */	li r3, 0
/* 8041C4AC  48 00 00 3C */	b lbl_8041C4E8
lbl_8041C4B0:
/* 8041C4B0  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C4B4  7F A4 EB 78 */	mr r4, r29
/* 8041C4B8  4B F8 1D 0D */	bl mEv_reserve_common_place
/* 8041C4BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C4C0  40 82 00 18 */	bne lbl_8041C4D8
/* 8041C4C4  80 7A 00 00 */	lwz r3, 0(r26)
/* 8041C4C8  38 80 00 20 */	li r4, 0x20
/* 8041C4CC  4B F8 15 05 */	bl mEv_set_status
/* 8041C4D0  38 60 00 00 */	li r3, 0
/* 8041C4D4  48 00 00 14 */	b lbl_8041C4E8
lbl_8041C4D8:
/* 8041C4D8  38 81 00 08 */	addi r4, r1, 8
/* 8041C4DC  38 A0 00 14 */	li r5, 0x14
/* 8041C4E0  4B BE 6F B1 */	bl memcpy
lbl_8041C4E4:
/* 8041C4E4  7F C3 F3 78 */	mr r3, r30
lbl_8041C4E8:
/* 8041C4E8  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C4EC  4B C7 EA 29 */	bl func_8009AF14
/* 8041C4F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041C4F4  7C 08 03 A6 */	mtlr r0
/* 8041C4F8  38 21 00 40 */	addi r1, r1, 0x40
/* 8041C4FC  4E 80 00 20 */	blr 
