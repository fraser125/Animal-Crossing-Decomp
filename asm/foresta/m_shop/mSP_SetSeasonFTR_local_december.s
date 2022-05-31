lbl_803E7AF4:
/* 803E7AF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E7AF8  7C 08 02 A6 */	mflr r0
/* 803E7AFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E7B00  39 61 00 20 */	addi r11, r1, 0x20
/* 803E7B04  4B CB 33 D1 */	bl func_8009AED4
/* 803E7B08  2C 04 00 01 */	cmpwi r4, 1
/* 803E7B0C  7C 7D 1B 78 */	mr r29, r3
/* 803E7B10  7C BE 2B 78 */	mr r30, r5
/* 803E7B14  7C DF 33 78 */	mr r31, r6
/* 803E7B18  40 81 00 10 */	ble lbl_803E7B28
/* 803E7B1C  B3 DD 00 00 */	sth r30, 0(r29)
/* 803E7B20  B3 FD 00 02 */	sth r31, 2(r29)
/* 803E7B24  48 00 00 24 */	b lbl_803E7B48
lbl_803E7B28:
/* 803E7B28  4B C7 51 CD */	bl fqrand
/* 803E7B2C  3C 60 80 64 */	lis r3, data_80643184@ha /* 0x80643184@ha */
/* 803E7B30  C0 03 31 84 */	lfs f0, data_80643184@l(r3)  /* 0x80643184@l */
/* 803E7B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803E7B38  40 80 00 0C */	bge lbl_803E7B44
/* 803E7B3C  B3 DD 00 00 */	sth r30, 0(r29)
/* 803E7B40  48 00 00 08 */	b lbl_803E7B48
lbl_803E7B44:
/* 803E7B44  B3 FD 00 00 */	sth r31, 0(r29)
lbl_803E7B48:
/* 803E7B48  39 61 00 20 */	addi r11, r1, 0x20
/* 803E7B4C  4B CB 33 D5 */	bl func_8009AF20
/* 803E7B50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E7B54  7C 08 03 A6 */	mtlr r0
/* 803E7B58  38 21 00 20 */	addi r1, r1, 0x20
/* 803E7B5C  4E 80 00 20 */	blr 
