lbl_8045A9B8:
/* 8045A9B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045A9BC  7C 08 02 A6 */	mflr r0
/* 8045A9C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045A9C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8045A9C8  4B C4 05 01 */	bl func_8009AEC8
/* 8045A9CC  3C A0 80 64 */	lis r5, lit_5524@ha /* 0x80644994@ha */
/* 8045A9D0  7C 7A 1B 78 */	mr r26, r3
/* 8045A9D4  C0 05 49 94 */	lfs f0, lit_5524@l(r5)  /* 0x80644994@l */
/* 8045A9D8  7C 9B 23 78 */	mr r27, r4
/* 8045A9DC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8045A9E0  4B FF FD 79 */	bl Museum_Insect_Talk_process
/* 8045A9E4  3C 60 80 68 */	lis r3, minsect_mv@ha /* 0x8068668C@ha */
/* 8045A9E8  3B 80 00 00 */	li r28, 0
/* 8045A9EC  3B A3 66 8C */	addi r29, r3, minsect_mv@l /* 0x8068668C@l */
/* 8045A9F0  3B E0 00 00 */	li r31, 0
/* 8045A9F4  3B C0 00 00 */	li r30, 0
lbl_8045A9F8:
/* 8045A9F8  7C 7A F2 14 */	add r3, r26, r30
/* 8045A9FC  A8 03 02 00 */	lha r0, 0x200(r3)
/* 8045AA00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8045AA04  41 82 00 18 */	beq lbl_8045AA1C
/* 8045AA08  7D 9D F8 2E */	lwzx r12, r29, r31
/* 8045AA0C  7F 64 DB 78 */	mr r4, r27
/* 8045AA10  38 63 01 74 */	addi r3, r3, 0x174
/* 8045AA14  7D 89 03 A6 */	mtctr r12
/* 8045AA18  4E 80 04 21 */	bctrl 
lbl_8045AA1C:
/* 8045AA1C  3B 9C 00 01 */	addi r28, r28, 1
/* 8045AA20  3B DE 00 94 */	addi r30, r30, 0x94
/* 8045AA24  2C 1C 00 28 */	cmpwi r28, 0x28
/* 8045AA28  3B FF 00 04 */	addi r31, r31, 4
/* 8045AA2C  41 80 FF CC */	blt lbl_8045A9F8
/* 8045AA30  39 61 00 20 */	addi r11, r1, 0x20
/* 8045AA34  4B C4 04 E1 */	bl func_8009AF14
/* 8045AA38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045AA3C  7C 08 03 A6 */	mtlr r0
/* 8045AA40  38 21 00 20 */	addi r1, r1, 0x20
/* 8045AA44  4E 80 00 20 */	blr 
