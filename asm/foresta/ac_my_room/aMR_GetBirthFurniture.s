lbl_8047A8A0:
/* 8047A8A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047A8A4  7C 08 02 A6 */	mflr r0
/* 8047A8A8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8047A8AC  28 03 04 F2 */	cmplwi r3, 0x4f2
/* 8047A8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047A8B4  40 80 00 10 */	bge lbl_8047A8C4
/* 8047A8B8  54 84 07 BE */	clrlwi r4, r4, 0x1e
/* 8047A8BC  4B F6 CF 19 */	bl mRmTp_FtrIdx2FtrItemNo
/* 8047A8C0  48 00 00 08 */	b lbl_8047A8C8
lbl_8047A8C4:
/* 8047A8C4  38 60 10 88 */	li r3, 0x1088
lbl_8047A8C8:
/* 8047A8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047A8CC  7C 08 03 A6 */	mtlr r0
/* 8047A8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8047A8D4  4E 80 00 20 */	blr 
