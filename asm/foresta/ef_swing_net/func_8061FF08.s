lbl_8061FF08:
/* 8061FF08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061FF0C  7C 08 02 A6 */	mflr r0
/* 8061FF10  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061FF14  39 61 00 40 */	addi r11, r1, 0x40
/* 8061FF18  4B A7 AF B5 */	bl func_8009AECC
/* 8061FF1C  7C 7B 1B 78 */	mr r27, r3
/* 8061FF20  7C 9C 23 78 */	mr r28, r4
/* 8061FF24  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8061FF28  38 61 00 14 */	addi r3, r1, 0x14
/* 8061FF2C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8061FF30  90 81 00 14 */	stw r4, 0x14(r1)
/* 8061FF34  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061FF38  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8061FF3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061FF40  4B D8 74 F1 */	bl mFI_GetUnitFG
/* 8061FF44  28 03 00 00 */	cmplwi r3, 0
/* 8061FF48  41 82 00 84 */	beq lbl_8061FFCC
/* 8061FF4C  A0 83 00 00 */	lhz r4, 0(r3)
/* 8061FF50  28 04 08 45 */	cmplwi r4, 0x845
/* 8061FF54  41 80 00 78 */	blt lbl_8061FFCC
/* 8061FF58  28 04 08 4D */	cmplwi r4, 0x84d
/* 8061FF5C  41 81 00 70 */	bgt lbl_8061FFCC
/* 8061FF60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061FF64  38 04 F7 BB */	addi r0, r4, -2117
/* 8061FF68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061FF6C  3B C0 00 00 */	li r30, 0
/* 8061FF70  7C 1D 07 34 */	extsh r29, r0
/* 8061FF74  3F E3 00 02 */	addis r31, r3, 2
lbl_8061FF78:
/* 8061FF78  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8061FF7C  7F 87 E3 78 */	mr r7, r28
/* 8061FF80  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8061FF84  7F A9 EB 78 */	mr r9, r29
/* 8061FF88  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 8061FF8C  38 81 00 08 */	addi r4, r1, 8
/* 8061FF90  90 61 00 08 */	stw r3, 8(r1)
/* 8061FF94  38 60 00 5F */	li r3, 0x5f
/* 8061FF98  38 C0 00 00 */	li r6, 0
/* 8061FF9C  39 40 00 02 */	li r10, 2
/* 8061FFA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061FFA4  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8061FFA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061FFAC  81 85 00 00 */	lwz r12, 0(r5)
/* 8061FFB0  88 BB 00 0E */	lbz r5, 0xe(r27)
/* 8061FFB4  A1 1B 00 0C */	lhz r8, 0xc(r27)
/* 8061FFB8  7D 89 03 A6 */	mtctr r12
/* 8061FFBC  4E 80 04 21 */	bctrl 
/* 8061FFC0  3B DE 00 01 */	addi r30, r30, 1
/* 8061FFC4  2C 1E 00 02 */	cmpwi r30, 2
/* 8061FFC8  41 80 FF B0 */	blt lbl_8061FF78
lbl_8061FFCC:
/* 8061FFCC  39 61 00 40 */	addi r11, r1, 0x40
/* 8061FFD0  4B A7 AF 49 */	bl func_8009AF18
/* 8061FFD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061FFD8  7C 08 03 A6 */	mtlr r0
/* 8061FFDC  38 21 00 40 */	addi r1, r1, 0x40
/* 8061FFE0  4E 80 00 20 */	blr 
