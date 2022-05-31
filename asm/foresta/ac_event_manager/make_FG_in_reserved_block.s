lbl_8041C82C:
/* 8041C82C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041C830  7C 08 02 A6 */	mflr r0
/* 8041C834  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041C838  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C83C  4B C7 E6 8D */	bl func_8009AEC8
/* 8041C840  7C 7A 1B 78 */	mr r26, r3
/* 8041C844  7C 9B 23 78 */	mr r27, r4
/* 8041C848  7C BC 2B 78 */	mr r28, r5
/* 8041C84C  7C DD 33 78 */	mr r29, r6
/* 8041C850  7C FE 3B 78 */	mr r30, r7
/* 8041C854  4B F8 84 79 */	bl mFI_GetFieldId
/* 8041C858  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041C85C  41 82 00 0C */	beq lbl_8041C868
/* 8041C860  38 60 00 00 */	li r3, 0
/* 8041C864  48 00 01 34 */	b lbl_8041C998
lbl_8041C868:
/* 8041C868  57 DF 06 3E */	clrlwi r31, r30, 0x18
/* 8041C86C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C870  7F E4 FB 78 */	mr r4, r31
/* 8041C874  4B F8 1A 39 */	bl mEv_get_common_place
/* 8041C878  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C87C  40 82 00 E0 */	bne lbl_8041C95C
/* 8041C880  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8041C884  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 8041C888  7C 1D 00 00 */	cmpw r29, r0
/* 8041C88C  41 82 00 14 */	beq lbl_8041C8A0
/* 8041C890  40 80 00 38 */	bge lbl_8041C8C8
/* 8041C894  2C 1D 00 04 */	cmpwi r29, 4
/* 8041C898  41 82 00 1C */	beq lbl_8041C8B4
/* 8041C89C  48 00 00 2C */	b lbl_8041C8C8
lbl_8041C8A0:
/* 8041C8A0  80 1A 02 18 */	lwz r0, 0x218(r26)
/* 8041C8A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041C8A8  80 1A 02 14 */	lwz r0, 0x214(r26)
/* 8041C8AC  90 01 00 08 */	stw r0, 8(r1)
/* 8041C8B0  48 00 00 44 */	b lbl_8041C8F4
lbl_8041C8B4:
/* 8041C8B4  80 1A 02 30 */	lwz r0, 0x230(r26)
/* 8041C8B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041C8BC  80 1A 02 2C */	lwz r0, 0x22c(r26)
/* 8041C8C0  90 01 00 08 */	stw r0, 8(r1)
/* 8041C8C4  48 00 00 30 */	b lbl_8041C8F4
lbl_8041C8C8:
/* 8041C8C8  7F A5 EB 78 */	mr r5, r29
/* 8041C8CC  38 61 00 0C */	addi r3, r1, 0xc
/* 8041C8D0  38 81 00 08 */	addi r4, r1, 8
/* 8041C8D4  4B F8 9B 2D */	bl mFI_BlockKind2BkNum
/* 8041C8D8  2C 03 00 00 */	cmpwi r3, 0
/* 8041C8DC  40 82 00 18 */	bne lbl_8041C8F4
/* 8041C8E0  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C8E4  38 80 00 20 */	li r4, 0x20
/* 8041C8E8  4B F8 10 E9 */	bl mEv_set_status
/* 8041C8EC  38 60 00 00 */	li r3, 0
/* 8041C8F0  48 00 00 A8 */	b lbl_8041C998
lbl_8041C8F4:
/* 8041C8F4  80 DB 00 00 */	lwz r6, 0(r27)
/* 8041C8F8  7F 87 E3 78 */	mr r7, r28
/* 8041C8FC  38 61 00 18 */	addi r3, r1, 0x18
/* 8041C900  38 81 00 14 */	addi r4, r1, 0x14
/* 8041C904  38 A1 00 10 */	addi r5, r1, 0x10
/* 8041C908  4B F8 2D 45 */	bl mEvMN_GetEventSetUtInBlock
/* 8041C90C  2C 03 00 00 */	cmpwi r3, 0
/* 8041C910  40 82 00 18 */	bne lbl_8041C928
/* 8041C914  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C918  38 80 00 20 */	li r4, 0x20
/* 8041C91C  4B F8 10 B5 */	bl mEv_set_status
/* 8041C920  38 60 00 00 */	li r3, 0
/* 8041C924  48 00 00 74 */	b lbl_8041C998
lbl_8041C928:
/* 8041C928  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C92C  7F E4 FB 78 */	mr r4, r31
/* 8041C930  4B F8 18 95 */	bl mEv_reserve_common_place
/* 8041C934  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C938  40 82 00 18 */	bne lbl_8041C950
/* 8041C93C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C940  38 80 00 20 */	li r4, 0x20
/* 8041C944  4B F8 10 8D */	bl mEv_set_status
/* 8041C948  38 60 00 00 */	li r3, 0
/* 8041C94C  48 00 00 4C */	b lbl_8041C998
lbl_8041C950:
/* 8041C950  38 81 00 08 */	addi r4, r1, 8
/* 8041C954  38 A0 00 14 */	li r5, 0x14
/* 8041C958  4B BE 6B 39 */	bl memcpy
lbl_8041C95C:
/* 8041C95C  A0 7E 00 10 */	lhz r3, 0x10(r30)
/* 8041C960  39 00 00 00 */	li r8, 0
/* 8041C964  80 9E 00 04 */	lwz r4, 4(r30)
/* 8041C968  80 BE 00 00 */	lwz r5, 0(r30)
/* 8041C96C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 8041C970  80 FE 00 08 */	lwz r7, 8(r30)
/* 8041C974  4B F8 D3 29 */	bl mFI_SetFGStructure_common
/* 8041C978  2C 03 00 00 */	cmpwi r3, 0
/* 8041C97C  40 82 00 18 */	bne lbl_8041C994
/* 8041C980  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C984  38 80 00 20 */	li r4, 0x20
/* 8041C988  4B F8 10 49 */	bl mEv_set_status
/* 8041C98C  38 60 00 00 */	li r3, 0
/* 8041C990  48 00 00 08 */	b lbl_8041C998
lbl_8041C994:
/* 8041C994  7F C3 F3 78 */	mr r3, r30
lbl_8041C998:
/* 8041C998  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C99C  4B C7 E5 79 */	bl func_8009AF14
/* 8041C9A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041C9A4  7C 08 03 A6 */	mtlr r0
/* 8041C9A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8041C9AC  4E 80 00 20 */	blr 
