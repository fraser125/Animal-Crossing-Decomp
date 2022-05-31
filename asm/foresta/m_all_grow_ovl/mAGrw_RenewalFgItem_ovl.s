lbl_80514EC4:
/* 80514EC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80514EC8  7C 08 02 A6 */	mflr r0
/* 80514ECC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80514ED0  39 61 00 50 */	addi r11, r1, 0x50
/* 80514ED4  4B B8 5F F5 */	bl func_8009AEC8
/* 80514ED8  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80514EDC  38 A0 00 00 */	li r5, 0
/* 80514EE0  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80514EE4  98 A1 00 08 */	stb r5, 8(r1)
/* 80514EE8  80 06 00 14 */	lwz r0, 0x14(r6)
/* 80514EEC  3F C6 00 02 */	addis r30, r6, 2
/* 80514EF0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80514EF4  7C 7A 1B 78 */	mr r26, r3
/* 80514EF8  2C 00 00 07 */	cmpwi r0, 7
/* 80514EFC  7C 9B 23 78 */	mr r27, r4
/* 80514F00  3B DE 06 8C */	addi r30, r30, 0x68c
/* 80514F04  40 82 03 3C */	bne lbl_80515240
/* 80514F08  4B FF B1 1D */	bl mAGrw_CheckFlowerTime
/* 80514F0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80514F10  7C 7D 1B 78 */	mr r29, r3
/* 80514F14  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80514F18  3F E4 00 02 */	addis r31, r4, 2
/* 80514F1C  88 1F 13 95 */	lbz r0, 0x1395(r31)
/* 80514F20  28 00 00 00 */	cmplwi r0, 0
/* 80514F24  41 82 00 08 */	beq lbl_80514F2C
/* 80514F28  4B FF FB 89 */	bl mAGrw_ClearGrass
lbl_80514F2C:
/* 80514F2C  2C 1D 00 00 */	cmpwi r29, 0
/* 80514F30  40 82 00 08 */	bne lbl_80514F38
/* 80514F34  4B FF FB D5 */	bl mAGrw_AllMeltSnowman
lbl_80514F38:
/* 80514F38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80514F3C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80514F40  3C 63 00 03 */	addis r3, r3, 3
/* 80514F44  A0 03 88 82 */	lhz r0, -0x777e(r3)
/* 80514F48  28 00 00 01 */	cmplwi r0, 1
/* 80514F4C  41 82 02 F4 */	beq lbl_80515240
/* 80514F50  3C 60 80 64 */	lis r3, data_806432C4@ha /* 0x806432C4@ha */
/* 80514F54  7F C4 F3 78 */	mr r4, r30
/* 80514F58  38 63 32 C4 */	addi r3, r3, data_806432C4@l /* 0x806432C4@l */
/* 80514F5C  38 A0 00 7F */	li r5, 0x7f
/* 80514F60  4B EF 18 D9 */	bl lbRTC_IsEqualTime
/* 80514F64  7C 7C 1B 78 */	mr r28, r3
/* 80514F68  7F C3 F3 78 */	mr r3, r30
/* 80514F6C  7F 44 D3 78 */	mr r4, r26
/* 80514F70  4B EF 19 A5 */	bl lbRTC_IsOverTime
/* 80514F74  2C 1C 00 01 */	cmpwi r28, 1
/* 80514F78  41 82 00 0C */	beq lbl_80514F84
/* 80514F7C  2C 03 FF FF */	cmpwi r3, -1
/* 80514F80  40 82 01 18 */	bne lbl_80515098
lbl_80514F84:
/* 80514F84  2C 1C 00 01 */	cmpwi r28, 1
/* 80514F88  40 82 00 14 */	bne lbl_80514F9C
/* 80514F8C  38 00 00 01 */	li r0, 1
/* 80514F90  3B 80 00 00 */	li r28, 0
/* 80514F94  90 1B 00 00 */	stw r0, 0(r27)
/* 80514F98  48 00 00 08 */	b lbl_80514FA0
lbl_80514F9C:
/* 80514F9C  3B 80 00 02 */	li r28, 2
lbl_80514FA0:
/* 80514FA0  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 80514FA4  38 61 00 10 */	addi r3, r1, 0x10
/* 80514FA8  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 80514FAC  4B EF 22 89 */	bl lbRTC_TimeCopy
/* 80514FB0  38 61 00 18 */	addi r3, r1, 0x18
/* 80514FB4  4B FF F1 3D */	bl mAGrw_SearchDump
/* 80514FB8  7F 43 D3 78 */	mr r3, r26
/* 80514FBC  7F A5 EB 78 */	mr r5, r29
/* 80514FC0  7F 89 E3 78 */	mr r9, r28
/* 80514FC4  38 81 00 10 */	addi r4, r1, 0x10
/* 80514FC8  38 E1 00 08 */	addi r7, r1, 8
/* 80514FCC  39 01 00 0C */	addi r8, r1, 0xc
/* 80514FD0  38 C0 00 00 */	li r6, 0
/* 80514FD4  4B FF D5 A5 */	bl mAGrw_GrowFieldFgItem
/* 80514FD8  7F 43 D3 78 */	mr r3, r26
/* 80514FDC  7F A5 EB 78 */	mr r5, r29
/* 80514FE0  7F 87 E3 78 */	mr r7, r28
/* 80514FE4  38 81 00 10 */	addi r4, r1, 0x10
/* 80514FE8  38 C0 00 00 */	li r6, 0
/* 80514FEC  4B FF DD A1 */	bl mAGr_GrowIslandFgItem
/* 80514FF0  3C 60 81 1D */	lis r3, l_cancel_ut@ha /* 0x811D3598@ha */
/* 80514FF4  38 63 35 98 */	addi r3, r3, l_cancel_ut@l /* 0x811D3598@l */
/* 80514FF8  4B FF E6 A9 */	bl mAGrw_SetCancelUtInfo
/* 80514FFC  3C 80 81 1D */	lis r4, l_cancel_ut@ha /* 0x811D3598@ha */
/* 80515000  88 61 00 08 */	lbz r3, 8(r1)
/* 80515004  38 A4 35 98 */	addi r5, r4, l_cancel_ut@l /* 0x811D3598@l */
/* 80515008  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8051500C  7F 86 E3 78 */	mr r6, r28
/* 80515010  4B EB 20 79 */	bl mMsm_DepositFossil
/* 80515014  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80515018  3C 60 81 1D */	lis r3, l_cancel_ut@ha /* 0x811D3598@ha */
/* 8051501C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80515020  7F 64 DB 78 */	mr r4, r27
/* 80515024  3F 65 00 02 */	addis r27, r5, 2
/* 80515028  38 A3 35 98 */	addi r5, r3, l_cancel_ut@l /* 0x811D3598@l */
/* 8051502C  3B 7B 3E 40 */	addi r27, r27, 0x3e40
/* 80515030  7F 63 DB 78 */	mr r3, r27
/* 80515034  4B FF EC E5 */	bl mAGrw_SetDigItem
/* 80515038  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051503C  7F 63 DB 78 */	mr r3, r27
/* 80515040  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80515044  3F 84 00 02 */	addis r28, r4, 2
/* 80515048  88 9C 60 03 */	lbz r4, 0x6003(r28)
/* 8051504C  4B FF A9 A1 */	bl mAGrw_SetShineGround_player
/* 80515050  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80515054  7F 63 DB 78 */	mr r3, r27
/* 80515058  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051505C  3C 84 00 01 */	addis r4, r4, 1
/* 80515060  38 84 37 A8 */	addi r4, r4, 0x37a8
/* 80515064  4B FF C5 D5 */	bl mAGrw_SetMoneyStone
/* 80515068  88 9C 60 03 */	lbz r4, 0x6003(r28)
/* 8051506C  7F 63 DB 78 */	mr r3, r27
/* 80515070  4B FF AA 69 */	bl mAGrw_SetMoneyStone_player
/* 80515074  7F C3 F3 78 */	mr r3, r30
/* 80515078  4B FF D2 C1 */	bl mAGrw_SetCarp
/* 8051507C  7F 43 D3 78 */	mr r3, r26
/* 80515080  4B FF FD 3D */	bl mAGrw_ZuruSpoilKabu
/* 80515084  7F C3 F3 78 */	mr r3, r30
/* 80515088  7F 44 D3 78 */	mr r4, r26
/* 8051508C  4B EF 21 A9 */	bl lbRTC_TimeCopy
/* 80515090  4B E8 CF C9 */	bl mFAs_SetFieldRank
/* 80515094  48 00 01 A4 */	b lbl_80515238
lbl_80515098:
/* 80515098  7F C4 F3 78 */	mr r4, r30
/* 8051509C  38 61 00 10 */	addi r3, r1, 0x10
/* 805150A0  4B EF 21 95 */	bl lbRTC_TimeCopy
/* 805150A4  88 01 00 12 */	lbz r0, 0x12(r1)
/* 805150A8  38 60 00 00 */	li r3, 0
/* 805150AC  98 61 00 11 */	stb r3, 0x11(r1)
/* 805150B0  28 00 00 06 */	cmplwi r0, 6
/* 805150B4  98 61 00 10 */	stb r3, 0x10(r1)
/* 805150B8  41 80 00 30 */	blt lbl_805150E8
/* 805150BC  38 61 00 10 */	addi r3, r1, 0x10
/* 805150C0  38 80 00 01 */	li r4, 1
/* 805150C4  4B EF 1C 61 */	bl lbRTC_Add_DD
/* 805150C8  88 61 00 14 */	lbz r3, 0x14(r1)
/* 805150CC  38 63 00 01 */	addi r3, r3, 1
/* 805150D0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805150D4  98 61 00 14 */	stb r3, 0x14(r1)
/* 805150D8  28 00 00 07 */	cmplwi r0, 7
/* 805150DC  41 80 00 0C */	blt lbl_805150E8
/* 805150E0  38 00 00 00 */	li r0, 0
/* 805150E4  98 01 00 14 */	stb r0, 0x14(r1)
lbl_805150E8:
/* 805150E8  38 00 00 06 */	li r0, 6
/* 805150EC  7F 44 D3 78 */	mr r4, r26
/* 805150F0  98 01 00 12 */	stb r0, 0x12(r1)
/* 805150F4  38 61 00 10 */	addi r3, r1, 0x10
/* 805150F8  4B EF 18 1D */	bl lbRTC_IsOverTime
/* 805150FC  2C 03 00 01 */	cmpwi r3, 1
/* 80515100  40 82 01 38 */	bne lbl_80515238
/* 80515104  7F 44 D3 78 */	mr r4, r26
/* 80515108  38 61 00 10 */	addi r3, r1, 0x10
/* 8051510C  4B FF AE 95 */	bl mAGrw_CheckSpoilKabuTime
/* 80515110  7C 60 1B 78 */	mr r0, r3
/* 80515114  38 61 00 18 */	addi r3, r1, 0x18
/* 80515118  7C 1C 03 78 */	mr r28, r0
/* 8051511C  4B FF EF D5 */	bl mAGrw_SearchDump
/* 80515120  7F 43 D3 78 */	mr r3, r26
/* 80515124  7F A5 EB 78 */	mr r5, r29
/* 80515128  7F 86 E3 78 */	mr r6, r28
/* 8051512C  38 81 00 10 */	addi r4, r1, 0x10
/* 80515130  38 E1 00 08 */	addi r7, r1, 8
/* 80515134  39 01 00 0C */	addi r8, r1, 0xc
/* 80515138  39 20 00 01 */	li r9, 1
/* 8051513C  4B FF D4 3D */	bl mAGrw_GrowFieldFgItem
/* 80515140  7F 43 D3 78 */	mr r3, r26
/* 80515144  7F A5 EB 78 */	mr r5, r29
/* 80515148  7F 86 E3 78 */	mr r6, r28
/* 8051514C  38 81 00 10 */	addi r4, r1, 0x10
/* 80515150  38 E0 00 01 */	li r7, 1
/* 80515154  4B FF DC 39 */	bl mAGr_GrowIslandFgItem
/* 80515158  3C 60 81 1D */	lis r3, l_cancel_ut@ha /* 0x811D3598@ha */
/* 8051515C  38 63 35 98 */	addi r3, r3, l_cancel_ut@l /* 0x811D3598@l */
/* 80515160  4B FF E5 41 */	bl mAGrw_SetCancelUtInfo
/* 80515164  3C 80 81 1D */	lis r4, l_cancel_ut@ha /* 0x811D3598@ha */
/* 80515168  88 61 00 08 */	lbz r3, 8(r1)
/* 8051516C  38 A4 35 98 */	addi r5, r4, l_cancel_ut@l /* 0x811D3598@l */
/* 80515170  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80515174  38 C0 00 01 */	li r6, 1
/* 80515178  4B EB 1F 11 */	bl mMsm_DepositFossil
/* 8051517C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80515180  3C 60 81 1D */	lis r3, l_cancel_ut@ha /* 0x811D3598@ha */
/* 80515184  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80515188  7F 64 DB 78 */	mr r4, r27
/* 8051518C  3F 65 00 02 */	addis r27, r5, 2
/* 80515190  38 A3 35 98 */	addi r5, r3, l_cancel_ut@l /* 0x811D3598@l */
/* 80515194  3B 7B 3E 40 */	addi r27, r27, 0x3e40
/* 80515198  7F 63 DB 78 */	mr r3, r27
/* 8051519C  4B FF EB 7D */	bl mAGrw_SetDigItem
/* 805151A0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805151A4  7F 63 DB 78 */	mr r3, r27
/* 805151A8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805151AC  3F A4 00 02 */	addis r29, r4, 2
/* 805151B0  88 9D 60 03 */	lbz r4, 0x6003(r29)
/* 805151B4  4B FF A8 39 */	bl mAGrw_SetShineGround_player
/* 805151B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805151BC  7F 63 DB 78 */	mr r3, r27
/* 805151C0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805151C4  3C 84 00 01 */	addis r4, r4, 1
/* 805151C8  38 84 37 A8 */	addi r4, r4, 0x37a8
/* 805151CC  4B FF C4 6D */	bl mAGrw_SetMoneyStone
/* 805151D0  88 9D 60 03 */	lbz r4, 0x6003(r29)
/* 805151D4  7F 63 DB 78 */	mr r3, r27
/* 805151D8  4B FF A9 01 */	bl mAGrw_SetMoneyStone_player
/* 805151DC  7F 83 E3 78 */	mr r3, r28
/* 805151E0  4B FF ED 05 */	bl mAGrw_SpoilAllPossession
/* 805151E4  7F 45 D3 78 */	mr r5, r26
/* 805151E8  38 61 00 18 */	addi r3, r1, 0x18
/* 805151EC  38 81 00 10 */	addi r4, r1, 0x10
/* 805151F0  4B FF F0 69 */	bl mAGrw_ClearDump
/* 805151F4  88 1F 13 95 */	lbz r0, 0x1395(r31)
/* 805151F8  28 00 00 00 */	cmplwi r0, 0
/* 805151FC  40 82 00 18 */	bne lbl_80515214
/* 80515200  3C 80 81 1D */	lis r4, l_cancel_ut@ha /* 0x811D3598@ha */
/* 80515204  7F 43 D3 78 */	mr r3, r26
/* 80515208  38 A4 35 98 */	addi r5, r4, l_cancel_ut@l /* 0x811D3598@l */
/* 8051520C  38 81 00 10 */	addi r4, r1, 0x10
/* 80515210  4B FF F6 85 */	bl mAGrw_SetGrass
lbl_80515214:
/* 80515214  7F C3 F3 78 */	mr r3, r30
/* 80515218  4B FF D1 21 */	bl mAGrw_SetCarp
/* 8051521C  4B EC 9A 59 */	bl mPB_force_set_keep_item
/* 80515220  38 61 00 18 */	addi r3, r1, 0x18
/* 80515224  4B FF F2 11 */	bl mAGrw_SetItemDump
/* 80515228  7F C3 F3 78 */	mr r3, r30
/* 8051522C  7F 44 D3 78 */	mr r4, r26
/* 80515230  4B EF 20 05 */	bl lbRTC_TimeCopy
/* 80515234  4B E8 CE 25 */	bl mFAs_SetFieldRank
lbl_80515238:
/* 80515238  38 00 00 00 */	li r0, 0
/* 8051523C  98 1F 13 95 */	stb r0, 0x1395(r31)
lbl_80515240:
/* 80515240  39 61 00 50 */	addi r11, r1, 0x50
/* 80515244  4B B8 5C D1 */	bl func_8009AF14
/* 80515248  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051524C  7C 08 03 A6 */	mtlr r0
/* 80515250  38 21 00 50 */	addi r1, r1, 0x50
/* 80515254  4E 80 00 20 */	blr 
