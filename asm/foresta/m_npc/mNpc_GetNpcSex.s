lbl_803D1FDC:
/* 803D1FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D1FE0  7C 08 02 A6 */	mflr r0
/* 803D1FE4  28 03 00 00 */	cmplwi r3, 0
/* 803D1FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D1FEC  41 82 00 1C */	beq lbl_803D2008
/* 803D1FF0  88 03 00 02 */	lbz r0, 2(r3)
/* 803D1FF4  28 00 00 04 */	cmplwi r0, 4
/* 803D1FF8  40 82 00 10 */	bne lbl_803D2008
/* 803D1FFC  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 803D2000  4B FF FF A5 */	bl mNpc_GetAnimalSex
/* 803D2004  48 00 00 0C */	b lbl_803D2010
lbl_803D2008:
/* 803D2008  A0 63 00 06 */	lhz r3, 6(r3)
/* 803D200C  4B FF FF 25 */	bl mNpc_GetActorSex
lbl_803D2010:
/* 803D2010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D2014  7C 08 03 A6 */	mtlr r0
/* 803D2018  38 21 00 10 */	addi r1, r1, 0x10
/* 803D201C  4E 80 00 20 */	blr 
