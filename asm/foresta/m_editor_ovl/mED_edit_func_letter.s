lbl_805DA3E4:
/* 805DA3E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DA3E8  7C 08 02 A6 */	mflr r0
/* 805DA3EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DA3F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA3F4  4B AC 0A DD */	bl func_8009AED0
/* 805DA3F8  7C 7C 1B 78 */	mr r28, r3
/* 805DA3FC  3C A0 80 6D */	lis r5, letter_base_func_1244@ha /* 0x806CCD68@ha */
/* 805DA400  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805DA404  38 A5 CD 68 */	addi r5, r5, letter_base_func_1244@l /* 0x806CCD68@l */
/* 805DA408  83 E6 09 90 */	lwz r31, 0x990(r6)
/* 805DA40C  83 A6 09 8C */	lwz r29, 0x98c(r6)
/* 805DA410  8B DF 00 00 */	lbz r30, 0(r31)
/* 805DA414  57 C0 10 3A */	slwi r0, r30, 2
/* 805DA418  7D 85 00 2E */	lwzx r12, r5, r0
/* 805DA41C  7D 89 03 A6 */	mtctr r12
/* 805DA420  4E 80 04 21 */	bctrl 
/* 805DA424  A8 1D 00 1E */	lha r0, 0x1e(r29)
/* 805DA428  7C 7F F2 14 */	add r3, r31, r30
/* 805DA42C  98 03 00 05 */	stb r0, 5(r3)
/* 805DA430  88 1D 00 15 */	lbz r0, 0x15(r29)
/* 805DA434  28 00 00 00 */	cmplwi r0, 0
/* 805DA438  40 82 00 14 */	bne lbl_805DA44C
/* 805DA43C  7F A3 EB 78 */	mr r3, r29
/* 805DA440  7F E4 FB 78 */	mr r4, r31
/* 805DA444  7F 85 E3 78 */	mr r5, r28
/* 805DA448  4B FF FE 81 */	bl mED_move_letter_table
lbl_805DA44C:
/* 805DA44C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DA450  4B AC 0A CD */	bl func_8009AF1C
/* 805DA454  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DA458  7C 08 03 A6 */	mtlr r0
/* 805DA45C  38 21 00 20 */	addi r1, r1, 0x20
/* 805DA460  4E 80 00 20 */	blr 
