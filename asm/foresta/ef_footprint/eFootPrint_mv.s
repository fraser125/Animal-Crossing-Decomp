lbl_8060BEB8:
/* 8060BEB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060BEBC  7C 08 02 A6 */	mflr r0
/* 8060BEC0  7C 68 1B 78 */	mr r8, r3
/* 8060BEC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060BEC8  A8 03 00 06 */	lha r0, 6(r3)
/* 8060BECC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8060BED0  40 82 00 64 */	bne lbl_8060BF34
/* 8060BED4  A8 08 00 00 */	lha r0, 0(r8)
/* 8060BED8  2C 00 00 96 */	cmpwi r0, 0x96
/* 8060BEDC  40 82 00 58 */	bne lbl_8060BF34
/* 8060BEE0  80 A8 00 10 */	lwz r5, 0x10(r8)
/* 8060BEE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060BEE8  80 08 00 14 */	lwz r0, 0x14(r8)
/* 8060BEEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060BEF0  3C 63 00 02 */	addis r3, r3, 2
/* 8060BEF4  7C 87 23 78 */	mr r7, r4
/* 8060BEF8  90 A1 00 08 */	stw r5, 8(r1)
/* 8060BEFC  38 81 00 08 */	addi r4, r1, 8
/* 8060BF00  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 8060BF04  38 60 00 45 */	li r3, 0x45
/* 8060BF08  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060BF0C  38 C0 00 00 */	li r6, 0
/* 8060BF10  39 20 00 02 */	li r9, 2
/* 8060BF14  39 40 00 00 */	li r10, 0
/* 8060BF18  80 08 00 18 */	lwz r0, 0x18(r8)
/* 8060BF1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060BF20  81 85 00 00 */	lwz r12, 0(r5)
/* 8060BF24  88 A8 00 0E */	lbz r5, 0xe(r8)
/* 8060BF28  A1 08 00 0C */	lhz r8, 0xc(r8)
/* 8060BF2C  7D 89 03 A6 */	mtctr r12
/* 8060BF30  4E 80 04 21 */	bctrl 
lbl_8060BF34:
/* 8060BF34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060BF38  7C 08 03 A6 */	mtlr r0
/* 8060BF3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8060BF40  4E 80 00 20 */	blr 
