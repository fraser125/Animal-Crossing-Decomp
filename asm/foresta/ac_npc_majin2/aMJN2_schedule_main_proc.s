lbl_80557D88:
/* 80557D88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557D8C  7C 08 02 A6 */	mflr r0
/* 80557D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557D94  39 61 00 20 */	addi r11, r1, 0x20
/* 80557D98  4B B4 31 3D */	bl func_8009AED4
/* 80557D9C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80557DA0  7C 7D 1B 78 */	mr r29, r3
/* 80557DA4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80557DA8  7C 9E 23 78 */	mr r30, r4
/* 80557DAC  3F E5 00 02 */	addis r31, r5, 2
/* 80557DB0  38 A0 FF FF */	li r5, -1
/* 80557DB4  80 FF 60 4C */	lwz r7, 0x604c(r31)
/* 80557DB8  38 C0 00 01 */	li r6, 1
/* 80557DBC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80557DC0  7D 89 03 A6 */	mtctr r12
/* 80557DC4  4E 80 04 21 */	bctrl 
/* 80557DC8  2C 03 00 00 */	cmpwi r3, 0
/* 80557DCC  40 82 00 24 */	bne lbl_80557DF0
/* 80557DD0  80 DF 60 4C */	lwz r6, 0x604c(r31)
/* 80557DD4  7F A3 EB 78 */	mr r3, r29
/* 80557DD8  7F C4 F3 78 */	mr r4, r30
/* 80557DDC  38 A0 FF FF */	li r5, -1
/* 80557DE0  81 86 01 20 */	lwz r12, 0x120(r6)
/* 80557DE4  38 C0 00 02 */	li r6, 2
/* 80557DE8  7D 89 03 A6 */	mtctr r12
/* 80557DEC  4E 80 04 21 */	bctrl 
lbl_80557DF0:
/* 80557DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80557DF4  4B B4 31 2D */	bl func_8009AF20
/* 80557DF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557DFC  7C 08 03 A6 */	mtlr r0
/* 80557E00  38 21 00 20 */	addi r1, r1, 0x20
/* 80557E04  4E 80 00 20 */	blr 
