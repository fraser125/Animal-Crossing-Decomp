lbl_805CC600:
/* 805CC600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CC604  7C 08 02 A6 */	mflr r0
/* 805CC608  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CC60C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC610  4B AC E8 C5 */	bl func_8009AED4
/* 805CC614  7C 7D 1B 78 */	mr r29, r3
/* 805CC618  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805CC61C  3B DF 05 1C */	addi r30, r31, 0x51c
/* 805CC620  81 9F 05 28 */	lwz r12, 0x528(r31)
/* 805CC624  7D 89 03 A6 */	mtctr r12
/* 805CC628  4E 80 04 21 */	bctrl 
/* 805CC62C  80 1E 00 04 */	lwz r0, 4(r30)
/* 805CC630  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CB7F0@ha */
/* 805CC634  38 A3 B7 F0 */	addi r5, r3, ovl_move_proc@l /* 0x806CB7F0@l */
/* 805CC638  7F A3 EB 78 */	mr r3, r29
/* 805CC63C  54 00 10 3A */	slwi r0, r0, 2
/* 805CC640  7F C4 F3 78 */	mr r4, r30
/* 805CC644  7D 85 00 2E */	lwzx r12, r5, r0
/* 805CC648  7D 89 03 A6 */	mtctr r12
/* 805CC64C  4E 80 04 21 */	bctrl 
/* 805CC650  80 1E 00 04 */	lwz r0, 4(r30)
/* 805CC654  2C 00 00 01 */	cmpwi r0, 1
/* 805CC658  40 82 00 10 */	bne lbl_805CC668
/* 805CC65C  38 00 00 01 */	li r0, 1
/* 805CC660  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 805CC664  48 00 00 0C */	b lbl_805CC670
lbl_805CC668:
/* 805CC668  38 00 00 00 */	li r0, 0
/* 805CC66C  90 1F 09 3C */	stw r0, 0x93c(r31)
lbl_805CC670:
/* 805CC670  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC674  4B AC E8 AD */	bl func_8009AF20
/* 805CC678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CC67C  7C 08 03 A6 */	mtlr r0
/* 805CC680  38 21 00 20 */	addi r1, r1, 0x20
/* 805CC684  4E 80 00 20 */	blr 
