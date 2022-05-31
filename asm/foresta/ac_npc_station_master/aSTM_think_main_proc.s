lbl_8057FEE8:
/* 8057FEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FEEC  7C 08 02 A6 */	mflr r0
/* 8057FEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FEF4  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8057FEF8  28 00 00 FF */	cmplwi r0, 0xff
/* 8057FEFC  41 82 00 10 */	beq lbl_8057FF0C
/* 8057FF00  88 03 09 A0 */	lbz r0, 0x9a0(r3)
/* 8057FF04  28 00 00 14 */	cmplwi r0, 0x14
/* 8057FF08  40 82 00 20 */	bne lbl_8057FF28
lbl_8057FF0C:
/* 8057FF0C  88 03 09 A4 */	lbz r0, 0x9a4(r3)
/* 8057FF10  3C A0 80 6C */	lis r5, proc_table@ha /* 0x806C0B14@ha */
/* 8057FF14  38 A5 0B 14 */	addi r5, r5, proc_table@l /* 0x806C0B14@l */
/* 8057FF18  54 00 10 3A */	slwi r0, r0, 2
/* 8057FF1C  7D 85 00 2E */	lwzx r12, r5, r0
/* 8057FF20  7D 89 03 A6 */	mtctr r12
/* 8057FF24  4E 80 04 21 */	bctrl 
lbl_8057FF28:
/* 8057FF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FF2C  7C 08 03 A6 */	mtlr r0
/* 8057FF30  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FF34  4E 80 00 20 */	blr 
