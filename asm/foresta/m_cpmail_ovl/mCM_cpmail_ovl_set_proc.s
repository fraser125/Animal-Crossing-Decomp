lbl_805CCED8:
/* 805CCED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CCEDC  7C 08 02 A6 */	mflr r0
/* 805CCEE0  3C 80 80 5D */	lis r4, mCM_cpmail_ovl_move@ha /* 0x805CC600@ha */
/* 805CCEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CCEE8  38 04 C6 00 */	addi r0, r4, mCM_cpmail_ovl_move@l /* 0x805CC600@l */
/* 805CCEEC  3C 80 80 5D */	lis r4, mCM_cpmail_ovl_draw@ha /* 0x805CCE58@ha */
/* 805CCEF0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CCEF4  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805CCEF8  38 04 CE 58 */	addi r0, r4, mCM_cpmail_ovl_draw@l /* 0x805CCE58@l */
/* 805CCEFC  90 05 09 10 */	stw r0, 0x910(r5)
/* 805CCF00  80 05 09 80 */	lwz r0, 0x980(r5)
/* 805CCF04  28 00 00 00 */	cmplwi r0, 0
/* 805CCF08  41 82 00 24 */	beq lbl_805CCF2C
/* 805CCF0C  80 05 05 4C */	lwz r0, 0x54c(r5)
/* 805CCF10  2C 00 00 04 */	cmpwi r0, 4
/* 805CCF14  41 82 00 18 */	beq lbl_805CCF2C
/* 805CCF18  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805CCF1C  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805CCF20  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805CCF24  7D 89 03 A6 */	mtctr r12
/* 805CCF28  4E 80 04 21 */	bctrl 
lbl_805CCF2C:
/* 805CCF2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CCF30  7C 08 03 A6 */	mtlr r0
/* 805CCF34  38 21 00 10 */	addi r1, r1, 0x10
/* 805CCF38  4E 80 00 20 */	blr 
