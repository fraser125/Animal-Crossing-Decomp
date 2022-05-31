lbl_8057A128:
/* 8057A128  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8057A12C  7C 08 02 A6 */	mflr r0
/* 8057A130  90 01 00 44 */	stw r0, 0x44(r1)
/* 8057A134  39 61 00 40 */	addi r11, r1, 0x40
/* 8057A138  4B B2 0D 81 */	bl func_8009AEB8
/* 8057A13C  3C A0 80 6C */	lis r5, data_806BFA78@ha /* 0x806BFA78@ha */
/* 8057A140  7C 78 1B 78 */	mr r24, r3
/* 8057A144  7C 99 23 78 */	mr r25, r4
/* 8057A148  3B E5 FA 78 */	addi r31, r5, data_806BFA78@l /* 0x806BFA78@l */
/* 8057A14C  4B E4 55 5D */	bl func_803BF6A8
/* 8057A150  7C 60 1B 78 */	mr r0, r3
/* 8057A154  38 60 00 1B */	li r3, 0x1b
/* 8057A158  7C 1D 03 78 */	mr r29, r0
/* 8057A15C  4B FF E1 21 */	bl aNSC_get_msg_no
/* 8057A160  7C 7A 1B 78 */	mr r26, r3
/* 8057A164  38 60 00 D6 */	li r3, 0xd6
/* 8057A168  4B FF E1 15 */	bl aNSC_get_msg_no
/* 8057A16C  7C 77 1B 78 */	mr r23, r3
/* 8057A170  38 60 00 D8 */	li r3, 0xd8
/* 8057A174  4B FF E1 09 */	bl aNSC_get_msg_no
/* 8057A178  7C 76 1B 78 */	mr r22, r3
/* 8057A17C  7F A3 EB 78 */	mr r3, r29
/* 8057A180  4B E4 5E 4D */	bl mMsg_Get_msg_num
/* 8057A184  7C 03 D0 00 */	cmpw r3, r26
/* 8057A188  41 82 00 14 */	beq lbl_8057A19C
/* 8057A18C  7C 03 B8 00 */	cmpw r3, r23
/* 8057A190  41 82 00 0C */	beq lbl_8057A19C
/* 8057A194  7C 03 B0 00 */	cmpw r3, r22
/* 8057A198  40 82 01 F8 */	bne lbl_8057A390
lbl_8057A19C:
/* 8057A19C  7F A3 EB 78 */	mr r3, r29
/* 8057A1A0  4B E4 6A F9 */	bl mMsg_Check_MainNormalContinue
/* 8057A1A4  2C 03 00 00 */	cmpwi r3, 0
/* 8057A1A8  41 82 01 E8 */	beq lbl_8057A390
/* 8057A1AC  3B 80 FF FF */	li r28, -1
/* 8057A1B0  4B E0 93 91 */	bl func_80383540
/* 8057A1B4  4B E0 99 B9 */	bl mChoice_Get_ChoseNum
/* 8057A1B8  2C 03 00 01 */	cmpwi r3, 1
/* 8057A1BC  41 82 01 8C */	beq lbl_8057A348
/* 8057A1C0  40 80 01 8C */	bge lbl_8057A34C
/* 8057A1C4  2C 03 00 00 */	cmpwi r3, 0
/* 8057A1C8  40 80 00 08 */	bge lbl_8057A1D0
/* 8057A1CC  48 00 01 80 */	b lbl_8057A34C
lbl_8057A1D0:
/* 8057A1D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057A1D4  3B 80 00 01 */	li r28, 1
/* 8057A1D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057A1DC  3F C3 00 02 */	addis r30, r3, 2
/* 8057A1E0  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8057A1E4  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8057A1E8  90 61 00 08 */	stw r3, 8(r1)
/* 8057A1EC  80 18 09 A8 */	lwz r0, 0x9a8(r24)
/* 8057A1F0  83 78 09 B0 */	lwz r27, 0x9b0(r24)
/* 8057A1F4  83 59 1F 60 */	lwz r26, 0x1f60(r25)
/* 8057A1F8  7C 63 02 14 */	add r3, r3, r0
/* 8057A1FC  7F 64 DB 78 */	mr r4, r27
/* 8057A200  90 61 00 08 */	stw r3, 8(r1)
/* 8057A204  4B FF DB 4D */	bl aNSC_check_money_overflow
/* 8057A208  2C 03 00 00 */	cmpwi r3, 0
/* 8057A20C  40 82 00 0C */	bne lbl_8057A218
/* 8057A210  3B 80 00 03 */	li r28, 3
/* 8057A214  48 00 01 38 */	b lbl_8057A34C
lbl_8057A218:
/* 8057A218  88 1A 00 02 */	lbz r0, 2(r26)
/* 8057A21C  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 8057A220  54 03 08 3C */	slwi r3, r0, 1
/* 8057A224  80 18 09 A8 */	lwz r0, 0x9a8(r24)
/* 8057A228  7C 64 1A 14 */	add r3, r4, r3
/* 8057A22C  A2 C3 00 68 */	lhz r22, 0x68(r3)
/* 8057A230  54 03 F8 7E */	srwi r3, r0, 1
/* 8057A234  4B E6 F6 29 */	bl mSP_PlusSales
/* 8057A238  28 1B 00 01 */	cmplwi r27, 1
/* 8057A23C  40 82 00 20 */	bne lbl_8057A25C
/* 8057A240  80 D8 09 A8 */	lwz r6, 0x9a8(r24)
/* 8057A244  7E C4 B3 78 */	mr r4, r22
/* 8057A248  7F 45 D3 78 */	mr r5, r26
/* 8057A24C  38 61 00 08 */	addi r3, r1, 8
/* 8057A250  4B FF E9 A5 */	bl aNSC_buy_item_only_one
/* 8057A254  7C 7C 1B 78 */	mr r28, r3
/* 8057A258  48 00 00 E0 */	b lbl_8057A338
lbl_8057A25C:
/* 8057A25C  A8 19 1F 66 */	lha r0, 0x1f66(r25)
/* 8057A260  2C 00 00 01 */	cmpwi r0, 1
/* 8057A264  40 81 00 98 */	ble lbl_8057A2FC
/* 8057A268  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8057A26C  3A FF 07 CC */	addi r23, r31, 0x7cc
/* 8057A270  3A C3 86 9F */	addi r22, r3, 0x869F /* 0x0001869F@l */
/* 8057A274  48 00 00 48 */	b lbl_8057A2BC
lbl_8057A278:
/* 8057A278  80 61 00 08 */	lwz r3, 8(r1)
/* 8057A27C  7C 03 B0 40 */	cmplw r3, r22
/* 8057A280  41 80 00 18 */	blt lbl_8057A298
/* 8057A284  38 03 8A D0 */	addi r0, r3, -30000
/* 8057A288  38 60 00 00 */	li r3, 0
/* 8057A28C  90 01 00 08 */	stw r0, 8(r1)
/* 8057A290  3B 80 00 00 */	li r28, 0
/* 8057A294  48 00 00 08 */	b lbl_8057A29C
lbl_8057A298:
/* 8057A298  38 60 00 01 */	li r3, 1
lbl_8057A29C:
/* 8057A29C  54 60 08 3C */	slwi r0, r3, 1
/* 8057A2A0  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8057A2A4  88 9A 00 02 */	lbz r4, 2(r26)
/* 8057A2A8  38 C0 00 00 */	li r6, 0
/* 8057A2AC  7C B7 02 2E */	lhzx r5, r23, r0
/* 8057A2B0  4B E6 6B 79 */	bl mPr_SetPossessionItem
/* 8057A2B4  3B 5A 00 04 */	addi r26, r26, 4
/* 8057A2B8  3B 7B FF FF */	addi r27, r27, -1
lbl_8057A2BC:
/* 8057A2BC  28 1B 00 00 */	cmplwi r27, 0
/* 8057A2C0  40 82 FF B8 */	bne lbl_8057A278
/* 8057A2C4  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 8057A2C8  3B 43 86 9F */	addi r26, r3, 0x869F /* 0x0001869F@l */
/* 8057A2CC  48 00 00 20 */	b lbl_8057A2EC
lbl_8057A2D0:
/* 8057A2D0  80 C1 00 08 */	lwz r6, 8(r1)
/* 8057A2D4  38 80 21 02 */	li r4, 0x2102
/* 8057A2D8  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8057A2DC  38 A0 00 00 */	li r5, 0
/* 8057A2E0  38 06 8A D0 */	addi r0, r6, -30000
/* 8057A2E4  90 01 00 08 */	stw r0, 8(r1)
/* 8057A2E8  4B E6 6C 21 */	bl mPr_SetFreePossessionItem
lbl_8057A2EC:
/* 8057A2EC  80 01 00 08 */	lwz r0, 8(r1)
/* 8057A2F0  7C 00 D0 40 */	cmplw r0, r26
/* 8057A2F4  40 80 FF DC */	bge lbl_8057A2D0
/* 8057A2F8  48 00 00 40 */	b lbl_8057A338
lbl_8057A2FC:
/* 8057A2FC  28 16 20 00 */	cmplwi r22, 0x2000
/* 8057A300  41 80 00 24 */	blt lbl_8057A324
/* 8057A304  28 16 20 FF */	cmplwi r22, 0x20ff
/* 8057A308  41 81 00 1C */	bgt lbl_8057A324
/* 8057A30C  7E C4 B3 78 */	mr r4, r22
/* 8057A310  7F 65 DB 78 */	mr r5, r27
/* 8057A314  38 61 00 08 */	addi r3, r1, 8
/* 8057A318  4B FF E7 CD */	bl aNSC_buy_paper
/* 8057A31C  7C 7C 1B 78 */	mr r28, r3
/* 8057A320  48 00 00 18 */	b lbl_8057A338
lbl_8057A324:
/* 8057A324  7E C4 B3 78 */	mr r4, r22
/* 8057A328  7F 65 DB 78 */	mr r5, r27
/* 8057A32C  38 61 00 08 */	addi r3, r1, 8
/* 8057A330  4B FF E6 C5 */	bl aNSC_buy_item_single
/* 8057A334  7C 7C 1B 78 */	mr r28, r3
lbl_8057A338:
/* 8057A338  80 01 00 08 */	lwz r0, 8(r1)
/* 8057A33C  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 8057A340  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8057A344  48 00 00 08 */	b lbl_8057A34C
lbl_8057A348:
/* 8057A348  3B 80 00 02 */	li r28, 2
lbl_8057A34C:
/* 8057A34C  2C 1C FF FF */	cmpwi r28, -1
/* 8057A350  41 82 00 40 */	beq lbl_8057A390
/* 8057A354  7F A3 EB 78 */	mr r3, r29
/* 8057A358  4B E4 69 D1 */	bl mMsg_Set_ForceNext
/* 8057A35C  57 96 10 3A */	slwi r22, r28, 2
/* 8057A360  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 8057A364  7C 63 B0 2E */	lwzx r3, r3, r22
/* 8057A368  4B FF DF 15 */	bl aNSC_get_msg_no
/* 8057A36C  7C 65 1B 78 */	mr r5, r3
/* 8057A370  7F A3 EB 78 */	mr r3, r29
/* 8057A374  7F 04 C3 78 */	mr r4, r24
/* 8057A378  4B FF DF 4D */	bl aNSC_Set_continue_msg_num
/* 8057A37C  38 9F 08 B0 */	addi r4, r31, 0x8b0
/* 8057A380  7F 03 C3 78 */	mr r3, r24
/* 8057A384  7C A4 B0 2E */	lwzx r5, r4, r22
/* 8057A388  7F 24 CB 78 */	mr r4, r25
/* 8057A38C  48 00 21 29 */	bl aNSC_setupAction
lbl_8057A390:
/* 8057A390  39 61 00 40 */	addi r11, r1, 0x40
/* 8057A394  4B B2 0B 71 */	bl func_8009AF04
/* 8057A398  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8057A39C  7C 08 03 A6 */	mtlr r0
/* 8057A3A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8057A3A4  4E 80 00 20 */	blr 
