lbl_803D8E18:
/* 803D8E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D8E1C  7C 08 02 A6 */	mflr r0
/* 803D8E20  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D8E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D8E28  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803D8E2C  3C 64 00 02 */	addis r3, r4, 2
/* 803D8E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D8E34  3C A4 00 03 */	addis r5, r4, 3
/* 803D8E38  93 C1 00 08 */	stw r30, 8(r1)
/* 803D8E3C  80 E3 61 3C */	lwz r7, 0x613c(r3)
/* 803D8E40  88 05 85 C0 */	lbz r0, -0x7a40(r5)
/* 803D8E44  8B C7 23 C8 */	lbz r30, 0x23c8(r7)
/* 803D8E48  7C 00 07 74 */	extsb r0, r0
/* 803D8E4C  7F DE 07 75 */	extsb. r30, r30
/* 803D8E50  40 81 00 58 */	ble lbl_803D8EA8
/* 803D8E54  2C 00 00 00 */	cmpwi r0, 0
/* 803D8E58  40 82 00 50 */	bne lbl_803D8EA8
/* 803D8E5C  88 67 00 14 */	lbz r3, 0x14(r7)
/* 803D8E60  38 C0 00 00 */	li r6, 0
/* 803D8E64  88 87 00 15 */	lbz r4, 0x15(r7)
/* 803D8E68  38 E0 00 01 */	li r7, 1
/* 803D8E6C  88 A5 88 38 */	lbz r5, -0x77c8(r5)
/* 803D8E70  7C 63 07 74 */	extsb r3, r3
/* 803D8E74  7C 84 07 74 */	extsb r4, r4
/* 803D8E78  7C A5 07 74 */	extsb r5, r5
/* 803D8E7C  4B FF FE B9 */	bl mPlib_Get_UseFaceRom_index
/* 803D8E80  7C 7F 1B 78 */	mr r31, r3
/* 803D8E84  38 60 00 01 */	li r3, 1
/* 803D8E88  38 80 00 07 */	li r4, 7
/* 803D8E8C  38 A0 00 01 */	li r5, 1
/* 803D8E90  38 C0 00 01 */	li r6, 1
/* 803D8E94  4B FF FE F1 */	bl mPlib_Get_UseFaceTexRom_p_common
/* 803D8E98  7C 1E FA 14 */	add r0, r30, r31
/* 803D8E9C  54 04 28 34 */	slwi r4, r0, 5
/* 803D8EA0  38 04 0E 00 */	addi r0, r4, 0xe00
/* 803D8EA4  48 00 00 0C */	b lbl_803D8EB0
lbl_803D8EA8:
/* 803D8EA8  4B FF FF 1D */	bl mPlib_Get_UseFaceTexRom_p
/* 803D8EAC  38 00 0E 00 */	li r0, 0xe00
lbl_803D8EB0:
/* 803D8EB0  7C 63 02 14 */	add r3, r3, r0
/* 803D8EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D8EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D8EBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D8EC0  7C 08 03 A6 */	mtlr r0
/* 803D8EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D8EC8  4E 80 00 20 */	blr 
