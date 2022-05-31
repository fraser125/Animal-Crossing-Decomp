lbl_8049E14C:
/* 8049E14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E150  7C 08 02 A6 */	mflr r0
/* 8049E154  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E158  4B FF F7 21 */	bl Shop_Goods_Actor_drop_destruct
/* 8049E15C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049E160  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049E164  3C 63 00 02 */	addis r3, r3, 2
/* 8049E168  80 63 60 BC */	lwz r3, 0x60bc(r3)
/* 8049E16C  28 03 00 00 */	cmplwi r3, 0
/* 8049E170  41 82 00 08 */	beq lbl_8049E178
/* 8049E174  4B F1 E3 41 */	bl zelda_free
lbl_8049E178:
/* 8049E178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E17C  7C 08 03 A6 */	mtlr r0
/* 8049E180  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E184  4E 80 00 20 */	blr 
