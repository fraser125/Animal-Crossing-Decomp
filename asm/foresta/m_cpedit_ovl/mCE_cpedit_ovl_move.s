lbl_805CC170:
/* 805CC170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CC174  7C 08 02 A6 */	mflr r0
/* 805CC178  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CC17C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC180  4B AC ED 55 */	bl func_8009AED4
/* 805CC184  7C 7D 1B 78 */	mr r29, r3
/* 805CC188  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805CC18C  3B DF 05 AC */	addi r30, r31, 0x5ac
/* 805CC190  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 805CC194  7D 89 03 A6 */	mtctr r12
/* 805CC198  4E 80 04 21 */	bctrl 
/* 805CC19C  80 1E 00 04 */	lwz r0, 4(r30)
/* 805CC1A0  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CB738@ha */
/* 805CC1A4  38 A3 B7 38 */	addi r5, r3, ovl_move_proc@l /* 0x806CB738@l */
/* 805CC1A8  7F A3 EB 78 */	mr r3, r29
/* 805CC1AC  54 00 10 3A */	slwi r0, r0, 2
/* 805CC1B0  7F C4 F3 78 */	mr r4, r30
/* 805CC1B4  7D 85 00 2E */	lwzx r12, r5, r0
/* 805CC1B8  7D 89 03 A6 */	mtctr r12
/* 805CC1BC  4E 80 04 21 */	bctrl 
/* 805CC1C0  80 1E 00 04 */	lwz r0, 4(r30)
/* 805CC1C4  2C 00 00 01 */	cmpwi r0, 1
/* 805CC1C8  40 82 00 10 */	bne lbl_805CC1D8
/* 805CC1CC  38 00 00 01 */	li r0, 1
/* 805CC1D0  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 805CC1D4  48 00 00 0C */	b lbl_805CC1E0
lbl_805CC1D8:
/* 805CC1D8  38 00 00 00 */	li r0, 0
/* 805CC1DC  90 1F 09 3C */	stw r0, 0x93c(r31)
lbl_805CC1E0:
/* 805CC1E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC1E4  4B AC ED 3D */	bl func_8009AF20
/* 805CC1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CC1EC  7C 08 03 A6 */	mtlr r0
/* 805CC1F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CC1F4  4E 80 00 20 */	blr 
