lbl_803C6E40:
/* 803C6E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C6E44  7C 08 02 A6 */	mflr r0
/* 803C6E48  7C A9 2B 78 */	mr r9, r5
/* 803C6E4C  7C 85 23 78 */	mr r5, r4
/* 803C6E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C6E54  7C C0 33 78 */	mr r0, r6
/* 803C6E58  7C E8 3B 78 */	mr r8, r7
/* 803C6E5C  7D 26 4B 78 */	mr r6, r9
/* 803C6E60  7C 07 03 78 */	mr r7, r0
/* 803C6E64  38 80 25 11 */	li r4, 0x2511
/* 803C6E68  4B FF FD AD */	bl mMsm_DepositItemBlock_cancel
/* 803C6E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C6E70  7C 08 03 A6 */	mtlr r0
/* 803C6E74  38 21 00 10 */	addi r1, r1, 0x10
/* 803C6E78  4E 80 00 20 */	blr 
