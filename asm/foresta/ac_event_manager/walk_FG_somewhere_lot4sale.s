lbl_8041D14C:
/* 8041D14C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8041D150  7C 08 02 A6 */	mflr r0
/* 8041D154  90 01 00 34 */	stw r0, 0x34(r1)
/* 8041D158  39 61 00 30 */	addi r11, r1, 0x30
/* 8041D15C  4B C7 DD 75 */	bl func_8009AED0
/* 8041D160  7C 7C 1B 78 */	mr r28, r3
/* 8041D164  7C 9F 23 78 */	mr r31, r4
/* 8041D168  7C BD 2B 78 */	mr r29, r5
/* 8041D16C  4B F8 7B 61 */	bl mFI_GetFieldId
/* 8041D170  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041D174  40 82 01 2C */	bne lbl_8041D2A0
/* 8041D178  57 BE 06 3E */	clrlwi r30, r29, 0x18
/* 8041D17C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041D180  7F C4 F3 78 */	mr r4, r30
/* 8041D184  4B F8 11 29 */	bl mEv_get_common_place
/* 8041D188  28 03 00 00 */	cmplwi r3, 0
/* 8041D18C  41 82 01 14 */	beq lbl_8041D2A0
/* 8041D190  7C 64 1B 78 */	mr r4, r3
/* 8041D194  38 61 00 08 */	addi r3, r1, 8
/* 8041D198  38 A0 00 14 */	li r5, 0x14
/* 8041D19C  4B BE 62 F5 */	bl memcpy
/* 8041D1A0  7F E3 FB 78 */	mr r3, r31
/* 8041D1A4  7F A4 EB 78 */	mr r4, r29
/* 8041D1A8  4B FF E9 4D */	bl delete_FG
/* 8041D1AC  A0 81 00 18 */	lhz r4, 0x18(r1)
/* 8041D1B0  3C 60 81 1D */	lis r3, fluc@ha /* 0x811CB96C@ha */
/* 8041D1B4  80 1F 00 00 */	lwz r0, 0(r31)
/* 8041D1B8  7F C6 F3 78 */	mr r6, r30
/* 8041D1BC  80 E3 B9 6C */	lwz r7, fluc@l(r3)  /* 0x811CB96C@l */
/* 8041D1C0  38 A1 00 10 */	addi r5, r1, 0x10
/* 8041D1C4  7C 00 22 14 */	add r0, r0, r4
/* 8041D1C8  7F 83 E3 78 */	mr r3, r28
/* 8041D1CC  7C C0 32 14 */	add r6, r0, r6
/* 8041D1D0  38 81 00 08 */	addi r4, r1, 8
/* 8041D1D4  7C C7 32 14 */	add r6, r7, r6
/* 8041D1D8  4B FF E2 E9 */	bl get_unit_lot4sale
/* 8041D1DC  2C 03 00 00 */	cmpwi r3, 0
/* 8041D1E0  40 82 00 18 */	bne lbl_8041D1F8
/* 8041D1E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041D1E8  38 80 00 20 */	li r4, 0x20
/* 8041D1EC  4B F8 07 E5 */	bl mEv_set_status
/* 8041D1F0  38 60 00 00 */	li r3, 0
/* 8041D1F4  48 00 00 B0 */	b lbl_8041D2A4
lbl_8041D1F8:
/* 8041D1F8  A0 61 00 18 */	lhz r3, 0x18(r1)
/* 8041D1FC  39 00 00 00 */	li r8, 0
/* 8041D200  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8041D204  80 A1 00 08 */	lwz r5, 8(r1)
/* 8041D208  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8041D20C  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 8041D210  4B F8 CA 8D */	bl mFI_SetFGStructure_common
/* 8041D214  2C 03 00 00 */	cmpwi r3, 0
/* 8041D218  40 82 00 18 */	bne lbl_8041D230
/* 8041D21C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041D220  38 80 00 20 */	li r4, 0x20
/* 8041D224  4B F8 07 AD */	bl mEv_set_status
/* 8041D228  38 60 00 00 */	li r3, 0
/* 8041D22C  48 00 00 78 */	b lbl_8041D2A4
lbl_8041D230:
/* 8041D230  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041D234  7F C4 F3 78 */	mr r4, r30
/* 8041D238  4B F8 0F 8D */	bl mEv_reserve_common_place
/* 8041D23C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041D240  40 82 00 18 */	bne lbl_8041D258
/* 8041D244  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041D248  38 80 00 20 */	li r4, 0x20
/* 8041D24C  4B F8 07 85 */	bl mEv_set_status
/* 8041D250  38 60 00 00 */	li r3, 0
/* 8041D254  48 00 00 50 */	b lbl_8041D2A4
lbl_8041D258:
/* 8041D258  38 81 00 08 */	addi r4, r1, 8
/* 8041D25C  38 A0 00 14 */	li r5, 0x14
/* 8041D260  4B BE 62 31 */	bl memcpy
/* 8041D264  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041D268  38 80 00 77 */	li r4, 0x77
/* 8041D26C  4B F8 0B 61 */	bl mEv_get_save_area
/* 8041D270  28 03 00 00 */	cmplwi r3, 0
/* 8041D274  40 82 00 10 */	bne lbl_8041D284
/* 8041D278  80 7F 00 00 */	lwz r3, 0(r31)
/* 8041D27C  38 80 00 77 */	li r4, 0x77
/* 8041D280  4B F8 09 A5 */	bl mEv_reserve_save_area
lbl_8041D284:
/* 8041D284  28 03 00 00 */	cmplwi r3, 0
/* 8041D288  41 82 00 10 */	beq lbl_8041D298
/* 8041D28C  38 81 00 08 */	addi r4, r1, 8
/* 8041D290  38 A0 00 14 */	li r5, 0x14
/* 8041D294  4B BE 61 FD */	bl memcpy
lbl_8041D298:
/* 8041D298  7F C3 F3 78 */	mr r3, r30
/* 8041D29C  48 00 00 08 */	b lbl_8041D2A4
lbl_8041D2A0:
/* 8041D2A0  38 60 00 00 */	li r3, 0
lbl_8041D2A4:
/* 8041D2A4  39 61 00 30 */	addi r11, r1, 0x30
/* 8041D2A8  4B C7 DC 75 */	bl func_8009AF1C
/* 8041D2AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8041D2B0  7C 08 03 A6 */	mtlr r0
/* 8041D2B4  38 21 00 30 */	addi r1, r1, 0x30
/* 8041D2B8  4E 80 00 20 */	blr 
