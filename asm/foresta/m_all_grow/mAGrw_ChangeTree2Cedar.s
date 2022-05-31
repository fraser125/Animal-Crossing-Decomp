lbl_80373FE0:
/* 80373FE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80373FE4  7C 08 02 A6 */	mflr r0
/* 80373FE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80373FEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80373FF0  4B D2 6E DD */	bl func_8009AECC
/* 80373FF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80373FF8  3C 60 80 65 */	lis r3, cedar_max_table@ha /* 0x8064D4F0@ha */
/* 80373FFC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80374000  3B 80 00 00 */	li r28, 0
/* 80374004  3F A4 00 01 */	addis r29, r4, 1
/* 80374008  3B C3 D4 F0 */	addi r30, r3, cedar_max_table@l /* 0x8064D4F0@l */
/* 8037400C  3B E0 00 00 */	li r31, 0
/* 80374010  3B BD 37 A8 */	addi r29, r29, 0x37a8
lbl_80374014:
/* 80374014  3B 60 00 00 */	li r27, 0
lbl_80374018:
/* 80374018  7C DE F8 2E */	lwzx r6, r30, r31
/* 8037401C  7F A3 EB 78 */	mr r3, r29
/* 80374020  38 80 08 61 */	li r4, 0x861
/* 80374024  38 A0 08 04 */	li r5, 0x804
/* 80374028  4B FF FD E9 */	bl mAGrw_ChangeTree2OtherBlock
/* 8037402C  3B 7B 00 01 */	addi r27, r27, 1
/* 80374030  3B BD 02 00 */	addi r29, r29, 0x200
/* 80374034  2C 1B 00 05 */	cmpwi r27, 5
/* 80374038  41 80 FF E0 */	blt lbl_80374018
/* 8037403C  3B 9C 00 01 */	addi r28, r28, 1
/* 80374040  3B FF 00 04 */	addi r31, r31, 4
/* 80374044  2C 1C 00 03 */	cmpwi r28, 3
/* 80374048  41 80 FF CC */	blt lbl_80374014
/* 8037404C  39 61 00 20 */	addi r11, r1, 0x20
/* 80374050  4B D2 6E C9 */	bl func_8009AF18
/* 80374054  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80374058  7C 08 03 A6 */	mtlr r0
/* 8037405C  38 21 00 20 */	addi r1, r1, 0x20
/* 80374060  4E 80 00 20 */	blr 
