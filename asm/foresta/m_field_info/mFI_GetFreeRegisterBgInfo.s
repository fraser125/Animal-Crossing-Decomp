lbl_803A5EB0:
/* 803A5EB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A5EB4  7C 08 02 A6 */	mflr r0
/* 803A5EB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A5EBC  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5EC0  4B CF 50 15 */	bl func_8009AED4
/* 803A5EC4  3C 60 81 16 */	lis r3, data_81167BC0@ha /* 0x81167BC0@ha */
/* 803A5EC8  3B C0 FF FF */	li r30, -1
/* 803A5ECC  38 03 7B C0 */	addi r0, r3, data_81167BC0@l /* 0x81167BC0@l */
/* 803A5ED0  3B A0 00 00 */	li r29, 0
/* 803A5ED4  7C 1F 03 78 */	mr r31, r0
lbl_803A5ED8:
/* 803A5ED8  7F E3 FB 78 */	mr r3, r31
/* 803A5EDC  4B FF FF BD */	bl mFI_CheckFreeRegisterBgInfo
/* 803A5EE0  2C 03 00 00 */	cmpwi r3, 0
/* 803A5EE4  41 82 00 0C */	beq lbl_803A5EF0
/* 803A5EE8  7F BE EB 78 */	mr r30, r29
/* 803A5EEC  48 00 00 14 */	b lbl_803A5F00
lbl_803A5EF0:
/* 803A5EF0  3B BD 00 01 */	addi r29, r29, 1
/* 803A5EF4  3B FF 00 10 */	addi r31, r31, 0x10
/* 803A5EF8  2C 1D 00 04 */	cmpwi r29, 4
/* 803A5EFC  41 80 FF DC */	blt lbl_803A5ED8
lbl_803A5F00:
/* 803A5F00  7F C3 F3 78 */	mr r3, r30
/* 803A5F04  39 61 00 20 */	addi r11, r1, 0x20
/* 803A5F08  4B CF 50 19 */	bl func_8009AF20
/* 803A5F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A5F10  7C 08 03 A6 */	mtlr r0
/* 803A5F14  38 21 00 20 */	addi r1, r1, 0x20
/* 803A5F18  4E 80 00 20 */	blr 
