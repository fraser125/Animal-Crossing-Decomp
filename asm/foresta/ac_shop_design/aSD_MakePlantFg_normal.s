lbl_8049C9A0:
/* 8049C9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C9A4  7C 08 02 A6 */	mflr r0
/* 8049C9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049C9B0  3F E0 00 01 */	lis r31, 0x0001 /* 0x0000FE13@ha */
lbl_8049C9B4:
/* 8049C9B4  38 7F FE 13 */	addi r3, r31, 0xFE13 /* 0x0000FE13@l */
/* 8049C9B8  38 9F FE 05 */	addi r4, r31, -507
/* 8049C9BC  4B F4 E4 29 */	bl mSP_SetGoods2ReservedPoint
/* 8049C9C0  2C 03 00 00 */	cmpwi r3, 0
/* 8049C9C4  40 82 FF F0 */	bne lbl_8049C9B4
/* 8049C9C8  3F E0 00 01 */	lis r31, 0x0001 /* 0x0000FE13@ha */
lbl_8049C9CC:
/* 8049C9CC  38 7F FE 13 */	addi r3, r31, 0xFE13 /* 0x0000FE13@l */
/* 8049C9D0  38 9F FE 08 */	addi r4, r31, -504
/* 8049C9D4  4B F4 E4 11 */	bl mSP_SetGoods2ReservedPoint
/* 8049C9D8  2C 03 00 00 */	cmpwi r3, 0
/* 8049C9DC  40 82 FF F0 */	bne lbl_8049C9CC
/* 8049C9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C9E8  7C 08 03 A6 */	mtlr r0
/* 8049C9EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C9F0  4E 80 00 20 */	blr 
