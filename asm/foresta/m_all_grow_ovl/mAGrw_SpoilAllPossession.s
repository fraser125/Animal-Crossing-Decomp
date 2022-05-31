lbl_80513EE4:
/* 80513EE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80513EE8  7C 08 02 A6 */	mflr r0
/* 80513EEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80513EF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80513EF4  4B B8 6F C9 */	bl func_8009AEBC
/* 80513EF8  2C 03 00 01 */	cmpwi r3, 1
/* 80513EFC  40 82 00 EC */	bne lbl_80513FE8
/* 80513F00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80513F04  3B 40 00 00 */	li r26, 0
/* 80513F08  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80513F0C  3B 23 00 20 */	addi r25, r3, 0x20
lbl_80513F10:
/* 80513F10  38 79 00 68 */	addi r3, r25, 0x68
/* 80513F14  38 80 00 0F */	li r4, 0xf
/* 80513F18  4B FF FF 79 */	bl mAGrw_SpoilPossession
/* 80513F1C  3B 5A 00 01 */	addi r26, r26, 1
/* 80513F20  3B 39 24 40 */	addi r25, r25, 0x2440
/* 80513F24  2C 1A 00 04 */	cmpwi r26, 4
/* 80513F28  41 80 FF E8 */	blt lbl_80513F10
/* 80513F2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80513F30  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80513F34  3C 63 00 02 */	addis r3, r3, 2
/* 80513F38  88 03 60 03 */	lbz r0, 0x6003(r3)
/* 80513F3C  28 00 00 04 */	cmplwi r0, 4
/* 80513F40  40 82 00 14 */	bne lbl_80513F54
/* 80513F44  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80513F48  38 80 00 0F */	li r4, 0xf
/* 80513F4C  38 63 00 68 */	addi r3, r3, 0x68
/* 80513F50  4B FF FF 41 */	bl mAGrw_SpoilPossession
lbl_80513F54:
/* 80513F54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80513F58  3B 20 00 00 */	li r25, 0
/* 80513F5C  3B 83 85 38 */	addi r28, r3, common_data@l /* 0x81138538@l */
/* 80513F60  3B E0 00 00 */	li r31, 0
lbl_80513F64:
/* 80513F64  7F 5C FA 14 */	add r26, r28, r31
/* 80513F68  3B 00 00 00 */	li r24, 0
/* 80513F6C  3B C0 00 00 */	li r30, 0
lbl_80513F70:
/* 80513F70  7F 7A F2 14 */	add r27, r26, r30
/* 80513F74  3A E0 00 00 */	li r23, 0
/* 80513F78  3B A0 00 00 */	li r29, 0
lbl_80513F7C:
/* 80513F7C  3C 7D 00 01 */	addis r3, r29, 1
/* 80513F80  38 80 01 00 */	li r4, 0x100
/* 80513F84  38 63 9D 20 */	addi r3, r3, -25312
/* 80513F88  7C 7B 1A 14 */	add r3, r27, r3
/* 80513F8C  4B FF FF 05 */	bl mAGrw_SpoilPossession
/* 80513F90  3A F7 00 01 */	addi r23, r23, 1
/* 80513F94  3B BD 02 28 */	addi r29, r29, 0x228
/* 80513F98  2C 17 00 04 */	cmpwi r23, 4
/* 80513F9C  41 80 FF E0 */	blt lbl_80513F7C
/* 80513FA0  3B 18 00 01 */	addi r24, r24, 1
/* 80513FA4  3B DE 08 A8 */	addi r30, r30, 0x8a8
/* 80513FA8  2C 18 00 03 */	cmpwi r24, 3
/* 80513FAC  41 80 FF C4 */	blt lbl_80513F70
/* 80513FB0  3F 7A 00 01 */	addis r27, r26, 1
/* 80513FB4  3B 40 00 00 */	li r26, 0
/* 80513FB8  3B 7B C2 BC */	addi r27, r27, -15684
lbl_80513FBC:
/* 80513FBC  7F 63 DB 78 */	mr r3, r27
/* 80513FC0  38 80 00 00 */	li r4, 0
/* 80513FC4  4B FF CB C5 */	bl mAGrw_SpoilKabu
/* 80513FC8  3B 5A 00 01 */	addi r26, r26, 1
/* 80513FCC  3B 7B 00 08 */	addi r27, r27, 8
/* 80513FD0  2C 1A 00 04 */	cmpwi r26, 4
/* 80513FD4  41 80 FF E8 */	blt lbl_80513FBC
/* 80513FD8  3B 39 00 01 */	addi r25, r25, 1
/* 80513FDC  3B FF 26 B0 */	addi r31, r31, 0x26b0
/* 80513FE0  2C 19 00 04 */	cmpwi r25, 4
/* 80513FE4  41 80 FF 80 */	blt lbl_80513F64
lbl_80513FE8:
/* 80513FE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80513FEC  4B B8 6F 1D */	bl func_8009AF08
/* 80513FF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80513FF4  7C 08 03 A6 */	mtlr r0
/* 80513FF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80513FFC  4E 80 00 20 */	blr 
