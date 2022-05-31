lbl_8061CC28:
/* 8061CC28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061CC2C  7C 08 02 A6 */	mflr r0
/* 8061CC30  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061CC34  39 61 00 30 */	addi r11, r1, 0x30
/* 8061CC38  4B A7 E2 9D */	bl func_8009AED4
/* 8061CC3C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061CC40  7C 9E 23 78 */	mr r30, r4
/* 8061CC44  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 8061CC48  7C 7D 1B 78 */	mr r29, r3
/* 8061CC4C  3F E4 00 02 */	addis r31, r4, 2
/* 8061CC50  38 80 00 16 */	li r4, 0x16
/* 8061CC54  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 8061CC58  38 A0 00 7A */	li r5, 0x7a
/* 8061CC5C  81 86 00 10 */	lwz r12, 0x10(r6)
/* 8061CC60  7D 89 03 A6 */	mtctr r12
/* 8061CC64  4E 80 04 21 */	bctrl 
/* 8061CC68  A8 1D 00 00 */	lha r0, 0(r29)
/* 8061CC6C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8061CC70  40 82 00 78 */	bne lbl_8061CCE8
/* 8061CC74  83 FF 60 9C */	lwz r31, 0x609c(r31)
/* 8061CC78  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 8061CC7C  28 1F 00 00 */	cmplwi r31, 0
/* 8061CC80  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 8061CC84  41 82 00 64 */	beq lbl_8061CCE8
/* 8061CC88  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8061CC8C  3C 60 80 65 */	lis r3, lit_396@ha /* 0x8064CB40@ha */
/* 8061CC90  C0 03 CB 40 */	lfs f0, lit_396@l(r3)  /* 0x8064CB40@l */
/* 8061CC94  7F C7 F3 78 */	mr r7, r30
/* 8061CC98  90 01 00 18 */	stw r0, 0x18(r1)
/* 8061CC9C  38 81 00 08 */	addi r4, r1, 8
/* 8061CCA0  81 9D 00 10 */	lwz r12, 0x10(r29)
/* 8061CCA4  38 60 00 0F */	li r3, 0xf
/* 8061CCA8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8061CCAC  38 C0 00 00 */	li r6, 0
/* 8061CCB0  81 7D 00 18 */	lwz r11, 0x18(r29)
/* 8061CCB4  39 20 00 00 */	li r9, 0
/* 8061CCB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8061CCBC  91 81 00 14 */	stw r12, 0x14(r1)
/* 8061CCC0  39 40 00 00 */	li r10, 0
/* 8061CCC4  91 81 00 08 */	stw r12, 8(r1)
/* 8061CCC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8061CCCC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8061CCD0  91 61 00 10 */	stw r11, 0x10(r1)
/* 8061CCD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061CCD8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8061CCDC  91 61 00 1C */	stw r11, 0x1c(r1)
/* 8061CCE0  7D 89 03 A6 */	mtctr r12
/* 8061CCE4  4E 80 04 21 */	bctrl 
lbl_8061CCE8:
/* 8061CCE8  39 61 00 30 */	addi r11, r1, 0x30
/* 8061CCEC  4B A7 E2 35 */	bl func_8009AF20
/* 8061CCF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061CCF4  7C 08 03 A6 */	mtlr r0
/* 8061CCF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8061CCFC  4E 80 00 20 */	blr 
