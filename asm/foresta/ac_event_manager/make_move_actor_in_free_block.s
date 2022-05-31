lbl_8041C198:
/* 8041C198  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8041C19C  7C 08 02 A6 */	mflr r0
/* 8041C1A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8041C1A4  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C1A8  4B C7 ED 21 */	bl func_8009AEC8
/* 8041C1AC  7C 7A 1B 78 */	mr r26, r3
/* 8041C1B0  7C 9B 23 78 */	mr r27, r4
/* 8041C1B4  7C BC 2B 78 */	mr r28, r5
/* 8041C1B8  7C DD 33 78 */	mr r29, r6
/* 8041C1BC  4B F8 8B 11 */	bl mFI_GetFieldId
/* 8041C1C0  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8041C1C4  41 82 00 0C */	beq lbl_8041C1D0
/* 8041C1C8  38 60 00 00 */	li r3, 0
/* 8041C1CC  48 00 00 DC */	b lbl_8041C2A8
lbl_8041C1D0:
/* 8041C1D0  57 BF 06 3E */	clrlwi r31, r29, 0x18
/* 8041C1D4  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C1D8  7F E4 FB 78 */	mr r4, r31
/* 8041C1DC  4B F8 20 D1 */	bl mEv_get_common_place
/* 8041C1E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C1E4  40 82 00 88 */	bne lbl_8041C26C
/* 8041C1E8  38 80 00 01 */	li r4, 1
/* 8041C1EC  B3 81 00 18 */	sth r28, 0x18(r1)
/* 8041C1F0  7F E3 FB 78 */	mr r3, r31
/* 8041C1F4  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8041C1F8  B0 81 00 1A */	sth r4, 0x1a(r1)
/* 8041C1FC  7C E0 1A 14 */	add r7, r0, r3
/* 8041C200  7F 43 D3 78 */	mr r3, r26
/* 8041C204  7F 64 DB 78 */	mr r4, r27
/* 8041C208  80 1B 00 00 */	lwz r0, 0(r27)
/* 8041C20C  38 A1 00 08 */	addi r5, r1, 8
/* 8041C210  38 C1 00 10 */	addi r6, r1, 0x10
/* 8041C214  7C E0 3A 14 */	add r7, r0, r7
/* 8041C218  4B FF ED 25 */	bl search_empty_unit
/* 8041C21C  2C 03 00 00 */	cmpwi r3, 0
/* 8041C220  40 82 00 18 */	bne lbl_8041C238
/* 8041C224  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C228  38 80 00 20 */	li r4, 0x20
/* 8041C22C  4B F8 17 A5 */	bl mEv_set_status
/* 8041C230  38 60 00 00 */	li r3, 0
/* 8041C234  48 00 00 74 */	b lbl_8041C2A8
lbl_8041C238:
/* 8041C238  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C23C  7F E4 FB 78 */	mr r4, r31
/* 8041C240  4B F8 1F 85 */	bl mEv_reserve_common_place
/* 8041C244  7C 7E 1B 79 */	or. r30, r3, r3
/* 8041C248  40 82 00 18 */	bne lbl_8041C260
/* 8041C24C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C250  38 80 00 20 */	li r4, 0x20
/* 8041C254  4B F8 17 7D */	bl mEv_set_status
/* 8041C258  38 60 00 00 */	li r3, 0
/* 8041C25C  48 00 00 4C */	b lbl_8041C2A8
lbl_8041C260:
/* 8041C260  38 81 00 08 */	addi r4, r1, 8
/* 8041C264  38 A0 00 14 */	li r5, 0x14
/* 8041C268  4B BE 72 29 */	bl memcpy
lbl_8041C26C:
/* 8041C26C  A0 7E 00 10 */	lhz r3, 0x10(r30)
/* 8041C270  39 00 00 00 */	li r8, 0
/* 8041C274  80 9E 00 04 */	lwz r4, 4(r30)
/* 8041C278  80 BE 00 00 */	lwz r5, 0(r30)
/* 8041C27C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 8041C280  80 FE 00 08 */	lwz r7, 8(r30)
/* 8041C284  4B F8 C6 71 */	bl mFI_AddMoveActorList
/* 8041C288  2C 03 00 00 */	cmpwi r3, 0
/* 8041C28C  40 82 00 18 */	bne lbl_8041C2A4
/* 8041C290  80 7B 00 00 */	lwz r3, 0(r27)
/* 8041C294  38 80 00 20 */	li r4, 0x20
/* 8041C298  4B F8 17 39 */	bl mEv_set_status
/* 8041C29C  38 60 00 00 */	li r3, 0
/* 8041C2A0  48 00 00 08 */	b lbl_8041C2A8
lbl_8041C2A4:
/* 8041C2A4  7F C3 F3 78 */	mr r3, r30
lbl_8041C2A8:
/* 8041C2A8  39 61 00 40 */	addi r11, r1, 0x40
/* 8041C2AC  4B C7 EC 69 */	bl func_8009AF14
/* 8041C2B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8041C2B4  7C 08 03 A6 */	mtlr r0
/* 8041C2B8  38 21 00 40 */	addi r1, r1, 0x40
/* 8041C2BC  4E 80 00 20 */	blr 
