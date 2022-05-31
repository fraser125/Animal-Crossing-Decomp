lbl_8050A824:
/* 8050A824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050A828  7C 08 02 A6 */	mflr r0
/* 8050A82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050A830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050A834  7C 9F 23 78 */	mr r31, r4
/* 8050A838  93 C1 00 08 */	stw r30, 8(r1)
/* 8050A83C  7C 7E 1B 78 */	mr r30, r3
/* 8050A840  4B FF F6 AD */	bl mRF_InitBlockBase
/* 8050A844  7F C3 F3 78 */	mr r3, r30
/* 8050A848  7F E4 FB 78 */	mr r4, r31
/* 8050A84C  4B FF F5 E5 */	bl mRF_GetBlockBase
/* 8050A850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050A854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050A858  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050A85C  7C 08 03 A6 */	mtlr r0
/* 8050A860  38 21 00 10 */	addi r1, r1, 0x10
/* 8050A864  4E 80 00 20 */	blr 
