lbl_80379360:
/* 80379360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80379364  7C 08 02 A6 */	mflr r0
/* 80379368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037936C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80379370  7C 7F 1B 78 */	mr r31, r3
/* 80379374  4B FF FF 7D */	bl mBGMTime_silent_check
/* 80379378  2C 03 00 00 */	cmpwi r3, 0
/* 8037937C  41 82 00 14 */	beq lbl_80379390
/* 80379380  48 00 2B 11 */	bl mBGMPsComp_make_ps_time
/* 80379384  3C 60 80 38 */	lis r3, mBGMTime_move_change@ha /* 0x803793A4@ha */
/* 80379388  38 03 93 A4 */	addi r0, r3, mBGMTime_move_change@l /* 0x803793A4@l */
/* 8037938C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80379390:
/* 80379390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80379394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80379398  7C 08 03 A6 */	mtlr r0
/* 8037939C  38 21 00 10 */	addi r1, r1, 0x10
/* 803793A0  4E 80 00 20 */	blr 
