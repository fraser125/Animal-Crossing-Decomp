lbl_8037AAB8:
/* 8037AAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037AABC  7C 08 02 A6 */	mflr r0
/* 8037AAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037AAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037AAC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8037AACC  7C 7E 1B 78 */	mr r30, r3
/* 8037AAD0  4B FF FF 75 */	bl mBGMPsComp_execute_ps_pos_get
/* 8037AAD4  7C 64 1B 79 */	or. r4, r3, r3
/* 8037AAD8  41 80 00 68 */	blt lbl_8037AB40
/* 8037AADC  1C 04 00 14 */	mulli r0, r4, 0x14
/* 8037AAE0  7F FE 02 14 */	add r31, r30, r0
/* 8037AAE4  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8037AAE8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8037AAEC  40 82 00 54 */	bne lbl_8037AB40
/* 8037AAF0  2C 04 00 00 */	cmpwi r4, 0
/* 8037AAF4  40 81 00 28 */	ble lbl_8037AB1C
/* 8037AAF8  7F C3 F3 78 */	mr r3, r30
/* 8037AAFC  4B FF FF 89 */	bl mBGMPsComp_high_ps_not_delete
/* 8037AB00  28 03 00 00 */	cmplwi r3, 0
/* 8037AB04  41 82 00 18 */	beq lbl_8037AB1C
/* 8037AB08  38 00 00 01 */	li r0, 1
/* 8037AB0C  98 1E 01 30 */	stb r0, 0x130(r30)
/* 8037AB10  A0 03 00 06 */	lhz r0, 6(r3)
/* 8037AB14  B0 1E 01 32 */	sth r0, 0x132(r30)
/* 8037AB18  48 00 00 28 */	b lbl_8037AB40
lbl_8037AB1C:
/* 8037AB1C  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 8037AB20  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8037AB24  41 82 00 1C */	beq lbl_8037AB40
/* 8037AB28  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8037AB2C  40 82 00 14 */	bne lbl_8037AB40
/* 8037AB30  38 00 00 01 */	li r0, 1
/* 8037AB34  98 1E 01 30 */	stb r0, 0x130(r30)
/* 8037AB38  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8037AB3C  B0 1E 01 32 */	sth r0, 0x132(r30)
lbl_8037AB40:
/* 8037AB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037AB44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037AB48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037AB4C  7C 08 03 A6 */	mtlr r0
/* 8037AB50  38 21 00 10 */	addi r1, r1, 0x10
/* 8037AB54  4E 80 00 20 */	blr 
