lbl_8041A6FC:
/* 8041A6FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041A700  7C 08 02 A6 */	mflr r0
/* 8041A704  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041A708  39 61 00 20 */	addi r11, r1, 0x20
/* 8041A70C  4B C8 07 C1 */	bl func_8009AECC
/* 8041A710  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041A714  3B C0 00 00 */	li r30, 0
/* 8041A718  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8041A71C  3B 60 00 00 */	li r27, 0
/* 8041A720  3C 63 00 02 */	addis r3, r3, 2
/* 8041A724  7F DD F3 78 */	mr r29, r30
/* 8041A728  3B 83 04 A4 */	addi r28, r3, 0x4a4
/* 8041A72C  3B E0 00 00 */	li r31, 0
lbl_8041A730:
/* 8041A730  7C 7C F2 14 */	add r3, r28, r30
/* 8041A734  4B FC 59 59 */	bl mPr_ClearPersonalID
/* 8041A738  3B 7B 00 01 */	addi r27, r27, 1
/* 8041A73C  38 1F 00 2C */	addi r0, r31, 0x2c
/* 8041A740  2C 1B 00 02 */	cmpwi r27, 2
/* 8041A744  7F BC 03 2E */	sthx r29, r28, r0
/* 8041A748  3B FF 00 02 */	addi r31, r31, 2
/* 8041A74C  3B DE 00 14 */	addi r30, r30, 0x14
/* 8041A750  41 80 FF E0 */	blt lbl_8041A730
/* 8041A754  38 60 00 01 */	li r3, 1
/* 8041A758  39 61 00 20 */	addi r11, r1, 0x20
/* 8041A75C  4B C8 07 BD */	bl func_8009AF18
/* 8041A760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041A764  7C 08 03 A6 */	mtlr r0
/* 8041A768  38 21 00 20 */	addi r1, r1, 0x20
/* 8041A76C  4E 80 00 20 */	blr 
