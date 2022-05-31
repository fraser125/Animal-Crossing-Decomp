lbl_8057383C:
/* 8057383C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573840  7C 08 02 A6 */	mflr r0
/* 80573844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057384C  3B E4 1D EC */	addi r31, r4, 0x1dec
/* 80573850  93 C1 00 08 */	stw r30, 8(r1)
/* 80573854  7C 7E 1B 78 */	mr r30, r3
/* 80573858  4B E4 BE 51 */	bl func_803BF6A8
/* 8057385C  4B E4 BE E5 */	bl mMsg_Check_main_wait
/* 80573860  2C 03 00 01 */	cmpwi r3, 1
/* 80573864  40 82 00 2C */	bne lbl_80573890
/* 80573868  7F C3 F3 78 */	mr r3, r30
/* 8057386C  38 80 00 05 */	li r4, 5
/* 80573870  48 00 04 D9 */	bl aNRTC_change_talk_proc
/* 80573874  7F E3 FB 78 */	mr r3, r31
/* 80573878  38 80 00 03 */	li r4, 3
/* 8057387C  38 A0 00 01 */	li r5, 1
/* 80573880  38 C0 00 00 */	li r6, 0
/* 80573884  4B E7 BE 59 */	bl mSM_open_submenu
/* 80573888  4B E4 BE 21 */	bl func_803BF6A8
/* 8057388C  4B E4 C2 FD */	bl mMsg_request_main_appear_wait_type1
lbl_80573890:
/* 80573890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573898  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057389C  7C 08 03 A6 */	mtlr r0
/* 805738A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805738A4  4E 80 00 20 */	blr 
