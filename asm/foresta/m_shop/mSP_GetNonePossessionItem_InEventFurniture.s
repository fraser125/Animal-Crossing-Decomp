lbl_803EB390:
/* 803EB390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EB394  7C 08 02 A6 */	mflr r0
/* 803EB398  7C 65 1B 79 */	or. r5, r3, r3
/* 803EB39C  3C 60 80 CE */	lis r3, mSP_ftr_list@ha /* 0x80CE5A9C@ha */
/* 803EB3A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EB3A4  38 63 5A 9C */	addi r3, r3, mSP_ftr_list@l /* 0x80CE5A9C@l */
/* 803EB3A8  38 80 00 00 */	li r4, 0
/* 803EB3AC  38 00 00 00 */	li r0, 0
/* 803EB3B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803EB3B4  41 80 00 10 */	blt lbl_803EB3C4
/* 803EB3B8  2C 05 00 04 */	cmpwi r5, 4
/* 803EB3BC  40 80 00 08 */	bge lbl_803EB3C4
/* 803EB3C0  38 00 00 01 */	li r0, 1
lbl_803EB3C4:
/* 803EB3C4  2C 00 00 00 */	cmpwi r0, 0
/* 803EB3C8  41 82 00 1C */	beq lbl_803EB3E4
/* 803EB3CC  1C C5 24 40 */	mulli r6, r5, 0x2440
/* 803EB3D0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EB3D4  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 803EB3D8  7C A0 32 14 */	add r5, r0, r6
/* 803EB3DC  38 A5 11 28 */	addi r5, r5, 0x1128
/* 803EB3E0  48 00 00 18 */	b lbl_803EB3F8
lbl_803EB3E4:
/* 803EB3E4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EB3E8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803EB3EC  3C A5 00 02 */	addis r5, r5, 2
/* 803EB3F0  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 803EB3F4  38 A5 11 08 */	addi r5, r5, 0x1108
lbl_803EB3F8:
/* 803EB3F8  4B FF FE 29 */	bl mSP_GetNonePossessionItem_InList
/* 803EB3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EB400  7C 08 03 A6 */	mtlr r0
/* 803EB404  38 21 00 10 */	addi r1, r1, 0x10
/* 803EB408  4E 80 00 20 */	blr 
