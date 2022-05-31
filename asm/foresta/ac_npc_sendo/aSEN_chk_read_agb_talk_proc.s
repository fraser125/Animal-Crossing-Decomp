lbl_805756DC:
/* 805756DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805756E0  7C 08 02 A6 */	mflr r0
/* 805756E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805756E8  39 61 00 20 */	addi r11, r1, 0x20
/* 805756EC  4B B2 57 E9 */	bl func_8009AED4
/* 805756F0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805756F4  7C 7F 1B 78 */	mr r31, r3
/* 805756F8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805756FC  3B A0 FF FF */	li r29, -1
/* 80575700  3F C3 00 03 */	addis r30, r3, 3
/* 80575704  38 80 39 80 */	li r4, 0x3980
/* 80575708  3B DE A1 C0 */	addi r30, r30, -24128
/* 8057570C  7F C3 F3 78 */	mr r3, r30
/* 80575710  4B AD 4B AD */	bl mGcgba_Recv
/* 80575714  2C 03 00 09 */	cmpwi r3, 9
/* 80575718  41 82 00 84 */	beq lbl_8057579C
/* 8057571C  40 80 00 7C */	bge lbl_80575798
/* 80575720  2C 03 00 01 */	cmpwi r3, 1
/* 80575724  41 82 00 08 */	beq lbl_8057572C
/* 80575728  48 00 00 70 */	b lbl_80575798
lbl_8057572C:
/* 8057572C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80575730  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80575734  3C 64 00 03 */	addis r3, r4, 3
/* 80575738  88 03 A1 D3 */	lbz r0, -0x5e2d(r3)
/* 8057573C  28 00 00 01 */	cmplwi r0, 1
/* 80575740  40 82 00 0C */	bne lbl_8057574C
/* 80575744  3B A0 00 02 */	li r29, 2
/* 80575748  48 00 00 54 */	b lbl_8057579C
lbl_8057574C:
/* 8057574C  3F A4 00 02 */	addis r29, r4, 2
/* 80575750  3B BD 25 40 */	addi r29, r29, 0x2540
/* 80575754  7F A3 EB 78 */	mr r3, r29
/* 80575758  4B E3 E4 A5 */	bl mISL_KeepIsland
/* 8057575C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80575760  7F C4 F3 78 */	mr r4, r30
/* 80575764  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80575768  3F C3 00 03 */	addis r30, r3, 3
/* 8057576C  3B DE 88 C0 */	addi r30, r30, -30528
/* 80575770  7F C3 F3 78 */	mr r3, r30
/* 80575774  4B E4 00 ED */	bl mISL_agb_to_gc
/* 80575778  7F C3 F3 78 */	mr r3, r30
/* 8057577C  7F A4 EB 78 */	mr r4, r29
/* 80575780  38 A0 19 00 */	li r5, 0x1900
/* 80575784  4B AE 78 99 */	bl func_8005D01C
/* 80575788  7F E3 FB 78 */	mr r3, r31
/* 8057578C  4B FF F3 85 */	bl aSEN_setup_pl_ride_on
/* 80575790  3B A0 00 00 */	li r29, 0
/* 80575794  48 00 00 08 */	b lbl_8057579C
lbl_80575798:
/* 80575798  3B A0 00 01 */	li r29, 1
lbl_8057579C:
/* 8057579C  2C 1D FF FF */	cmpwi r29, -1
/* 805757A0  41 82 00 54 */	beq lbl_805757F4
/* 805757A4  4B E4 9F 05 */	bl func_803BF6A8
/* 805757A8  7C 7E 1B 78 */	mr r30, r3
/* 805757AC  4B E4 B5 A1 */	bl mMsg_Unset_LockContinue
/* 805757B0  3C 60 80 6C */	lis r3, msg_no_844@ha /* 0x806BF86C@ha */
/* 805757B4  57 A0 10 3A */	slwi r0, r29, 2
/* 805757B8  38 83 F8 6C */	addi r4, r3, msg_no_844@l /* 0x806BF86C@l */
/* 805757BC  7F E3 FB 78 */	mr r3, r31
/* 805757C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 805757C4  4B FF F0 D1 */	bl aSEN_get_msg_no
/* 805757C8  7C 64 1B 78 */	mr r4, r3
/* 805757CC  7F C3 F3 78 */	mr r3, r30
/* 805757D0  4B E4 B1 C9 */	bl mMsg_ChangeMsgData
/* 805757D4  7F C3 F3 78 */	mr r3, r30
/* 805757D8  4B E4 B5 51 */	bl mMsg_Set_ForceNext
/* 805757DC  4B AD 40 11 */	bl mGcgba_EndComm
/* 805757E0  3C 80 80 6C */	lis r4, next_talk_idx_843@ha /* 0x806BF868@ha */
/* 805757E4  7F E3 FB 78 */	mr r3, r31
/* 805757E8  38 84 F8 68 */	addi r4, r4, next_talk_idx_843@l /* 0x806BF868@l */
/* 805757EC  7C 84 E8 AE */	lbzx r4, r4, r29
/* 805757F0  48 00 07 7D */	bl aSEN_change_talk_proc
lbl_805757F4:
/* 805757F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805757F8  4B B2 57 29 */	bl func_8009AF20
/* 805757FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80575800  7C 08 03 A6 */	mtlr r0
/* 80575804  38 21 00 20 */	addi r1, r1, 0x20
/* 80575808  4E 80 00 20 */	blr 
