lbl_8053FE80:
/* 8053FE80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053FE84  7C 08 02 A6 */	mflr r0
/* 8053FE88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053FE8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8053FE90  4B B5 B0 41 */	bl func_8009AED0
/* 8053FE94  7C 9D 23 78 */	mr r29, r4
/* 8053FE98  7C 7C 1B 78 */	mr r28, r3
/* 8053FE9C  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 8053FEA0  3B C0 00 00 */	li r30, 0
/* 8053FEA4  2C 1F 00 01 */	cmpwi r31, 1
/* 8053FEA8  41 82 00 28 */	beq lbl_8053FED0
/* 8053FEAC  40 80 00 10 */	bge lbl_8053FEBC
/* 8053FEB0  2C 1F 00 00 */	cmpwi r31, 0
/* 8053FEB4  40 80 00 14 */	bge lbl_8053FEC8
/* 8053FEB8  48 00 00 24 */	b lbl_8053FEDC
lbl_8053FEBC:
/* 8053FEBC  2C 1F 00 05 */	cmpwi r31, 5
/* 8053FEC0  41 82 00 10 */	beq lbl_8053FED0
/* 8053FEC4  48 00 00 18 */	b lbl_8053FEDC
lbl_8053FEC8:
/* 8053FEC8  3B C0 00 50 */	li r30, 0x50
/* 8053FECC  48 00 00 10 */	b lbl_8053FEDC
lbl_8053FED0:
/* 8053FED0  7F 83 E3 78 */	mr r3, r28
/* 8053FED4  38 80 00 69 */	li r4, 0x69
/* 8053FED8  4B FF C4 E5 */	bl func_8053C3BC
lbl_8053FEDC:
/* 8053FEDC  2C 1F 00 02 */	cmpwi r31, 2
/* 8053FEE0  41 82 00 44 */	beq lbl_8053FF24
/* 8053FEE4  40 80 00 10 */	bge lbl_8053FEF4
/* 8053FEE8  2C 1F 00 01 */	cmpwi r31, 1
/* 8053FEEC  40 80 00 10 */	bge lbl_8053FEFC
/* 8053FEF0  48 00 00 34 */	b lbl_8053FF24
lbl_8053FEF4:
/* 8053FEF4  2C 1F 00 04 */	cmpwi r31, 4
/* 8053FEF8  40 80 00 2C */	bge lbl_8053FF24
lbl_8053FEFC:
/* 8053FEFC  A0 7C 08 7E */	lhz r3, 0x87e(r28)
/* 8053FF00  38 00 00 00 */	li r0, 0
/* 8053FF04  28 03 23 00 */	cmplwi r3, 0x2300
/* 8053FF08  41 80 00 10 */	blt lbl_8053FF18
/* 8053FF0C  28 03 23 28 */	cmplwi r3, 0x2328
/* 8053FF10  41 81 00 08 */	bgt lbl_8053FF18
/* 8053FF14  38 00 00 01 */	li r0, 1
lbl_8053FF18:
/* 8053FF18  2C 00 00 01 */	cmpwi r0, 1
/* 8053FF1C  40 82 00 08 */	bne lbl_8053FF24
/* 8053FF20  3B BD 00 01 */	addi r29, r29, 1
lbl_8053FF24:
/* 8053FF24  9B DC 09 35 */	stb r30, 0x935(r28)
/* 8053FF28  3C 80 80 6A */	lis r4, act_idx_2159@ha /* 0x806A3BE8@ha */
/* 8053FF2C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8053FF30  7F 83 E3 78 */	mr r3, r28
/* 8053FF34  9B BC 07 F6 */	stb r29, 0x7f6(r28)
/* 8053FF38  38 84 3B E8 */	addi r4, r4, act_idx_2159@l /* 0x806A3BE8@l */
/* 8053FF3C  7C 84 00 AE */	lbzx r4, r4, r0
/* 8053FF40  4B FF DE 11 */	bl aNPC_setupAction
/* 8053FF44  39 61 00 20 */	addi r11, r1, 0x20
/* 8053FF48  4B B5 AF D5 */	bl func_8009AF1C
/* 8053FF4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053FF50  7C 08 03 A6 */	mtlr r0
/* 8053FF54  38 21 00 20 */	addi r1, r1, 0x20
/* 8053FF58  4E 80 00 20 */	blr 
