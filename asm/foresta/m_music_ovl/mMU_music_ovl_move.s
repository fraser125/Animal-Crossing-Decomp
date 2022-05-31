lbl_805E8DB8:
/* 805E8DB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E8DBC  7C 08 02 A6 */	mflr r0
/* 805E8DC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E8DC4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E8DC8  4B AB 21 0D */	bl func_8009AED4
/* 805E8DCC  7C 7D 1B 78 */	mr r29, r3
/* 805E8DD0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E8DD4  3B DF 06 3C */	addi r30, r31, 0x63c
/* 805E8DD8  81 9F 06 48 */	lwz r12, 0x648(r31)
/* 805E8DDC  7D 89 03 A6 */	mtctr r12
/* 805E8DE0  4E 80 04 21 */	bctrl 
/* 805E8DE4  80 1E 00 04 */	lwz r0, 4(r30)
/* 805E8DE8  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CE238@ha */
/* 805E8DEC  38 A3 E2 38 */	addi r5, r3, ovl_move_proc@l /* 0x806CE238@l */
/* 805E8DF0  7F A3 EB 78 */	mr r3, r29
/* 805E8DF4  54 00 10 3A */	slwi r0, r0, 2
/* 805E8DF8  7F C4 F3 78 */	mr r4, r30
/* 805E8DFC  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E8E00  7D 89 03 A6 */	mtctr r12
/* 805E8E04  4E 80 04 21 */	bctrl 
/* 805E8E08  80 1E 00 04 */	lwz r0, 4(r30)
/* 805E8E0C  2C 00 00 01 */	cmpwi r0, 1
/* 805E8E10  40 82 00 10 */	bne lbl_805E8E20
/* 805E8E14  38 00 00 01 */	li r0, 1
/* 805E8E18  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 805E8E1C  48 00 00 0C */	b lbl_805E8E28
lbl_805E8E20:
/* 805E8E20  38 00 00 00 */	li r0, 0
/* 805E8E24  90 1F 09 3C */	stw r0, 0x93c(r31)
lbl_805E8E28:
/* 805E8E28  39 61 00 20 */	addi r11, r1, 0x20
/* 805E8E2C  4B AB 20 F5 */	bl func_8009AF20
/* 805E8E30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E8E34  7C 08 03 A6 */	mtlr r0
/* 805E8E38  38 21 00 20 */	addi r1, r1, 0x20
/* 805E8E3C  4E 80 00 20 */	blr 
