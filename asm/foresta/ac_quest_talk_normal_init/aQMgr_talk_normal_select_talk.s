lbl_804956F8:
/* 804956F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804956FC  7C 08 02 A6 */	mflr r0
/* 80495700  90 01 00 24 */	stw r0, 0x24(r1)
/* 80495704  39 61 00 20 */	addi r11, r1, 0x20
/* 80495708  4B C0 57 C9 */	bl func_8009AED0
/* 8049570C  7C 7F 1B 78 */	mr r31, r3
/* 80495710  80 63 01 78 */	lwz r3, 0x178(r3)
/* 80495714  80 63 00 00 */	lwz r3, 0(r3)
/* 80495718  83 C3 01 7C */	lwz r30, 0x17c(r3)
/* 8049571C  4B F3 C7 E5 */	bl mNpc_GetNpcLooks
/* 80495720  38 00 00 00 */	li r0, 0
/* 80495724  7C 7D 1B 78 */	mr r29, r3
/* 80495728  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 8049572C  4B F2 9F 7D */	bl func_803BF6A8
/* 80495730  4B F2 B6 1D */	bl mMsg_Unset_LockContinue
/* 80495734  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 80495738  38 63 EC A4 */	addi r3, r3, l_normal_info@l /* 0x811CECA4@l */
/* 8049573C  4B FF BD D1 */	bl aQMgr_init_normal_info
/* 80495740  38 00 00 07 */	li r0, 7
/* 80495744  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80495748  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8049574C  38 00 00 01 */	li r0, 1
/* 80495750  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80495754  7F E3 FB 78 */	mr r3, r31
/* 80495758  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8049575C  3C 84 00 02 */	addis r4, r4, 2
/* 80495760  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 80495764  3F 84 20 00 */	addis r28, r4, 0x2000
/* 80495768  3B 9C 00 02 */	addi r28, r28, 2
/* 8049576C  4B FF D0 E9 */	bl aQMgr_normal_set_free_str
/* 80495770  4B F1 E3 99 */	bl mLd_PlayerManKindCheck
/* 80495774  2C 03 00 00 */	cmpwi r3, 0
/* 80495778  40 82 00 60 */	bne lbl_804957D8
/* 8049577C  4B F0 54 B9 */	bl mEv_CheckFirstJob
/* 80495780  2C 03 00 01 */	cmpwi r3, 1
/* 80495784  40 82 00 14 */	bne lbl_80495798
/* 80495788  7F 83 E3 78 */	mr r3, r28
/* 8049578C  4B F0 52 8D */	bl mEv_CheckEvent
/* 80495790  2C 03 00 00 */	cmpwi r3, 0
/* 80495794  41 82 00 20 */	beq lbl_804957B4
lbl_80495798:
/* 80495798  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049579C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804957A0  3C 63 00 02 */	addis r3, r3, 2
/* 804957A4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804957A8  4B F4 B7 F5 */	bl mPr_CheckFirstJobHint
/* 804957AC  2C 03 00 01 */	cmpwi r3, 1
/* 804957B0  41 82 00 28 */	beq lbl_804957D8
lbl_804957B4:
/* 804957B4  7F A3 EB 78 */	mr r3, r29
/* 804957B8  4B FF EB 69 */	bl aQMgr_decide_fj_hint_msg_no
/* 804957BC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804957C0  7C 7C 1B 78 */	mr r28, r3
/* 804957C4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804957C8  3C 84 00 02 */	addis r4, r4, 2
/* 804957CC  80 64 61 3C */	lwz r3, 0x613c(r4)
/* 804957D0  4B F4 B7 A1 */	bl mPr_AddFirstJobHint
/* 804957D4  48 00 00 34 */	b lbl_80495808
lbl_804957D8:
/* 804957D8  88 1E 08 E2 */	lbz r0, 0x8e2(r30)
/* 804957DC  28 00 00 01 */	cmplwi r0, 1
/* 804957E0  40 82 00 18 */	bne lbl_804957F8
/* 804957E4  7F E3 FB 78 */	mr r3, r31
/* 804957E8  7F A4 EB 78 */	mr r4, r29
/* 804957EC  4B FF DD D5 */	bl aQMgr_decide_ki_msg_no
/* 804957F0  7C 7C 1B 78 */	mr r28, r3
/* 804957F4  48 00 00 14 */	b lbl_80495808
lbl_804957F8:
/* 804957F8  7F E3 FB 78 */	mr r3, r31
/* 804957FC  7F A4 EB 78 */	mr r4, r29
/* 80495800  4B FF EA 8D */	bl aQMgr_decide_normal_msg_no
/* 80495804  7C 7C 1B 78 */	mr r28, r3
lbl_80495808:
/* 80495808  7F 83 E3 78 */	mr r3, r28
/* 8049580C  4B FF FD E5 */	bl aQMgr_change_NG_msg
/* 80495810  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 80495814  4B F2 9E 95 */	bl func_803BF6A8
/* 80495818  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8049581C  4B F2 A7 A9 */	bl mMsg_Set_continue_msg_num
/* 80495820  4B F2 9E 89 */	bl func_803BF6A8
/* 80495824  4B F2 B5 05 */	bl mMsg_Set_ForceNext
/* 80495828  39 61 00 20 */	addi r11, r1, 0x20
/* 8049582C  4B C0 56 F1 */	bl func_8009AF1C
/* 80495830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80495834  7C 08 03 A6 */	mtlr r0
/* 80495838  38 21 00 20 */	addi r1, r1, 0x20
/* 8049583C  4E 80 00 20 */	blr 
