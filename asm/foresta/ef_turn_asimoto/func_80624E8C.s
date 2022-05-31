lbl_80624E8C:
/* 80624E8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80624E90  7C 08 02 A6 */	mflr r0
/* 80624E94  90 01 00 54 */	stw r0, 0x54(r1)
/* 80624E98  39 61 00 50 */	addi r11, r1, 0x50
/* 80624E9C  4B A7 60 25 */	bl func_8009AEC0
/* 80624EA0  7C 7D 1B 78 */	mr r29, r3
/* 80624EA4  7C 9E 23 78 */	mr r30, r4
/* 80624EA8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80624EAC  38 61 00 14 */	addi r3, r1, 0x14
/* 80624EB0  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80624EB4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80624EB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80624EBC  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80624EC0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80624EC4  4B D8 25 6D */	bl mFI_GetUnitFG
/* 80624EC8  28 03 00 00 */	cmplwi r3, 0
/* 80624ECC  41 82 00 E0 */	beq lbl_80624FAC
/* 80624ED0  A0 83 00 00 */	lhz r4, 0(r3)
/* 80624ED4  28 04 08 45 */	cmplwi r4, 0x845
/* 80624ED8  41 80 00 D4 */	blt lbl_80624FAC
/* 80624EDC  28 04 08 4D */	cmplwi r4, 0x84d
/* 80624EE0  41 81 00 CC */	bgt lbl_80624FAC
/* 80624EE4  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 80624EE8  38 04 F7 BB */	addi r0, r4, -2117
/* 80624EEC  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 80624EF0  7C 1F 07 34 */	extsh r31, r0
/* 80624EF4  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80624EF8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80624EFC  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 80624F00  90 81 00 24 */	stw r4, 0x24(r1)
/* 80624F04  90 01 00 28 */	stw r0, 0x28(r1)
/* 80624F08  4B D9 5B E9 */	bl sin_s
/* 80624F0C  3C 60 80 65 */	lis r3, data_8064CFBC@ha /* 0x8064CFBC@ha */
/* 80624F10  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80624F14  38 83 CF BC */	addi r4, r3, data_8064CFBC@l /* 0x8064CFBC@l */
/* 80624F18  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 80624F1C  C0 44 00 00 */	lfs f2, 0(r4)
/* 80624F20  EC 22 00 72 */	fmuls f1, f2, f1
/* 80624F24  EC 00 08 2A */	fadds f0, f0, f1
/* 80624F28  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80624F2C  4B D9 5B 71 */	bl cos_s
/* 80624F30  3C 80 80 65 */	lis r4, data_8064CFBC@ha /* 0x8064CFBC@ha */
/* 80624F34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80624F38  C0 44 CF BC */	lfs f2, data_8064CFBC@l(r4)  /* 0x8064CFBC@l */
/* 80624F3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80624F40  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80624F44  3F 23 00 02 */	addis r25, r3, 2
/* 80624F48  EC 22 00 72 */	fmuls f1, f2, f1
/* 80624F4C  83 41 00 20 */	lwz r26, 0x20(r1)
/* 80624F50  83 61 00 24 */	lwz r27, 0x24(r1)
/* 80624F54  3B 00 00 00 */	li r24, 0
/* 80624F58  EC 00 08 2A */	fadds f0, f0, f1
/* 80624F5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80624F60  83 81 00 28 */	lwz r28, 0x28(r1)
lbl_80624F64:
/* 80624F64  93 41 00 08 */	stw r26, 8(r1)
/* 80624F68  7F C7 F3 78 */	mr r7, r30
/* 80624F6C  80 B9 60 9C */	lwz r5, 0x609c(r25)
/* 80624F70  7F E9 FB 78 */	mr r9, r31
/* 80624F74  93 61 00 0C */	stw r27, 0xc(r1)
/* 80624F78  38 81 00 08 */	addi r4, r1, 8
/* 80624F7C  38 60 00 5F */	li r3, 0x5f
/* 80624F80  38 C0 00 00 */	li r6, 0
/* 80624F84  93 81 00 10 */	stw r28, 0x10(r1)
/* 80624F88  39 40 00 04 */	li r10, 4
/* 80624F8C  81 85 00 00 */	lwz r12, 0(r5)
/* 80624F90  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 80624F94  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 80624F98  7D 89 03 A6 */	mtctr r12
/* 80624F9C  4E 80 04 21 */	bctrl 
/* 80624FA0  3B 18 00 01 */	addi r24, r24, 1
/* 80624FA4  2C 18 00 03 */	cmpwi r24, 3
/* 80624FA8  41 80 FF BC */	blt lbl_80624F64
lbl_80624FAC:
/* 80624FAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80624FB0  4B A7 5F 5D */	bl func_8009AF0C
/* 80624FB4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80624FB8  7C 08 03 A6 */	mtlr r0
/* 80624FBC  38 21 00 50 */	addi r1, r1, 0x50
/* 80624FC0  4E 80 00 20 */	blr 
