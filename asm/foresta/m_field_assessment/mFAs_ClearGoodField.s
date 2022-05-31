lbl_803A145C:
/* 803A145C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1460  7C 08 02 A6 */	mflr r0
/* 803A1464  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A1468  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A146C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1470  3C 63 00 02 */	addis r3, r3, 2
/* 803A1474  38 63 41 78 */	addi r3, r3, 0x4178
/* 803A1478  4B FF FF A9 */	bl func_803A1420
/* 803A147C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1480  7C 08 03 A6 */	mtlr r0
/* 803A1484  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1488  4E 80 00 20 */	blr 
