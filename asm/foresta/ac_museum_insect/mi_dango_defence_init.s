lbl_8046CF04:
/* 8046CF04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046CF08  7C 08 02 A6 */	mflr r0
/* 8046CF0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046CF10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046CF14  7C 7F 1B 78 */	mr r31, r3
/* 8046CF18  A8 03 00 7E */	lha r0, 0x7e(r3)
/* 8046CF1C  2C 00 00 00 */	cmpwi r0, 0
/* 8046CF20  40 80 00 14 */	bge lbl_8046CF34
/* 8046CF24  38 60 00 0A */	li r3, 0xa
/* 8046CF28  38 00 00 01 */	li r0, 1
/* 8046CF2C  B0 7F 00 7E */	sth r3, 0x7e(r31)
/* 8046CF30  B0 1F 00 80 */	sth r0, 0x80(r31)
lbl_8046CF34:
/* 8046CF34  4B BE FD C1 */	bl fqrand
/* 8046CF38  3C 60 80 64 */	lis r3, lit_4482@ha /* 0x806448F8@ha */
/* 8046CF3C  C0 03 48 F8 */	lfs f0, lit_4482@l(r3)  /* 0x806448F8@l */
/* 8046CF40  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046CF44  FC 00 00 1E */	fctiwz f0, f0
/* 8046CF48  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046CF4C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046CF50  38 03 01 F4 */	addi r0, r3, 0x1f4
/* 8046CF54  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8046CF58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046CF5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046CF60  7C 08 03 A6 */	mtlr r0
/* 8046CF64  38 21 00 20 */	addi r1, r1, 0x20
/* 8046CF68  4E 80 00 20 */	blr 
