lbl_803C5664:
/* 803C5664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C5668  7C 08 02 A6 */	mflr r0
/* 803C566C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C5670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C5674  7C 9F 23 78 */	mr r31, r4
/* 803C5678  93 C1 00 08 */	stw r30, 8(r1)
/* 803C567C  7C 7E 1B 78 */	mr r30, r3
/* 803C5680  4B FF FF 1D */	bl func_803C559C
/* 803C5684  7C 60 1B 78 */	mr r0, r3
/* 803C5688  7F C3 F3 78 */	mr r3, r30
/* 803C568C  7C 04 03 78 */	mr r4, r0
/* 803C5690  4B FF FF A5 */	bl mMsg_request_main_index_fromDisappear
/* 803C5694  7F C3 F3 78 */	mr r3, r30
/* 803C5698  7F E4 FB 78 */	mr r4, r31
/* 803C569C  4B FF 9C E1 */	bl func_803BF37C
/* 803C56A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C56A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C56A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C56AC  7C 08 03 A6 */	mtlr r0
/* 803C56B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C56B4  4E 80 00 20 */	blr 
