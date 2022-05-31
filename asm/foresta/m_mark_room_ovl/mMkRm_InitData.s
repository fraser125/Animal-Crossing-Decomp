lbl_804D3730:
/* 804D3730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D3734  7C 08 02 A6 */	mflr r0
/* 804D3738  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D373C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D3740  7C 9F 23 78 */	mr r31, r4
/* 804D3744  93 C1 00 08 */	stw r30, 8(r1)
/* 804D3748  7C 7E 1B 78 */	mr r30, r3
/* 804D374C  4B FF FC C5 */	bl mMkRm_InitSearchTable
/* 804D3750  4B FF FE 75 */	bl mMkRm_AssignIdxInGroup
/* 804D3754  7F C3 F3 78 */	mr r3, r30
/* 804D3758  7F E4 FB 78 */	mr r4, r31
/* 804D375C  4B FF FE E5 */	bl mMkRm_MakeFtrTable
/* 804D3760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D3764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D3768  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D376C  7C 08 03 A6 */	mtlr r0
/* 804D3770  38 21 00 10 */	addi r1, r1, 0x10
/* 804D3774  4E 80 00 20 */	blr 
