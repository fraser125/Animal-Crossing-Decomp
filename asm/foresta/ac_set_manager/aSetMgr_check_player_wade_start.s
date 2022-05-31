lbl_80496B54:
/* 80496B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80496B58  7C 08 02 A6 */	mflr r0
/* 80496B5C  38 60 00 01 */	li r3, 1
/* 80496B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80496B64  4B F1 1F D9 */	bl mFI_CheckPlayerWade
/* 80496B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80496B6C  7C 08 03 A6 */	mtlr r0
/* 80496B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80496B74  4E 80 00 20 */	blr 
