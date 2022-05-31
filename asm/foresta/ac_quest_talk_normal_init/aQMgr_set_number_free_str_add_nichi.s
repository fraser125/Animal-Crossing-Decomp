lbl_80491718:
/* 80491718  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049171C  7C 08 02 A6 */	mflr r0
/* 80491720  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80491724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80491728  38 05 EC 94 */	addi r0, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 8049172C  38 A0 00 20 */	li r5, 0x20
/* 80491730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80491734  7C 9F 23 78 */	mr r31, r4
/* 80491738  38 80 00 10 */	li r4, 0x10
/* 8049173C  93 C1 00 08 */	stw r30, 8(r1)
/* 80491740  7C 7E 1B 78 */	mr r30, r3
/* 80491744  7C 03 03 78 */	mr r3, r0
/* 80491748  4B F2 93 01 */	bl mem_clear
/* 8049174C  28 1E 00 01 */	cmplwi r30, 1
/* 80491750  41 80 00 0C */	blt lbl_8049175C
/* 80491754  28 1E 00 1F */	cmplwi r30, 0x1f
/* 80491758  40 81 00 08 */	ble lbl_80491760
lbl_8049175C:
/* 8049175C  3B C0 00 01 */	li r30, 1
lbl_80491760:
/* 80491760  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80491764  38 BE 06 4D */	addi r5, r30, 0x64d
/* 80491768  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 8049176C  38 80 00 10 */	li r4, 0x10
/* 80491770  4B F5 D5 5D */	bl mString_Load_StringFromRom
/* 80491774  4B F2 DF 35 */	bl func_803BF6A8
/* 80491778  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 8049177C  7F E4 FB 78 */	mr r4, r31
/* 80491780  38 A5 EC 94 */	addi r5, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80491784  38 C0 00 10 */	li r6, 0x10
/* 80491788  4B F2 E4 CD */	bl mMsg_Set_free_str
/* 8049178C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80491790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80491794  83 C1 00 08 */	lwz r30, 8(r1)
/* 80491798  7C 08 03 A6 */	mtlr r0
/* 8049179C  38 21 00 10 */	addi r1, r1, 0x10
/* 804917A0  4E 80 00 20 */	blr 
