lbl_8057DAD0:
/* 8057DAD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DAD4  7C 08 02 A6 */	mflr r0
/* 8057DAD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DADC  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8057DAE0  28 00 00 03 */	cmplwi r0, 3
/* 8057DAE4  40 82 00 08 */	bne lbl_8057DAEC
/* 8057DAE8  4B FF FD 59 */	bl func_8057D840
lbl_8057DAEC:
/* 8057DAEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DAF0  7C 08 03 A6 */	mtlr r0
/* 8057DAF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DAF8  4E 80 00 20 */	blr 
