lbl_80373F4C:
/* 80373F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80373F50  7C 08 02 A6 */	mflr r0
/* 80373F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80373F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80373F5C  4B D2 6F 75 */	bl func_8009AED0
/* 80373F60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80373F64  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80373F68  3C 63 00 02 */	addis r3, r3, 2
/* 80373F6C  A0 63 06 88 */	lhz r3, 0x688(r3)
/* 80373F70  34 03 D8 00 */	addic. r0, r3, -10240
/* 80373F74  41 80 00 0C */	blt lbl_80373F80
/* 80373F78  2C 00 00 05 */	cmpwi r0, 5
/* 80373F7C  41 80 00 08 */	blt lbl_80373F84
lbl_80373F80:
/* 80373F80  38 00 00 00 */	li r0, 0
lbl_80373F84:
/* 80373F84  3C 80 80 65 */	lis r4, data_8064D498@ha /* 0x8064D498@ha */
/* 80373F88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80373F8C  54 00 08 3C */	slwi r0, r0, 1
/* 80373F90  3B 80 00 00 */	li r28, 0
/* 80373F94  38 84 D4 98 */	addi r4, r4, data_8064D498@l /* 0x8064D498@l */
/* 80373F98  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 80373F9C  7F A4 02 2E */	lhzx r29, r4, r0
/* 80373FA0  3B E0 00 00 */	li r31, 0
lbl_80373FA4:
/* 80373FA4  7C 7E FA 14 */	add r3, r30, r31
/* 80373FA8  7F A4 EB 78 */	mr r4, r29
/* 80373FAC  3C 63 00 01 */	addis r3, r3, 1
/* 80373FB0  38 63 37 A8 */	addi r3, r3, 0x37a8
/* 80373FB4  4B FF FF 01 */	bl mAGrw_ChangeTree2FruitTreeLine
/* 80373FB8  3B 9C 00 01 */	addi r28, r28, 1
/* 80373FBC  3B FF 0A 00 */	addi r31, r31, 0xa00
/* 80373FC0  2C 1C 00 06 */	cmpwi r28, 6
/* 80373FC4  41 80 FF E0 */	blt lbl_80373FA4
/* 80373FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80373FCC  4B D2 6F 51 */	bl func_8009AF1C
/* 80373FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80373FD4  7C 08 03 A6 */	mtlr r0
/* 80373FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80373FDC  4E 80 00 20 */	blr 
