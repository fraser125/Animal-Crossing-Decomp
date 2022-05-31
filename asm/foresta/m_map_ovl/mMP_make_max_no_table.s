lbl_805E5ED8:
/* 805E5ED8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805E5EDC  7C 08 02 A6 */	mflr r0
/* 805E5EE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805E5EE4  39 61 00 30 */	addi r11, r1, 0x30
/* 805E5EE8  4B AB 4F D5 */	bl func_8009AEBC
/* 805E5EEC  7C 9E 23 79 */	or. r30, r4, r4
/* 805E5EF0  7C 7D 1B 78 */	mr r29, r3
/* 805E5EF4  3B E0 00 00 */	li r31, 0
/* 805E5EF8  38 60 00 00 */	li r3, 0
/* 805E5EFC  38 00 00 27 */	li r0, 0x27
/* 805E5F00  7F C9 03 A6 */	mtctr r30
/* 805E5F04  40 81 00 10 */	ble lbl_805E5F14
lbl_805E5F08:
/* 805E5F08  7C 1D 19 2E */	stwx r0, r29, r3
/* 805E5F0C  38 63 00 04 */	addi r3, r3, 4
/* 805E5F10  42 00 FF F8 */	bdnz lbl_805E5F08
lbl_805E5F14:
/* 805E5F14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805E5F18  3C 60 80 65 */	lis r3, g_block_type_p@ha /* 0x80653D1C@ha */
/* 805E5F1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805E5F20  3B 20 00 01 */	li r25, 1
/* 805E5F24  3F 44 00 02 */	addis r26, r4, 2
/* 805E5F28  3B 63 3D 1C */	addi r27, r3, g_block_type_p@l /* 0x80653D1C@l */
/* 805E5F2C  3B 80 00 07 */	li r28, 7
lbl_805E5F30:
/* 805E5F30  3A E0 00 01 */	li r23, 1
lbl_805E5F34:
/* 805E5F34  80 1B 00 00 */	lwz r0, 0(r27)
/* 805E5F38  7C 00 BA 14 */	add r0, r0, r23
/* 805E5F3C  7F 1C 00 AE */	lbzx r24, r28, r0
/* 805E5F40  7F 03 C3 78 */	mr r3, r24
/* 805E5F44  4B FF FF 59 */	bl mMP_check_bg_kind
/* 805E5F48  2C 03 00 01 */	cmpwi r3, 1
/* 805E5F4C  40 82 00 4C */	bne lbl_805E5F98
/* 805E5F50  93 1D 00 00 */	stw r24, 0(r29)
/* 805E5F54  88 1A 13 F2 */	lbz r0, 0x13f2(r26)
/* 805E5F58  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 805E5F5C  41 82 00 34 */	beq lbl_805E5F90
/* 805E5F60  88 1A 13 F0 */	lbz r0, 0x13f0(r26)
/* 805E5F64  7C 00 B8 00 */	cmpw r0, r23
/* 805E5F68  40 82 00 28 */	bne lbl_805E5F90
/* 805E5F6C  88 1A 13 F1 */	lbz r0, 0x13f1(r26)
/* 805E5F70  7C 00 C8 00 */	cmpw r0, r25
/* 805E5F74  40 82 00 1C */	bne lbl_805E5F90
/* 805E5F78  3C 60 80 6D */	lis r3, pluss_bridge@ha /* 0x806CDADC@ha */
/* 805E5F7C  38 63 DA DC */	addi r3, r3, pluss_bridge@l /* 0x806CDADC@l */
/* 805E5F80  7C 03 C0 AE */	lbzx r0, r3, r24
/* 805E5F84  28 00 00 FF */	cmplwi r0, 0xff
/* 805E5F88  41 82 00 08 */	beq lbl_805E5F90
/* 805E5F8C  90 1D 00 00 */	stw r0, 0(r29)
lbl_805E5F90:
/* 805E5F90  3B BD 00 04 */	addi r29, r29, 4
/* 805E5F94  3B FF 00 01 */	addi r31, r31, 1
lbl_805E5F98:
/* 805E5F98  7C 1F F0 00 */	cmpw r31, r30
/* 805E5F9C  40 80 00 20 */	bge lbl_805E5FBC
/* 805E5FA0  3A F7 00 01 */	addi r23, r23, 1
/* 805E5FA4  2C 17 00 06 */	cmpwi r23, 6
/* 805E5FA8  41 80 FF 8C */	blt lbl_805E5F34
/* 805E5FAC  3B 39 00 01 */	addi r25, r25, 1
/* 805E5FB0  3B 9C 00 07 */	addi r28, r28, 7
/* 805E5FB4  2C 19 00 07 */	cmpwi r25, 7
/* 805E5FB8  41 80 FF 78 */	blt lbl_805E5F30
lbl_805E5FBC:
/* 805E5FBC  39 61 00 30 */	addi r11, r1, 0x30
/* 805E5FC0  4B AB 4F 49 */	bl func_8009AF08
/* 805E5FC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805E5FC8  7C 08 03 A6 */	mtlr r0
/* 805E5FCC  38 21 00 30 */	addi r1, r1, 0x30
/* 805E5FD0  4E 80 00 20 */	blr 
