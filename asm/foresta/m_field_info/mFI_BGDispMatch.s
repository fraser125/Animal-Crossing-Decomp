lbl_803A6A30:
/* 803A6A30  3C C0 81 16 */	lis r6, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6A34  39 20 00 00 */	li r9, 0
/* 803A6A38  39 06 7A 58 */	addi r8, r6, g_fdinfo@l /* 0x81167A58@l */
/* 803A6A3C  39 40 00 00 */	li r10, 0
/* 803A6A40  80 E8 00 00 */	lwz r7, 0(r8)
/* 803A6A44  38 C0 00 00 */	li r6, 0
/* 803A6A48  88 07 00 8E */	lbz r0, 0x8e(r7)
/* 803A6A4C  7C 09 03 A6 */	mtctr r0
/* 803A6A50  2C 00 00 00 */	cmpwi r0, 0
/* 803A6A54  40 81 00 3C */	ble lbl_803A6A90
lbl_803A6A58:
/* 803A6A58  91 43 00 00 */	stw r10, 0(r3)
/* 803A6A5C  80 08 00 00 */	lwz r0, 0(r8)
/* 803A6A60  7C E0 32 14 */	add r7, r0, r6
/* 803A6A64  80 07 00 08 */	lwz r0, 8(r7)
/* 803A6A68  7C 00 20 00 */	cmpw r0, r4
/* 803A6A6C  40 82 00 18 */	bne lbl_803A6A84
/* 803A6A70  80 07 00 0C */	lwz r0, 0xc(r7)
/* 803A6A74  7C 00 28 00 */	cmpw r0, r5
/* 803A6A78  40 82 00 0C */	bne lbl_803A6A84
/* 803A6A7C  39 20 00 01 */	li r9, 1
/* 803A6A80  48 00 00 10 */	b lbl_803A6A90
lbl_803A6A84:
/* 803A6A84  39 4A 00 01 */	addi r10, r10, 1
/* 803A6A88  38 C6 00 0C */	addi r6, r6, 0xc
/* 803A6A8C  42 00 FF CC */	bdnz lbl_803A6A58
lbl_803A6A90:
/* 803A6A90  7D 23 4B 78 */	mr r3, r9
/* 803A6A94  4E 80 00 20 */	blr 
