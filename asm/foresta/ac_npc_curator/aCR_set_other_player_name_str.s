lbl_8054BAF8:
/* 8054BAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054BAFC  7C 08 02 A6 */	mflr r0
/* 8054BB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054BB04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054BB08  7C 7F 1B 78 */	mr r31, r3
/* 8054BB0C  4B E7 3B 9D */	bl func_803BF6A8
/* 8054BB10  1C DF 24 40 */	mulli r6, r31, 0x2440
/* 8054BB14  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054BB18  38 80 00 00 */	li r4, 0
/* 8054BB1C  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 8054BB20  7C A0 32 14 */	add r5, r0, r6
/* 8054BB24  38 C0 00 08 */	li r6, 8
/* 8054BB28  38 A5 00 20 */	addi r5, r5, 0x20
/* 8054BB2C  4B E7 41 29 */	bl mMsg_Set_free_str
/* 8054BB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054BB34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054BB38  7C 08 03 A6 */	mtlr r0
/* 8054BB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054BB40  4E 80 00 20 */	blr 
