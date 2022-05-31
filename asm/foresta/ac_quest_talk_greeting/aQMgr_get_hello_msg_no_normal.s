lbl_8048911C:
/* 8048911C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80489120  7C 08 02 A6 */	mflr r0
/* 80489124  90 01 00 34 */	stw r0, 0x34(r1)
/* 80489128  39 61 00 30 */	addi r11, r1, 0x30
/* 8048912C  4B C1 1D 95 */	bl func_8009AEC0
/* 80489130  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80489134  7C 78 1B 78 */	mr r24, r3
/* 80489138  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8048913C  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80489140  3C C6 00 02 */	addis r6, r6, 2
/* 80489144  83 C3 01 80 */	lwz r30, 0x180(r3)
/* 80489148  80 C6 61 3C */	lwz r6, 0x613c(r6)
/* 8048914C  7C 99 23 78 */	mr r25, r4
/* 80489150  8B 9F 08 E2 */	lbz r28, 0x8e2(r31)
/* 80489154  7C BA 2B 78 */	mr r26, r5
/* 80489158  8B A6 10 A2 */	lbz r29, 0x10a2(r6)
/* 8048915C  4B F4 8D A5 */	bl mNpc_GetNpcLooks
/* 80489160  2C 1C 00 05 */	cmpwi r28, 5
/* 80489164  7C 7B 1B 78 */	mr r27, r3
/* 80489168  40 82 00 40 */	bne lbl_804891A8
/* 8048916C  7F 64 DB 78 */	mr r4, r27
/* 80489170  38 60 20 87 */	li r3, 0x2087
/* 80489174  38 A0 00 03 */	li r5, 3
/* 80489178  4B FF F2 DD */	bl aQMgr_get_random_msg_no
/* 8048917C  2C 1A 00 00 */	cmpwi r26, 0
/* 80489180  7C 79 1B 78 */	mr r25, r3
/* 80489184  40 82 00 10 */	bne lbl_80489194
/* 80489188  7F E3 FB 78 */	mr r3, r31
/* 8048918C  38 9F 00 10 */	addi r4, r31, 0x10
/* 80489190  4B FF F6 39 */	bl aQMgr_clear_memory
lbl_80489194:
/* 80489194  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 80489198  38 60 00 00 */	li r3, 0
/* 8048919C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 804891A0  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 804891A4  48 00 02 E4 */	b lbl_80489488
lbl_804891A8:
/* 804891A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804891AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804891B0  3C 63 00 03 */	addis r3, r3, 3
/* 804891B4  88 03 88 39 */	lbz r0, -0x77c7(r3)
/* 804891B8  7C 00 07 75 */	extsb. r0, r0
/* 804891BC  41 82 00 40 */	beq lbl_804891FC
/* 804891C0  7F 64 DB 78 */	mr r4, r27
/* 804891C4  38 60 2A EC */	li r3, 0x2aec
/* 804891C8  38 A0 00 03 */	li r5, 3
/* 804891CC  4B FF F2 89 */	bl aQMgr_get_random_msg_no
/* 804891D0  2C 1A 00 00 */	cmpwi r26, 0
/* 804891D4  7C 79 1B 78 */	mr r25, r3
/* 804891D8  40 82 00 10 */	bne lbl_804891E8
/* 804891DC  7F E3 FB 78 */	mr r3, r31
/* 804891E0  38 9F 00 10 */	addi r4, r31, 0x10
/* 804891E4  4B FF F5 E5 */	bl aQMgr_clear_memory
lbl_804891E8:
/* 804891E8  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 804891EC  38 60 00 00 */	li r3, 0
/* 804891F0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 804891F4  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 804891F8  48 00 02 90 */	b lbl_80489488
lbl_804891FC:
/* 804891FC  2C 1A 00 00 */	cmpwi r26, 0
/* 80489200  40 82 00 1C */	bne lbl_8048921C
/* 80489204  7F 03 C3 78 */	mr r3, r24
/* 80489208  7F 24 CB 78 */	mr r4, r25
/* 8048920C  7F 45 D3 78 */	mr r5, r26
/* 80489210  4B FF FA 75 */	bl aQMgr_get_hello_msg_how_do_you_do
/* 80489214  7C 79 1B 78 */	mr r25, r3
/* 80489218  48 00 02 70 */	b lbl_80489488
lbl_8048921C:
/* 8048921C  4B F5 90 8D */	bl mPr_GetFishCompTalkPermission
/* 80489220  2C 03 00 01 */	cmpwi r3, 1
/* 80489224  40 82 00 94 */	bne lbl_804892B8
/* 80489228  7F C3 F3 78 */	mr r3, r30
/* 8048922C  4B F4 A8 8D */	bl mNpc_GetFishCompleteTalk
/* 80489230  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80489234  28 00 00 01 */	cmplwi r0, 1
/* 80489238  41 82 00 80 */	beq lbl_804892B8
/* 8048923C  4B F5 90 C5 */	bl mPr_GetInsectCompTalkPermission
/* 80489240  2C 03 00 01 */	cmpwi r3, 1
/* 80489244  40 82 00 74 */	bne lbl_804892B8
/* 80489248  7F C3 F3 78 */	mr r3, r30
/* 8048924C  4B F4 A8 89 */	bl mNpc_GetInsectCompleteTalk
/* 80489250  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80489254  28 00 00 01 */	cmplwi r0, 1
/* 80489258  41 82 00 60 */	beq lbl_804892B8
/* 8048925C  38 60 00 04 */	li r3, 4
/* 80489260  4B F5 B1 71 */	bl mQst_GetRandom
/* 80489264  54 79 07 FE */	clrlwi r25, r3, 0x1f
/* 80489268  7F 64 DB 78 */	mr r4, r27
/* 8048926C  1C 79 00 12 */	mulli r3, r25, 0x12
/* 80489270  38 A0 00 03 */	li r5, 3
/* 80489274  38 63 29 CC */	addi r3, r3, 0x29cc
/* 80489278  4B FF F1 DD */	bl aQMgr_get_random_msg_no
/* 8048927C  2C 19 00 00 */	cmpwi r25, 0
/* 80489280  7C 79 1B 78 */	mr r25, r3
/* 80489284  40 82 00 14 */	bne lbl_80489298
/* 80489288  7F C3 F3 78 */	mr r3, r30
/* 8048928C  4B F4 A8 81 */	bl mNpc_SetInsectCompleteTalk
/* 80489290  4B F5 8F 51 */	bl mPr_SetInsectCompleteTalk
/* 80489294  48 00 00 10 */	b lbl_804892A4
lbl_80489298:
/* 80489298  7F C3 F3 78 */	mr r3, r30
/* 8048929C  4B F4 A8 55 */	bl mNpc_SetFishCompleteTalk
/* 804892A0  4B F5 8E A9 */	bl mPr_SetFishCompleteTalk
lbl_804892A4:
/* 804892A4  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 804892A8  38 60 00 00 */	li r3, 0
/* 804892AC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 804892B0  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 804892B4  48 00 01 D4 */	b lbl_80489488
lbl_804892B8:
/* 804892B8  7F C3 F3 78 */	mr r3, r30
/* 804892BC  4B F4 A8 19 */	bl mNpc_GetInsectCompleteTalk
/* 804892C0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804892C4  28 00 00 01 */	cmplwi r0, 1
/* 804892C8  41 82 00 48 */	beq lbl_80489310
/* 804892CC  4B F5 90 35 */	bl mPr_GetInsectCompTalkPermission
/* 804892D0  2C 03 00 01 */	cmpwi r3, 1
/* 804892D4  40 82 00 3C */	bne lbl_80489310
/* 804892D8  7F 64 DB 78 */	mr r4, r27
/* 804892DC  38 60 29 CC */	li r3, 0x29cc
/* 804892E0  38 A0 00 03 */	li r5, 3
/* 804892E4  4B FF F1 71 */	bl aQMgr_get_random_msg_no
/* 804892E8  7C 60 1B 78 */	mr r0, r3
/* 804892EC  7F C3 F3 78 */	mr r3, r30
/* 804892F0  7C 19 03 78 */	mr r25, r0
/* 804892F4  4B F4 A8 19 */	bl mNpc_SetInsectCompleteTalk
/* 804892F8  4B F5 8E E9 */	bl mPr_SetInsectCompleteTalk
/* 804892FC  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 80489300  38 60 00 00 */	li r3, 0
/* 80489304  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80489308  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 8048930C  48 00 01 7C */	b lbl_80489488
lbl_80489310:
/* 80489310  7F C3 F3 78 */	mr r3, r30
/* 80489314  4B F4 A7 A5 */	bl mNpc_GetFishCompleteTalk
/* 80489318  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8048931C  28 00 00 01 */	cmplwi r0, 1
/* 80489320  41 82 00 48 */	beq lbl_80489368
/* 80489324  4B F5 8F 85 */	bl mPr_GetFishCompTalkPermission
/* 80489328  2C 03 00 01 */	cmpwi r3, 1
/* 8048932C  40 82 00 3C */	bne lbl_80489368
/* 80489330  7F 64 DB 78 */	mr r4, r27
/* 80489334  38 60 29 DE */	li r3, 0x29de
/* 80489338  38 A0 00 03 */	li r5, 3
/* 8048933C  4B FF F1 19 */	bl aQMgr_get_random_msg_no
/* 80489340  7C 60 1B 78 */	mr r0, r3
/* 80489344  7F C3 F3 78 */	mr r3, r30
/* 80489348  7C 19 03 78 */	mr r25, r0
/* 8048934C  4B F4 A7 A5 */	bl mNpc_SetFishCompleteTalk
/* 80489350  4B F5 8D F9 */	bl mPr_SetFishCompleteTalk
/* 80489354  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 80489358  38 60 00 00 */	li r3, 0
/* 8048935C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80489360  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 80489364  48 00 01 24 */	b lbl_80489488
lbl_80489368:
/* 80489368  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 8048936C  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80489370  28 00 00 01 */	cmplwi r0, 1
/* 80489374  40 82 00 40 */	bne lbl_804893B4
/* 80489378  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048937C  7F 23 CB 78 */	mr r3, r25
/* 80489380  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80489384  7F 65 DB 78 */	mr r5, r27
/* 80489388  3C C4 00 02 */	addis r6, r4, 2
/* 8048938C  38 80 1B 4B */	li r4, 0x1b4b
/* 80489390  88 C6 61 22 */	lbz r6, 0x6122(r6)
/* 80489394  38 E0 00 03 */	li r7, 3
/* 80489398  4B FF F0 59 */	bl aQMgr_actor_get_my_hello_msg_com
/* 8048939C  88 1E 00 1D */	lbz r0, 0x1d(r30)
/* 804893A0  38 80 00 00 */	li r4, 0
/* 804893A4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 804893A8  7C 79 1B 78 */	mr r25, r3
/* 804893AC  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 804893B0  48 00 00 D8 */	b lbl_80489488
lbl_804893B4:
/* 804893B4  38 1C FF FE */	addi r0, r28, -2
/* 804893B8  28 00 00 02 */	cmplwi r0, 2
/* 804893BC  40 81 00 14 */	ble lbl_804893D0
/* 804893C0  2C 1C 00 07 */	cmpwi r28, 7
/* 804893C4  41 82 00 0C */	beq lbl_804893D0
/* 804893C8  2C 1C 00 08 */	cmpwi r28, 8
/* 804893CC  40 82 00 18 */	bne lbl_804893E4
lbl_804893D0:
/* 804893D0  7F 83 E3 78 */	mr r3, r28
/* 804893D4  7F 64 DB 78 */	mr r4, r27
/* 804893D8  4B FF F0 C9 */	bl aQMgr_get_hello_msg_npc_feel
/* 804893DC  7C 79 1B 78 */	mr r25, r3
/* 804893E0  48 00 00 A8 */	b lbl_80489488
lbl_804893E4:
/* 804893E4  2C 1D 00 02 */	cmpwi r29, 2
/* 804893E8  40 82 00 1C */	bne lbl_80489404
/* 804893EC  7F 64 DB 78 */	mr r4, r27
/* 804893F0  38 60 07 4D */	li r3, 0x74d
/* 804893F4  38 A0 00 03 */	li r5, 3
/* 804893F8  4B FF F0 5D */	bl aQMgr_get_random_msg_no
/* 804893FC  7C 79 1B 78 */	mr r25, r3
/* 80489400  48 00 00 88 */	b lbl_80489488
lbl_80489404:
/* 80489404  38 7F 00 10 */	addi r3, r31, 0x10
/* 80489408  4B F4 53 35 */	bl mNpc_GetPresentClothMemoryIdx
/* 8048940C  2C 03 FF FF */	cmpwi r3, -1
/* 80489410  41 82 00 18 */	beq lbl_80489428
/* 80489414  7F E3 FB 78 */	mr r3, r31
/* 80489418  7F 64 DB 78 */	mr r4, r27
/* 8048941C  4B FF F6 6D */	bl aQMgr_get_thanks_cloth_msg
/* 80489420  7C 79 1B 78 */	mr r25, r3
/* 80489424  48 00 00 64 */	b lbl_80489488
lbl_80489428:
/* 80489428  38 60 00 6C */	li r3, 0x6c
/* 8048942C  38 80 00 01 */	li r4, 1
/* 80489430  4B F1 46 D1 */	bl mEv_check_status
/* 80489434  2C 03 00 01 */	cmpwi r3, 1
/* 80489438  40 82 00 18 */	bne lbl_80489450
/* 8048943C  7F C3 F3 78 */	mr r3, r30
/* 80489440  7F 64 DB 78 */	mr r4, r27
/* 80489444  4B FF FA 49 */	bl aQMgr_get_harvestfestival_msg
/* 80489448  7C 79 1B 78 */	mr r25, r3
/* 8048944C  48 00 00 3C */	b lbl_80489488
lbl_80489450:
/* 80489450  2C 1C 00 01 */	cmpwi r28, 1
/* 80489454  40 82 00 1C */	bne lbl_80489470
/* 80489458  7F 43 D3 78 */	mr r3, r26
/* 8048945C  7F 64 DB 78 */	mr r4, r27
/* 80489460  7F 25 CB 78 */	mr r5, r25
/* 80489464  4B FF F7 0D */	bl aQMgr_get_hello_msg_npc_feel_grad
/* 80489468  7C 79 1B 78 */	mr r25, r3
/* 8048946C  48 00 00 1C */	b lbl_80489488
lbl_80489470:
/* 80489470  7F E3 FB 78 */	mr r3, r31
/* 80489474  7F 64 DB 78 */	mr r4, r27
/* 80489478  7F 45 D3 78 */	mr r5, r26
/* 8048947C  7F 26 CB 78 */	mr r6, r25
/* 80489480  4B FF F3 D5 */	bl aQMgr_get_hello_msg_npc_feel_normal
/* 80489484  7C 79 1B 78 */	mr r25, r3
lbl_80489488:
/* 80489488  7F 23 CB 78 */	mr r3, r25
/* 8048948C  39 61 00 30 */	addi r11, r1, 0x30
/* 80489490  4B C1 1A 7D */	bl func_8009AF0C
/* 80489494  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80489498  7C 08 03 A6 */	mtlr r0
/* 8048949C  38 21 00 30 */	addi r1, r1, 0x30
/* 804894A0  4E 80 00 20 */	blr 
