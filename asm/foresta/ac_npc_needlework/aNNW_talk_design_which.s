lbl_805626EC:
/* 805626EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805626F0  7C 08 02 A6 */	mflr r0
/* 805626F4  38 80 00 09 */	li r4, 9
/* 805626F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805626FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562700  7C 7F 1B 78 */	mr r31, r3
/* 80562704  38 60 00 04 */	li r3, 4
/* 80562708  4B E3 5D 75 */	bl mDemo_Get_OrderValue
/* 8056270C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80562710  41 82 00 40 */	beq lbl_80562750
/* 80562714  4B E5 CF 95 */	bl func_803BF6A8
/* 80562718  4B E5 E5 81 */	bl mMsg_Check_MainNormalContinue
/* 8056271C  2C 03 00 01 */	cmpwi r3, 1
/* 80562720  40 82 00 30 */	bne lbl_80562750
/* 80562724  4B E5 CF 85 */	bl func_803BF6A8
/* 80562728  4B E5 D3 1D */	bl mMsg_request_main_disappear_wait_type1
/* 8056272C  38 60 00 04 */	li r3, 4
/* 80562730  38 80 00 09 */	li r4, 9
/* 80562734  38 A0 00 00 */	li r5, 0
/* 80562738  4B E3 5D 01 */	bl mDemo_Set_OrderValue
/* 8056273C  88 9F 09 B2 */	lbz r4, 0x9b2(r31)
/* 80562740  7F E3 FB 78 */	mr r3, r31
/* 80562744  38 04 00 01 */	addi r0, r4, 1
/* 80562748  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8056274C  48 00 1D 3D */	bl aNNW_change_talk_proc
lbl_80562750:
/* 80562750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562758  7C 08 03 A6 */	mtlr r0
/* 8056275C  38 21 00 10 */	addi r1, r1, 0x10
/* 80562760  4E 80 00 20 */	blr 
