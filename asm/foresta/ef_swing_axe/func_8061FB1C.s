lbl_8061FB1C:
/* 8061FB1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8061FB20  7C 08 02 A6 */	mflr r0
/* 8061FB24  90 01 00 44 */	stw r0, 0x44(r1)
/* 8061FB28  39 61 00 40 */	addi r11, r1, 0x40
/* 8061FB2C  4B A7 B3 A1 */	bl func_8009AECC
/* 8061FB30  7C 7B 1B 78 */	mr r27, r3
/* 8061FB34  7C 9C 23 78 */	mr r28, r4
/* 8061FB38  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8061FB3C  38 61 00 14 */	addi r3, r1, 0x14
/* 8061FB40  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8061FB44  90 81 00 14 */	stw r4, 0x14(r1)
/* 8061FB48  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061FB4C  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8061FB50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061FB54  4B D8 78 DD */	bl mFI_GetUnitFG
/* 8061FB58  28 03 00 00 */	cmplwi r3, 0
/* 8061FB5C  41 82 00 84 */	beq lbl_8061FBE0
/* 8061FB60  A0 83 00 00 */	lhz r4, 0(r3)
/* 8061FB64  28 04 08 45 */	cmplwi r4, 0x845
/* 8061FB68  41 80 00 78 */	blt lbl_8061FBE0
/* 8061FB6C  28 04 08 4D */	cmplwi r4, 0x84d
/* 8061FB70  41 81 00 70 */	bgt lbl_8061FBE0
/* 8061FB74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8061FB78  38 04 F7 BB */	addi r0, r4, -2117
/* 8061FB7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8061FB80  3B C0 00 00 */	li r30, 0
/* 8061FB84  7C 1D 07 34 */	extsh r29, r0
/* 8061FB88  3F E3 00 02 */	addis r31, r3, 2
lbl_8061FB8C:
/* 8061FB8C  80 7B 00 10 */	lwz r3, 0x10(r27)
/* 8061FB90  7F 87 E3 78 */	mr r7, r28
/* 8061FB94  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 8061FB98  7F A9 EB 78 */	mr r9, r29
/* 8061FB9C  80 BF 60 9C */	lwz r5, 0x609c(r31)
/* 8061FBA0  38 81 00 08 */	addi r4, r1, 8
/* 8061FBA4  90 61 00 08 */	stw r3, 8(r1)
/* 8061FBA8  38 60 00 5F */	li r3, 0x5f
/* 8061FBAC  38 C0 00 00 */	li r6, 0
/* 8061FBB0  39 40 00 03 */	li r10, 3
/* 8061FBB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061FBB8  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8061FBBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061FBC0  81 85 00 00 */	lwz r12, 0(r5)
/* 8061FBC4  88 BB 00 0E */	lbz r5, 0xe(r27)
/* 8061FBC8  A1 1B 00 0C */	lhz r8, 0xc(r27)
/* 8061FBCC  7D 89 03 A6 */	mtctr r12
/* 8061FBD0  4E 80 04 21 */	bctrl 
/* 8061FBD4  3B DE 00 01 */	addi r30, r30, 1
/* 8061FBD8  2C 1E 00 02 */	cmpwi r30, 2
/* 8061FBDC  41 80 FF B0 */	blt lbl_8061FB8C
lbl_8061FBE0:
/* 8061FBE0  39 61 00 40 */	addi r11, r1, 0x40
/* 8061FBE4  4B A7 B3 35 */	bl func_8009AF18
/* 8061FBE8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8061FBEC  7C 08 03 A6 */	mtlr r0
/* 8061FBF0  38 21 00 40 */	addi r1, r1, 0x40
/* 8061FBF4  4E 80 00 20 */	blr 
