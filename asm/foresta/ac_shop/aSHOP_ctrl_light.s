lbl_805B9B60:
/* 805B9B60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9B64  7C 08 02 A6 */	mflr r0
/* 805B9B68  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B9B70  4B AE 13 65 */	bl func_8009AED4
/* 805B9B74  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B9B78  7C 7D 1B 78 */	mr r29, r3
/* 805B9B7C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805B9B80  3B C0 00 00 */	li r30, 0
/* 805B9B84  3C 63 00 02 */	addis r3, r3, 2
/* 805B9B88  83 E3 61 1C */	lwz r31, 0x611c(r3)
/* 805B9B8C  4B DE 10 1D */	bl mEv_CheckArbeit
/* 805B9B90  2C 03 00 01 */	cmpwi r3, 1
/* 805B9B94  40 82 00 3C */	bne lbl_805B9BD0
/* 805B9B98  4B E3 0B 79 */	bl mSP_ShopOpen
/* 805B9B9C  2C 03 00 02 */	cmpwi r3, 2
/* 805B9BA0  41 82 00 10 */	beq lbl_805B9BB0
/* 805B9BA4  4B E3 0B 6D */	bl mSP_ShopOpen
/* 805B9BA8  2C 03 00 06 */	cmpwi r3, 6
/* 805B9BAC  40 82 00 6C */	bne lbl_805B9C18
lbl_805B9BB0:
/* 805B9BB0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 805B9BB4  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 805B9BB8  7C 1F 00 00 */	cmpw r31, r0
/* 805B9BBC  40 80 00 0C */	bge lbl_805B9BC8
/* 805B9BC0  2C 1F 46 50 */	cmpwi r31, 0x4650
/* 805B9BC4  40 80 00 54 */	bge lbl_805B9C18
lbl_805B9BC8:
/* 805B9BC8  3B C0 00 01 */	li r30, 1
/* 805B9BCC  48 00 00 4C */	b lbl_805B9C18
lbl_805B9BD0:
/* 805B9BD0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 805B9BD4  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 805B9BD8  7C 1F 00 00 */	cmpw r31, r0
/* 805B9BDC  40 80 00 0C */	bge lbl_805B9BE8
/* 805B9BE0  2C 1F 46 50 */	cmpwi r31, 0x4650
/* 805B9BE4  40 80 00 34 */	bge lbl_805B9C18
lbl_805B9BE8:
/* 805B9BE8  80 1D 02 B4 */	lwz r0, 0x2b4(r29)
/* 805B9BEC  2C 00 00 04 */	cmpwi r0, 4
/* 805B9BF0  40 82 00 0C */	bne lbl_805B9BFC
/* 805B9BF4  3B C0 00 01 */	li r30, 1
/* 805B9BF8  48 00 00 20 */	b lbl_805B9C18
lbl_805B9BFC:
/* 805B9BFC  4B E3 0B 15 */	bl mSP_ShopOpen
/* 805B9C00  2C 03 00 02 */	cmpwi r3, 2
/* 805B9C04  41 82 00 10 */	beq lbl_805B9C14
/* 805B9C08  4B E3 0B 09 */	bl mSP_ShopOpen
/* 805B9C0C  2C 03 00 06 */	cmpwi r3, 6
/* 805B9C10  40 82 00 08 */	bne lbl_805B9C18
lbl_805B9C14:
/* 805B9C14  3B C0 00 01 */	li r30, 1
lbl_805B9C18:
/* 805B9C18  7F C3 F3 78 */	mr r3, r30
/* 805B9C1C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B9C20  4B AE 13 01 */	bl func_8009AF20
/* 805B9C24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9C28  7C 08 03 A6 */	mtlr r0
/* 805B9C2C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9C30  4E 80 00 20 */	blr 
