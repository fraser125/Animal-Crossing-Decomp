lbl_803E4A38:
/* 803E4A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E4A3C  7C 08 02 A6 */	mflr r0
/* 803E4A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E4A44  48 12 67 95 */	bl mRF_MakeRandomField_ovl
/* 803E4A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E4A4C  7C 08 03 A6 */	mtlr r0
/* 803E4A50  38 21 00 10 */	addi r1, r1, 0x10
/* 803E4A54  4E 80 00 20 */	blr 
