lbl_803C8088:
/* 803C8088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C808C  7C 08 02 A6 */	mflr r0
/* 803C8090  38 60 00 2F */	li r3, 0x2f
/* 803C8094  38 80 00 01 */	li r4, 1
/* 803C8098  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C809C  4B FD 5A 65 */	bl mEv_check_status
/* 803C80A0  20 03 00 01 */	subfic r0, r3, 1
/* 803C80A4  7C 00 00 34 */	cntlzw r0, r0
/* 803C80A8  54 03 D9 7E */	srwi r3, r0, 5
/* 803C80AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C80B0  7C 08 03 A6 */	mtlr r0
/* 803C80B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803C80B8  4E 80 00 20 */	blr 
