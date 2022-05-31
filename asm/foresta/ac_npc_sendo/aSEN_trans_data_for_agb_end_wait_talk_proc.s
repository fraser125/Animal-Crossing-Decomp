lbl_8057526C:
/* 8057526C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575270  7C 08 02 A6 */	mflr r0
/* 80575274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057527C  93 C1 00 08 */	stw r30, 8(r1)
/* 80575280  7C 7E 1B 78 */	mr r30, r3
/* 80575284  4B E4 A4 25 */	bl func_803BF6A8
/* 80575288  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057528C  7C 60 1B 78 */	mr r0, r3
/* 80575290  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80575294  38 80 39 80 */	li r4, 0x3980
/* 80575298  3C 63 00 03 */	addis r3, r3, 3
/* 8057529C  7C 1F 03 78 */	mr r31, r0
/* 805752A0  38 63 A1 C0 */	addi r3, r3, -24128
/* 805752A4  4B AD 56 99 */	bl mGcgba_Send
/* 805752A8  2C 03 00 09 */	cmpwi r3, 9
/* 805752AC  41 82 00 84 */	beq lbl_80575330
/* 805752B0  40 80 00 90 */	bge lbl_80575340
/* 805752B4  2C 03 00 01 */	cmpwi r3, 1
/* 805752B8  41 82 00 08 */	beq lbl_805752C0
/* 805752BC  48 00 00 84 */	b lbl_80575340
lbl_805752C0:
/* 805752C0  7F C3 F3 78 */	mr r3, r30
/* 805752C4  38 80 00 00 */	li r4, 0
/* 805752C8  4B FF F6 59 */	bl aSEN_agb_trans_se_proc
/* 805752CC  7F C3 F3 78 */	mr r3, r30
/* 805752D0  38 80 30 83 */	li r4, 0x3083
/* 805752D4  4B FF F5 C1 */	bl aSEN_get_msg_no
/* 805752D8  7C 64 1B 78 */	mr r4, r3
/* 805752DC  7F E3 FB 78 */	mr r3, r31
/* 805752E0  4B E4 B6 B9 */	bl mMsg_ChangeMsgData
/* 805752E4  7F E3 FB 78 */	mr r3, r31
/* 805752E8  4B E4 BA 65 */	bl mMsg_Unset_LockContinue
/* 805752EC  7F E3 FB 78 */	mr r3, r31
/* 805752F0  4B E4 BA 39 */	bl mMsg_Set_ForceNext
/* 805752F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805752F8  38 A0 19 00 */	li r5, 0x1900
/* 805752FC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80575300  3C 64 00 03 */	addis r3, r4, 3
/* 80575304  3C 84 00 02 */	addis r4, r4, 2
/* 80575308  38 63 88 C0 */	addi r3, r3, -30528
/* 8057530C  38 84 25 40 */	addi r4, r4, 0x2540
/* 80575310  4B AE 7D 0D */	bl func_8005D01C
/* 80575314  7F C3 F3 78 */	mr r3, r30
/* 80575318  4B FF F7 F9 */	bl aSEN_setup_pl_ride_on
/* 8057531C  4B AD 44 D1 */	bl mGcgba_EndComm
/* 80575320  7F C3 F3 78 */	mr r3, r30
/* 80575324  38 80 00 00 */	li r4, 0
/* 80575328  48 00 0C 45 */	bl aSEN_change_talk_proc
/* 8057532C  48 00 00 80 */	b lbl_805753AC
lbl_80575330:
/* 80575330  7F C3 F3 78 */	mr r3, r30
/* 80575334  38 80 00 01 */	li r4, 1
/* 80575338  4B FF F5 E9 */	bl aSEN_agb_trans_se_proc
/* 8057533C  48 00 00 70 */	b lbl_805753AC
lbl_80575340:
/* 80575340  7F C3 F3 78 */	mr r3, r30
/* 80575344  38 80 00 00 */	li r4, 0
/* 80575348  4B FF F5 D9 */	bl aSEN_agb_trans_se_proc
/* 8057534C  7F C3 F3 78 */	mr r3, r30
/* 80575350  38 80 30 8A */	li r4, 0x308a
/* 80575354  4B FF F5 41 */	bl aSEN_get_msg_no
/* 80575358  7C 64 1B 78 */	mr r4, r3
/* 8057535C  7F E3 FB 78 */	mr r3, r31
/* 80575360  4B E4 B6 39 */	bl mMsg_ChangeMsgData
/* 80575364  7F E3 FB 78 */	mr r3, r31
/* 80575368  4B E4 B9 E5 */	bl mMsg_Unset_LockContinue
/* 8057536C  7F E3 FB 78 */	mr r3, r31
/* 80575370  4B E4 B9 B9 */	bl mMsg_Set_ForceNext
/* 80575374  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80575378  38 A0 19 00 */	li r5, 0x1900
/* 8057537C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80575380  3C 64 00 02 */	addis r3, r4, 2
/* 80575384  3C 84 00 03 */	addis r4, r4, 3
/* 80575388  38 63 25 40 */	addi r3, r3, 0x2540
/* 8057538C  38 84 88 C0 */	addi r4, r4, -30528
/* 80575390  4B AE 7C 8D */	bl func_8005D01C
/* 80575394  38 00 00 02 */	li r0, 2
/* 80575398  98 1E 09 95 */	stb r0, 0x995(r30)
/* 8057539C  4B AD 44 51 */	bl mGcgba_EndComm
/* 805753A0  7F C3 F3 78 */	mr r3, r30
/* 805753A4  38 80 00 00 */	li r4, 0
/* 805753A8  48 00 0B C5 */	bl aSEN_change_talk_proc
lbl_805753AC:
/* 805753AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805753B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805753B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805753B8  7C 08 03 A6 */	mtlr r0
/* 805753BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805753C0  4E 80 00 20 */	blr 
