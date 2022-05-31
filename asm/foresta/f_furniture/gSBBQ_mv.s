lbl_8063E8E8:
/* 8063E8E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063E8EC  7C 08 02 A6 */	mflr r0
/* 8063E8F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063E8F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8063E8F8  4B A5 C5 DD */	bl func_8009AED4
/* 8063E8FC  7C 7D 1B 78 */	mr r29, r3
/* 8063E900  7C BF 2B 78 */	mr r31, r5
/* 8063E904  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063E908  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063E90C  41 82 00 B4 */	beq lbl_8063E9C0
/* 8063E910  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063E914  41 82 00 AC */	beq lbl_8063E9C0
/* 8063E918  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063E91C  41 82 00 A4 */	beq lbl_8063E9C0
/* 8063E920  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063E924  41 82 00 9C */	beq lbl_8063E9C0
/* 8063E928  83 DF 20 90 */	lwz r30, 0x2090(r31)
/* 8063E92C  38 BD 00 08 */	addi r5, r29, 8
/* 8063E930  38 80 00 55 */	li r4, 0x55
/* 8063E934  4B FE F6 11 */	bl sAdo_OngenPos
/* 8063E938  57 C0 07 3F */	clrlwi. r0, r30, 0x1c
/* 8063E93C  40 82 00 84 */	bne lbl_8063E9C0
/* 8063E940  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8063E944  3C 60 80 65 */	lis r3, lit_6273@ha /* 0x8064D3B8@ha */
/* 8063E948  38 83 D3 B8 */	addi r4, r3, lit_6273@l /* 0x8064D3B8@l */
/* 8063E94C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063E950  90 01 00 18 */	stw r0, 0x18(r1)
/* 8063E954  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063E958  83 DD 00 08 */	lwz r30, 8(r29)
/* 8063E95C  3C 63 00 02 */	addis r3, r3, 2
/* 8063E960  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8063E964  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8063E968  C0 04 00 00 */	lfs f0, 0(r4)
/* 8063E96C  7F E7 FB 78 */	mr r7, r31
/* 8063E970  83 FD 00 10 */	lwz r31, 0x10(r29)
/* 8063E974  38 81 00 08 */	addi r4, r1, 8
/* 8063E978  EC 01 00 2A */	fadds f0, f1, f0
/* 8063E97C  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 8063E980  93 C1 00 08 */	stw r30, 8(r1)
/* 8063E984  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8063E988  38 60 00 71 */	li r3, 0x71
/* 8063E98C  38 A0 00 01 */	li r5, 1
/* 8063E990  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8063E994  38 C0 00 00 */	li r6, 0
/* 8063E998  39 20 00 09 */	li r9, 9
/* 8063E99C  39 40 00 00 */	li r10, 0
/* 8063E9A0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8063E9A4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8063E9A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063E9AC  81 8B 00 00 */	lwz r12, 0(r11)
/* 8063E9B0  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8063E9B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8063E9B8  7D 89 03 A6 */	mtctr r12
/* 8063E9BC  4E 80 04 21 */	bctrl 
lbl_8063E9C0:
/* 8063E9C0  39 61 00 30 */	addi r11, r1, 0x30
/* 8063E9C4  4B A5 C5 5D */	bl func_8009AF20
/* 8063E9C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063E9CC  7C 08 03 A6 */	mtlr r0
/* 8063E9D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8063E9D4  4E 80 00 20 */	blr 
