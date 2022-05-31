lbl_80496B78:
/* 80496B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496B7C  7C 08 02 A6 */	mflr r0
/* 80496B80  38 60 00 03 */	li r3, 3
/* 80496B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496B88  4B F1 1F B5 */	bl mFI_CheckPlayerWade
/* 80496B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496B90  7C 08 03 A6 */	mtlr r0
/* 80496B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80496B98  4E 80 00 20 */	blr 
