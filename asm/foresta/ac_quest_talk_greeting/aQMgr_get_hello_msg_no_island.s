lbl_8048969C:
/* 8048969C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804896A0  7C 08 02 A6 */	mflr r0
/* 804896A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804896A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804896AC  4B C1 18 19 */	bl func_8009AEC4
/* 804896B0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 804896B4  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 804896B8  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 804896BC  83 C3 01 80 */	lwz r30, 0x180(r3)
/* 804896C0  3C C6 00 02 */	addis r6, r6, 2
/* 804896C4  8B 9F 08 E2 */	lbz r28, 0x8e2(r31)
/* 804896C8  80 C6 61 3C */	lwz r6, 0x613c(r6)
/* 804896CC  7C 99 23 78 */	mr r25, r4
/* 804896D0  7C BA 2B 78 */	mr r26, r5
/* 804896D4  8B A6 10 A2 */	lbz r29, 0x10a2(r6)
/* 804896D8  4B F4 88 29 */	bl mNpc_GetNpcLooks
/* 804896DC  2C 1C 00 05 */	cmpwi r28, 5
/* 804896E0  7C 7B 1B 78 */	mr r27, r3
/* 804896E4  40 82 00 40 */	bne lbl_80489724
/* 804896E8  7F 64 DB 78 */	mr r4, r27
/* 804896EC  38 60 34 46 */	li r3, 0x3446
/* 804896F0  38 A0 00 03 */	li r5, 3
/* 804896F4  4B FF ED 61 */	bl aQMgr_get_random_msg_no
/* 804896F8  2C 1A 00 00 */	cmpwi r26, 0
/* 804896FC  7C 7B 1B 78 */	mr r27, r3
/* 80489700  40 82 00 10 */	bne lbl_80489710
/* 80489704  7F E3 FB 78 */	mr r3, r31
/* 80489708  38 9F 00 10 */	addi r4, r31, 0x10
/* 8048970C  4B FF F0 BD */	bl aQMgr_clear_memory
lbl_80489710:
/* 80489710  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 80489714  38 60 00 00 */	li r3, 0
/* 80489718  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8048971C  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 80489720  48 00 00 FC */	b lbl_8048981C
lbl_80489724:
/* 80489724  2C 1A 00 00 */	cmpwi r26, 0
/* 80489728  40 82 00 30 */	bne lbl_80489758
/* 8048972C  7F E3 FB 78 */	mr r3, r31
/* 80489730  7F 64 DB 78 */	mr r4, r27
/* 80489734  7F 45 D3 78 */	mr r5, r26
/* 80489738  7F 26 CB 78 */	mr r6, r25
/* 8048973C  4B FF F2 6D */	bl aQMgr_get_hello_msg_npc_feel_normal_island
/* 80489740  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 80489744  38 80 00 00 */	li r4, 0
/* 80489748  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8048974C  7C 7B 1B 78 */	mr r27, r3
/* 80489750  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 80489754  48 00 00 C8 */	b lbl_8048981C
lbl_80489758:
/* 80489758  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 8048975C  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80489760  28 00 00 01 */	cmplwi r0, 1
/* 80489764  40 82 00 2C */	bne lbl_80489790
/* 80489768  7F 64 DB 78 */	mr r4, r27
/* 8048976C  38 60 34 70 */	li r3, 0x3470
/* 80489770  38 A0 00 01 */	li r5, 1
/* 80489774  4B FF EC E1 */	bl aQMgr_get_random_msg_no
/* 80489778  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 8048977C  38 80 00 00 */	li r4, 0
/* 80489780  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80489784  7C 7B 1B 78 */	mr r27, r3
/* 80489788  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 8048978C  48 00 00 90 */	b lbl_8048981C
lbl_80489790:
/* 80489790  38 1C FF FE */	addi r0, r28, -2
/* 80489794  28 00 00 02 */	cmplwi r0, 2
/* 80489798  40 81 00 14 */	ble lbl_804897AC
/* 8048979C  2C 1C 00 07 */	cmpwi r28, 7
/* 804897A0  41 82 00 0C */	beq lbl_804897AC
/* 804897A4  2C 1C 00 08 */	cmpwi r28, 8
/* 804897A8  40 82 00 18 */	bne lbl_804897C0
lbl_804897AC:
/* 804897AC  7F 83 E3 78 */	mr r3, r28
/* 804897B0  7F 64 DB 78 */	mr r4, r27
/* 804897B4  4B FF ED 69 */	bl aQMgr_get_hello_msg_npc_feel_island
/* 804897B8  7C 7B 1B 78 */	mr r27, r3
/* 804897BC  48 00 00 60 */	b lbl_8048981C
lbl_804897C0:
/* 804897C0  2C 1D 00 02 */	cmpwi r29, 2
/* 804897C4  40 82 00 1C */	bne lbl_804897E0
/* 804897C8  7F 64 DB 78 */	mr r4, r27
/* 804897CC  38 60 34 D0 */	li r3, 0x34d0
/* 804897D0  38 A0 00 03 */	li r5, 3
/* 804897D4  4B FF EC 81 */	bl aQMgr_get_random_msg_no
/* 804897D8  7C 7B 1B 78 */	mr r27, r3
/* 804897DC  48 00 00 40 */	b lbl_8048981C
lbl_804897E0:
/* 804897E0  38 60 00 6C */	li r3, 0x6c
/* 804897E4  38 80 00 01 */	li r4, 1
/* 804897E8  4B F1 43 19 */	bl mEv_check_status
/* 804897EC  2C 03 00 01 */	cmpwi r3, 1
/* 804897F0  40 82 00 14 */	bne lbl_80489804
/* 804897F4  7F 63 DB 78 */	mr r3, r27
/* 804897F8  4B FF F8 0D */	bl aQMgr_get_harvestfestival_island_msg
/* 804897FC  7C 7B 1B 78 */	mr r27, r3
/* 80489800  48 00 00 1C */	b lbl_8048981C
lbl_80489804:
/* 80489804  7F E3 FB 78 */	mr r3, r31
/* 80489808  7F 64 DB 78 */	mr r4, r27
/* 8048980C  7F 45 D3 78 */	mr r5, r26
/* 80489810  7F 26 CB 78 */	mr r6, r25
/* 80489814  4B FF F1 95 */	bl aQMgr_get_hello_msg_npc_feel_normal_island
/* 80489818  7C 7B 1B 78 */	mr r27, r3
lbl_8048981C:
/* 8048981C  7F 63 DB 78 */	mr r3, r27
/* 80489820  39 61 00 30 */	addi r11, r1, 0x30
/* 80489824  4B C1 16 ED */	bl func_8009AF10
/* 80489828  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048982C  7C 08 03 A6 */	mtlr r0
/* 80489830  38 21 00 30 */	addi r1, r1, 0x30
/* 80489834  4E 80 00 20 */	blr 
