lbl_80491614:
/* 80491614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80491618  7C 08 02 A6 */	mflr r0
/* 8049161C  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80491620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80491624  38 05 EC 94 */	addi r0, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80491628  38 A0 00 20 */	li r5, 0x20
/* 8049162C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80491630  7C 7F 1B 78 */	mr r31, r3
/* 80491634  7C 03 03 78 */	mr r3, r0
/* 80491638  93 C1 00 08 */	stw r30, 8(r1)
/* 8049163C  7C 9E 23 78 */	mr r30, r4
/* 80491640  38 80 00 10 */	li r4, 0x10
/* 80491644  4B F2 94 05 */	bl mem_clear
/* 80491648  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 8049164C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80491650  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80491654  4B F5 D7 85 */	bl mString_Load_YearStringFromRom
/* 80491658  7C 7F 1B 78 */	mr r31, r3
/* 8049165C  4B F2 E0 4D */	bl func_803BF6A8
/* 80491660  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80491664  7F C4 F3 78 */	mr r4, r30
/* 80491668  38 A5 EC 94 */	addi r5, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 8049166C  7F E6 FB 78 */	mr r6, r31
/* 80491670  4B F2 E5 E5 */	bl mMsg_Set_free_str
/* 80491674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049167C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80491680  7C 08 03 A6 */	mtlr r0
/* 80491684  38 21 00 10 */	addi r1, r1, 0x10
/* 80491688  4E 80 00 20 */	blr 
