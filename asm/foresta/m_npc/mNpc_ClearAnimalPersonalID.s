lbl_803CB384:
/* 803CB384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB388  7C 08 02 A6 */	mflr r0
/* 803CB38C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803CB390  38 A0 00 FF */	li r5, 0xff
/* 803CB394  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB398  38 00 00 00 */	li r0, 0
/* 803CB39C  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803CB3A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CB3A4  7C 7F 1B 78 */	mr r31, r3
/* 803CB3A8  B0 03 00 00 */	sth r0, 0(r3)
/* 803CB3AC  38 00 00 06 */	li r0, 6
/* 803CB3B0  98 A3 00 0C */	stb r5, 0xc(r3)
/* 803CB3B4  B0 83 00 02 */	sth r4, 2(r3)
/* 803CB3B8  98 03 00 0D */	stb r0, 0xd(r3)
/* 803CB3BC  48 00 C1 A5 */	bl mNPS_reset_schedule_area
/* 803CB3C0  38 7F 00 04 */	addi r3, r31, 4
/* 803CB3C4  4B FE 85 05 */	bl mLd_ClearLandName
/* 803CB3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB3CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CB3D0  7C 08 03 A6 */	mtlr r0
/* 803CB3D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB3D8  4E 80 00 20 */	blr 
