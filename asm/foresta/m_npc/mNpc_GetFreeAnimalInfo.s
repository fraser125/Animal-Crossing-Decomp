lbl_803CC5F4:
/* 803CC5F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC5F8  7C 08 02 A6 */	mflr r0
/* 803CC5FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC600  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC604  4B CC E8 CD */	bl func_8009AED0
/* 803CC608  7C 7C 1B 78 */	mr r28, r3
/* 803CC60C  7C 9D 23 78 */	mr r29, r4
/* 803CC610  3B E0 FF FF */	li r31, -1
/* 803CC614  3B C0 00 00 */	li r30, 0
/* 803CC618  48 00 00 24 */	b lbl_803CC63C
lbl_803CC61C:
/* 803CC61C  7F 83 E3 78 */	mr r3, r28
/* 803CC620  4B FF FF 9D */	bl mNpc_CheckFreeAnimalInfo
/* 803CC624  2C 03 00 01 */	cmpwi r3, 1
/* 803CC628  40 82 00 0C */	bne lbl_803CC634
/* 803CC62C  7F DF F3 78 */	mr r31, r30
/* 803CC630  48 00 00 14 */	b lbl_803CC644
lbl_803CC634:
/* 803CC634  3B 9C 09 88 */	addi r28, r28, 0x988
/* 803CC638  3B DE 00 01 */	addi r30, r30, 1
lbl_803CC63C:
/* 803CC63C  7C 1E E8 00 */	cmpw r30, r29
/* 803CC640  41 80 FF DC */	blt lbl_803CC61C
lbl_803CC644:
/* 803CC644  7F E3 FB 78 */	mr r3, r31
/* 803CC648  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC64C  4B CC E8 D1 */	bl func_8009AF1C
/* 803CC650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC654  7C 08 03 A6 */	mtlr r0
/* 803CC658  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC65C  4E 80 00 20 */	blr 
