lbl_803A8710:
/* 803A8710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8714  7C 08 02 A6 */	mflr r0
/* 803A8718  28 03 00 00 */	cmplwi r3, 0
/* 803A871C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8720  41 82 00 1C */	beq lbl_803A873C
/* 803A8724  88 83 00 08 */	lbz r4, 8(r3)
/* 803A8728  88 A3 00 09 */	lbz r5, 9(r3)
/* 803A872C  A8 63 00 0A */	lha r3, 0xa(r3)
/* 803A8730  7C 84 07 74 */	extsb r4, r4
/* 803A8734  7C A5 07 74 */	extsb r5, r5
/* 803A8738  4B FF FE A1 */	bl mFI_SetMoveActorBitData_ON
lbl_803A873C:
/* 803A873C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8740  7C 08 03 A6 */	mtlr r0
/* 803A8744  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8748  4E 80 00 20 */	blr 
