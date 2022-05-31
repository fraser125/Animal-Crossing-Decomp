lbl_80491548:
/* 80491548  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049154C  7C 08 02 A6 */	mflr r0
/* 80491550  3C C0 81 1D */	lis r6, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80491554  7C 65 1B 78 */	mr r5, r3
/* 80491558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049155C  38 66 EC 94 */	addi r3, r6, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80491560  38 C0 00 0A */	li r6, 0xa
/* 80491564  38 E0 00 01 */	li r7, 1
/* 80491568  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049156C  7C 9F 23 78 */	mr r31, r4
/* 80491570  38 80 00 10 */	li r4, 0x10
/* 80491574  39 00 00 00 */	li r8, 0
/* 80491578  39 20 00 01 */	li r9, 1
/* 8049157C  4B F1 DE FD */	bl mFont_UnintToString
/* 80491580  4B F2 E1 29 */	bl func_803BF6A8
/* 80491584  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80491588  7F E4 FB 78 */	mr r4, r31
/* 8049158C  38 A5 EC 94 */	addi r5, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80491590  38 C0 00 10 */	li r6, 0x10
/* 80491594  4B F2 E6 C1 */	bl mMsg_Set_free_str
/* 80491598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049159C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804915A0  7C 08 03 A6 */	mtlr r0
/* 804915A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804915A8  4E 80 00 20 */	blr 
