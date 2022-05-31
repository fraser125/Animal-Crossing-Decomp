lbl_805C6F8C:
/* 805C6F8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C6F90  7C 08 02 A6 */	mflr r0
/* 805C6F94  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C6F98  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6F9C  4B AD 3F 35 */	bl func_8009AED0
/* 805C6FA0  3C 80 80 6D */	lis r4, data_806C8780@ha /* 0x806C8780@ha */
/* 805C6FA4  7C 7C 1B 78 */	mr r28, r3
/* 805C6FA8  3B C4 87 80 */	addi r30, r4, data_806C8780@l /* 0x806C8780@l */
/* 805C6FAC  3B A0 00 00 */	li r29, 0
/* 805C6FB0  3B E0 00 00 */	li r31, 0
lbl_805C6FB4:
/* 805C6FB4  7C DE FA 14 */	add r6, r30, r31
/* 805C6FB8  7F 83 E3 78 */	mr r3, r28
/* 805C6FBC  88 86 00 00 */	lbz r4, 0(r6)
/* 805C6FC0  38 E0 00 03 */	li r7, 3
/* 805C6FC4  88 A6 00 01 */	lbz r5, 1(r6)
/* 805C6FC8  39 00 00 00 */	li r8, 0
/* 805C6FCC  88 C6 00 02 */	lbz r6, 2(r6)
/* 805C6FD0  4B FF FD 8D */	bl mDC_set_event_day_data
/* 805C6FD4  3B BD 00 01 */	addi r29, r29, 1
/* 805C6FD8  3B FF 00 03 */	addi r31, r31, 3
/* 805C6FDC  2C 1D 00 10 */	cmpwi r29, 0x10
/* 805C6FE0  41 80 FF D4 */	blt lbl_805C6FB4
/* 805C6FE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6FE8  4B AD 3F 35 */	bl func_8009AF1C
/* 805C6FEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C6FF0  7C 08 03 A6 */	mtlr r0
/* 805C6FF4  38 21 00 20 */	addi r1, r1, 0x20
/* 805C6FF8  4E 80 00 20 */	blr 
