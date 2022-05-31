lbl_803AF11C:
/* 803AF11C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AF120  7C 08 02 A6 */	mflr r0
/* 803AF124  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AF128  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF12C  4B CE BD A9 */	bl func_8009AED4
/* 803AF130  7C 7D 1B 78 */	mr r29, r3
/* 803AF134  3B C0 00 00 */	li r30, 0
/* 803AF138  3B E0 00 00 */	li r31, 0
lbl_803AF13C:
/* 803AF13C  38 1F 00 68 */	addi r0, r31, 0x68
/* 803AF140  7C 7D 02 2E */	lhzx r3, r29, r0
/* 803AF144  4B FF FF 21 */	bl sCCk_Check_ItemName_Possession
/* 803AF148  3B DE 00 01 */	addi r30, r30, 1
/* 803AF14C  3B FF 00 02 */	addi r31, r31, 2
/* 803AF150  2C 1E 00 0F */	cmpwi r30, 0xf
/* 803AF154  41 80 FF E8 */	blt lbl_803AF13C
/* 803AF158  38 60 00 00 */	li r3, 0
/* 803AF15C  39 61 00 20 */	addi r11, r1, 0x20
/* 803AF160  4B CE BD C1 */	bl func_8009AF20
/* 803AF164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AF168  7C 08 03 A6 */	mtlr r0
/* 803AF16C  38 21 00 20 */	addi r1, r1, 0x20
/* 803AF170  4E 80 00 20 */	blr 
