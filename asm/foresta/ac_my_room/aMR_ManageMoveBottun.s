lbl_804796F4:
/* 804796F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804796F8  7C 08 02 A6 */	mflr r0
/* 804796FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80479700  39 61 00 60 */	addi r11, r1, 0x60
/* 80479704  4B C2 17 A9 */	bl func_8009AEAC
/* 80479708  7C 99 23 78 */	mr r25, r4
/* 8047970C  7C 7F 1B 78 */	mr r31, r3
/* 80479710  7C B4 2B 78 */	mr r20, r5
/* 80479714  7C D5 33 78 */	mr r21, r6
/* 80479718  7F 23 CB 78 */	mr r3, r25
/* 8047971C  4B F5 FF 25 */	bl get_player_actor_withoutCheck
/* 80479720  7C 78 1B 78 */	mr r24, r3
/* 80479724  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80479728  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 8047972C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80479730  90 01 00 18 */	stw r0, 0x18(r1)
/* 80479734  80 18 00 30 */	lwz r0, 0x30(r24)
/* 80479738  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8047973C  80 1F 04 F8 */	lwz r0, 0x4f8(r31)
/* 80479740  2C 00 00 01 */	cmpwi r0, 1
/* 80479744  40 82 00 0C */	bne lbl_80479750
/* 80479748  38 60 00 00 */	li r3, 0
/* 8047974C  48 00 06 D8 */	b lbl_80479E24
lbl_80479750:
/* 80479750  A8 1F 04 EC */	lha r0, 0x4ec(r31)
/* 80479754  2C 00 00 01 */	cmpwi r0, 1
/* 80479758  40 82 00 14 */	bne lbl_8047976C
/* 8047975C  38 00 00 08 */	li r0, 8
/* 80479760  38 60 00 00 */	li r3, 0
/* 80479764  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 80479768  48 00 06 BC */	b lbl_80479E24
lbl_8047976C:
/* 8047976C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80479770  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 80479774  4B F1 C7 9D */	bl chkTrigger
/* 80479778  2C 03 00 00 */	cmpwi r3, 0
/* 8047977C  41 82 01 28 */	beq lbl_804798A4
/* 80479780  38 60 40 00 */	li r3, 0x4000
/* 80479784  4B F1 C7 8D */	bl chkTrigger
/* 80479788  2C 03 00 00 */	cmpwi r3, 0
/* 8047978C  40 82 01 18 */	bne lbl_804798A4
/* 80479790  38 60 40 00 */	li r3, 0x4000
/* 80479794  4B F1 C7 7D */	bl chkTrigger
/* 80479798  2C 03 00 00 */	cmpwi r3, 0
/* 8047979C  40 82 01 08 */	bne lbl_804798A4
/* 804797A0  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 804797A4  2C 00 00 00 */	cmpwi r0, 0
/* 804797A8  40 82 00 FC */	bne lbl_804798A4
/* 804797AC  A8 1F 03 EC */	lha r0, 0x3ec(r31)
/* 804797B0  2C 00 00 00 */	cmpwi r0, 0
/* 804797B4  40 82 00 F0 */	bne lbl_804798A4
/* 804797B8  80 14 00 00 */	lwz r0, 0(r20)
/* 804797BC  2C 00 00 01 */	cmpwi r0, 1
/* 804797C0  40 82 06 40 */	bne lbl_80479E00
/* 804797C4  80 14 00 0C */	lwz r0, 0xc(r20)
/* 804797C8  2C 00 00 02 */	cmpwi r0, 2
/* 804797CC  40 82 06 34 */	bne lbl_80479E00
/* 804797D0  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 804797D4  2C 00 00 00 */	cmpwi r0, 0
/* 804797D8  40 82 06 28 */	bne lbl_80479E00
/* 804797DC  80 14 00 04 */	lwz r0, 4(r20)
/* 804797E0  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804797E4  38 83 DF E8 */	addi r4, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804797E8  1C 60 08 58 */	mulli r3, r0, 0x858
/* 804797EC  80 84 00 00 */	lwz r4, 0(r4)
/* 804797F0  38 03 00 3C */	addi r0, r3, 0x3c
/* 804797F4  7C 04 02 AE */	lhax r0, r4, r0
/* 804797F8  2C 00 00 0E */	cmpwi r0, 0xe
/* 804797FC  41 82 00 1C */	beq lbl_80479818
/* 80479800  2C 00 00 0C */	cmpwi r0, 0xc
/* 80479804  41 82 00 14 */	beq lbl_80479818
/* 80479808  2C 00 00 0D */	cmpwi r0, 0xd
/* 8047980C  41 82 00 0C */	beq lbl_80479818
/* 80479810  2C 00 00 0F */	cmpwi r0, 0xf
/* 80479814  40 82 00 0C */	bne lbl_80479820
lbl_80479818:
/* 80479818  38 60 00 00 */	li r3, 0
/* 8047981C  48 00 06 08 */	b lbl_80479E24
lbl_80479820:
/* 80479820  80 D8 00 28 */	lwz r6, 0x28(r24)
/* 80479824  7E 87 A3 78 */	mr r7, r20
/* 80479828  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 8047982C  38 61 00 14 */	addi r3, r1, 0x14
/* 80479830  38 81 00 08 */	addi r4, r1, 8
/* 80479834  38 B4 00 18 */	addi r5, r20, 0x18
/* 80479838  90 C1 00 08 */	stw r6, 8(r1)
/* 8047983C  38 D4 00 20 */	addi r6, r20, 0x20
/* 80479840  39 00 00 01 */	li r8, 1
/* 80479844  90 01 00 0C */	stw r0, 0xc(r1)
/* 80479848  80 18 00 30 */	lwz r0, 0x30(r24)
/* 8047984C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80479850  4B FF F8 75 */	bl aMR_SetNicePos
/* 80479854  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80479858  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8047985C  90 7F 02 DC */	stw r3, 0x2dc(r31)
/* 80479860  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 80479864  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80479868  90 1F 02 E4 */	stw r0, 0x2e4(r31)
/* 8047986C  80 74 00 14 */	lwz r3, 0x14(r20)
/* 80479870  4B FF EA 5D */	bl aMR_GetPlayerDirect
/* 80479874  80 94 00 04 */	lwz r4, 4(r20)
/* 80479878  7C 65 1B 78 */	mr r5, r3
/* 8047987C  7F 23 CB 78 */	mr r3, r25
/* 80479880  38 C1 00 14 */	addi r6, r1, 0x14
/* 80479884  4B F6 0A E5 */	bl mPlib_request_main_hold_type1
/* 80479888  2C 03 00 00 */	cmpwi r3, 0
/* 8047988C  41 82 05 74 */	beq lbl_80479E00
/* 80479890  38 60 00 01 */	li r3, 1
/* 80479894  38 00 00 00 */	li r0, 0
/* 80479898  B0 7F 01 74 */	sth r3, 0x174(r31)
/* 8047989C  B0 1F 04 EA */	sth r0, 0x4ea(r31)
/* 804798A0  48 00 05 60 */	b lbl_80479E00
lbl_804798A4:
/* 804798A4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804798A8  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804798AC  4B F1 C5 C5 */	bl chkButton
/* 804798B0  2C 03 00 00 */	cmpwi r3, 0
/* 804798B4  41 82 00 68 */	beq lbl_8047991C
/* 804798B8  38 60 40 00 */	li r3, 0x4000
/* 804798BC  4B F1 C6 55 */	bl chkTrigger
/* 804798C0  2C 03 00 00 */	cmpwi r3, 0
/* 804798C4  40 82 00 58 */	bne lbl_8047991C
/* 804798C8  38 60 40 00 */	li r3, 0x4000
/* 804798CC  4B F1 C6 45 */	bl chkTrigger
/* 804798D0  2C 03 00 00 */	cmpwi r3, 0
/* 804798D4  40 82 00 48 */	bne lbl_8047991C
/* 804798D8  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 804798DC  2C 00 00 00 */	cmpwi r0, 0
/* 804798E0  40 82 00 3C */	bne lbl_8047991C
/* 804798E4  A8 1F 03 EC */	lha r0, 0x3ec(r31)
/* 804798E8  2C 00 00 00 */	cmpwi r0, 0
/* 804798EC  40 82 00 30 */	bne lbl_8047991C
/* 804798F0  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 804798F4  2C 00 00 01 */	cmpwi r0, 1
/* 804798F8  41 82 00 0C */	beq lbl_80479904
/* 804798FC  2C 00 00 06 */	cmpwi r0, 6
/* 80479900  40 82 05 00 */	bne lbl_80479E00
lbl_80479904:
/* 80479904  A8 7F 04 EA */	lha r3, 0x4ea(r31)
/* 80479908  2C 03 00 0E */	cmpwi r3, 0xe
/* 8047990C  40 80 04 F4 */	bge lbl_80479E00
/* 80479910  38 03 00 01 */	addi r0, r3, 1
/* 80479914  B0 1F 04 EA */	sth r0, 0x4ea(r31)
/* 80479918  48 00 04 E8 */	b lbl_80479E00
lbl_8047991C:
/* 8047991C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80479920  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 80479924  4B F1 C5 4D */	bl chkButton
/* 80479928  2C 03 00 00 */	cmpwi r3, 0
/* 8047992C  40 82 04 D4 */	bne lbl_80479E00
/* 80479930  A8 1F 03 F8 */	lha r0, 0x3f8(r31)
/* 80479934  2C 00 00 00 */	cmpwi r0, 0
/* 80479938  40 82 04 C8 */	bne lbl_80479E00
/* 8047993C  A8 1F 03 EC */	lha r0, 0x3ec(r31)
/* 80479940  2C 00 00 00 */	cmpwi r0, 0
/* 80479944  40 82 04 BC */	bne lbl_80479E00
/* 80479948  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 8047994C  2C 00 00 01 */	cmpwi r0, 1
/* 80479950  41 82 00 0C */	beq lbl_8047995C
/* 80479954  2C 00 00 06 */	cmpwi r0, 6
/* 80479958  40 82 04 3C */	bne lbl_80479D94
lbl_8047995C:
/* 8047995C  A8 1F 04 EA */	lha r0, 0x4ea(r31)
/* 80479960  2C 00 00 0E */	cmpwi r0, 0xe
/* 80479964  40 80 04 38 */	bge lbl_80479D9C
/* 80479968  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8047996C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80479970  3B 84 85 38 */	addi r28, r4, common_data@l /* 0x81138538@l */
/* 80479974  3A E0 00 01 */	li r23, 1
/* 80479978  3F 5C 00 02 */	addis r26, r28, 2
/* 8047997C  3B A3 DF E8 */	addi r29, r3, data_811CDFE8@l /* 0x811CDFE8@l */
lbl_80479980:
/* 80479980  2C 17 00 01 */	cmpwi r23, 1
/* 80479984  40 82 00 0C */	bne lbl_80479990
/* 80479988  7E BB AB 78 */	mr r27, r21
/* 8047998C  48 00 00 08 */	b lbl_80479994
lbl_80479990:
/* 80479990  7E 9B A3 78 */	mr r27, r20
lbl_80479994:
/* 80479994  80 1B 00 04 */	lwz r0, 4(r27)
/* 80479998  80 7D 00 00 */	lwz r3, 0(r29)
/* 8047999C  1C 00 08 58 */	mulli r0, r0, 0x858
/* 804799A0  7E C3 02 14 */	add r22, r3, r0
/* 804799A4  A0 76 00 00 */	lhz r3, 0(r22)
/* 804799A8  4B FF 67 F9 */	bl func_804701A0
/* 804799AC  80 1B 00 00 */	lwz r0, 0(r27)
/* 804799B0  7C 7E 1B 78 */	mr r30, r3
/* 804799B4  2C 00 00 01 */	cmpwi r0, 1
/* 804799B8  40 82 03 D0 */	bne lbl_80479D88
/* 804799BC  28 1E 00 00 */	cmplwi r30, 0
/* 804799C0  41 82 03 C8 */	beq lbl_80479D88
/* 804799C4  A2 76 00 00 */	lhz r19, 0(r22)
/* 804799C8  7E C3 B3 78 */	mr r3, r22
/* 804799CC  7F 24 CB 78 */	mr r4, r25
/* 804799D0  4B FF FB 65 */	bl aMR_CheckDiaryOnMe
/* 804799D4  2C 03 00 00 */	cmpwi r3, 0
/* 804799D8  41 82 00 64 */	beq lbl_80479A3C
/* 804799DC  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 804799E0  2C 03 00 14 */	cmpwi r3, 0x14
/* 804799E4  41 82 00 24 */	beq lbl_80479A08
/* 804799E8  38 03 FF EB */	addi r0, r3, -21
/* 804799EC  28 00 00 01 */	cmplwi r0, 1
/* 804799F0  40 81 00 18 */	ble lbl_80479A08
/* 804799F4  38 03 FF D8 */	addi r0, r3, -40
/* 804799F8  28 00 00 04 */	cmplwi r0, 4
/* 804799FC  40 81 00 0C */	ble lbl_80479A08
/* 80479A00  2C 03 00 2D */	cmpwi r3, 0x2d
/* 80479A04  40 82 03 84 */	bne lbl_80479D88
lbl_80479A08:
/* 80479A08  4B FF FA ED */	bl aMR_GetPlayerRoomIdx
/* 80479A0C  4B F3 9C 09 */	bl mHS_get_pl_no_detail
/* 80479A10  2C 03 FF FF */	cmpwi r3, -1
/* 80479A14  41 82 03 74 */	beq lbl_80479D88
/* 80479A18  38 00 00 00 */	li r0, 0
/* 80479A1C  7C 66 1B 78 */	mr r6, r3
/* 80479A20  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 80479A24  38 79 1D EC */	addi r3, r25, 0x1dec
/* 80479A28  38 80 00 1C */	li r4, 0x1c
/* 80479A2C  38 A0 00 00 */	li r5, 0
/* 80479A30  4B F7 5C AD */	bl mSM_open_submenu
/* 80479A34  38 60 00 01 */	li r3, 1
/* 80479A38  48 00 03 EC */	b lbl_80479E24
lbl_80479A3C:
/* 80479A3C  28 13 04 A0 */	cmplwi r19, 0x4a0
/* 80479A40  40 82 00 28 */	bne lbl_80479A68
/* 80479A44  80 9B 00 04 */	lwz r4, 4(r27)
/* 80479A48  7F E3 FB 78 */	mr r3, r31
/* 80479A4C  4B FF F8 D1 */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479A50  2C 03 00 00 */	cmpwi r3, 0
/* 80479A54  41 82 03 34 */	beq lbl_80479D88
/* 80479A58  38 00 00 38 */	li r0, 0x38
/* 80479A5C  38 60 00 01 */	li r3, 1
/* 80479A60  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80479A64  48 00 03 C0 */	b lbl_80479E24
lbl_80479A68:
/* 80479A68  28 13 04 11 */	cmplwi r19, 0x411
/* 80479A6C  40 82 00 34 */	bne lbl_80479AA0
/* 80479A70  80 9B 00 04 */	lwz r4, 4(r27)
/* 80479A74  7F E3 FB 78 */	mr r3, r31
/* 80479A78  4B FF F8 A5 */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479A7C  2C 03 00 00 */	cmpwi r3, 0
/* 80479A80  41 82 03 08 */	beq lbl_80479D88
/* 80479A84  38 00 00 36 */	li r0, 0x36
/* 80479A88  38 96 00 08 */	addi r4, r22, 8
/* 80479A8C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80479A90  38 60 01 66 */	li r3, 0x166
/* 80479A94  48 1B 45 15 */	bl sAdo_OngenTrgStart
/* 80479A98  38 60 00 01 */	li r3, 1
/* 80479A9C  48 00 03 88 */	b lbl_80479E24
lbl_80479AA0:
/* 80479AA0  28 13 04 15 */	cmplwi r19, 0x415
/* 80479AA4  40 82 00 28 */	bne lbl_80479ACC
/* 80479AA8  80 9B 00 04 */	lwz r4, 4(r27)
/* 80479AAC  7F E3 FB 78 */	mr r3, r31
/* 80479AB0  4B FF F8 6D */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80479AB8  41 82 02 D0 */	beq lbl_80479D88
/* 80479ABC  38 00 00 37 */	li r0, 0x37
/* 80479AC0  38 60 00 01 */	li r3, 1
/* 80479AC4  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80479AC8  48 00 03 5C */	b lbl_80479E24
lbl_80479ACC:
/* 80479ACC  A0 7E 00 2E */	lhz r3, 0x2e(r30)
/* 80479AD0  54 60 97 FF */	rlwinm. r0, r3, 0x12, 0x1f, 0x1f
/* 80479AD4  41 82 00 34 */	beq lbl_80479B08
/* 80479AD8  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80479ADC  2C 00 00 02 */	cmpwi r0, 2
/* 80479AE0  40 82 02 A8 */	bne lbl_80479D88
/* 80479AE4  80 9B 00 04 */	lwz r4, 4(r27)
/* 80479AE8  7F E3 FB 78 */	mr r3, r31
/* 80479AEC  4B FF F8 31 */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80479AF4  41 82 02 94 */	beq lbl_80479D88
/* 80479AF8  38 00 00 00 */	li r0, 0
/* 80479AFC  38 60 00 01 */	li r3, 1
/* 80479B00  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 80479B04  48 00 03 20 */	b lbl_80479E24
lbl_80479B08:
/* 80479B08  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80479B0C  41 82 01 00 */	beq lbl_80479C0C
/* 80479B10  88 1A 60 01 */	lbz r0, 0x6001(r26)
/* 80479B14  28 00 00 01 */	cmplwi r0, 1
/* 80479B18  40 82 00 3C */	bne lbl_80479B54
/* 80479B1C  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80479B20  2C 00 00 02 */	cmpwi r0, 2
/* 80479B24  40 82 02 64 */	bne lbl_80479D88
/* 80479B28  A8 16 08 40 */	lha r0, 0x840(r22)
/* 80479B2C  2C 00 00 00 */	cmpwi r0, 0
/* 80479B30  40 82 02 58 */	bne lbl_80479D88
/* 80479B34  7F E3 FB 78 */	mr r3, r31
/* 80479B38  7E C4 B3 78 */	mr r4, r22
/* 80479B3C  7F 65 DB 78 */	mr r5, r27
/* 80479B40  48 00 77 69 */	bl aMR_SetMDFtrDemoData
/* 80479B44  38 00 00 0E */	li r0, 0xe
/* 80479B48  38 60 00 01 */	li r3, 1
/* 80479B4C  B0 1F 04 EA */	sth r0, 0x4ea(r31)
/* 80479B50  48 00 02 D4 */	b lbl_80479E24
lbl_80479B54:
/* 80479B54  4B F2 B1 F9 */	bl mFI_CheckShop
/* 80479B58  2C 03 00 01 */	cmpwi r3, 1
/* 80479B5C  41 82 02 2C */	beq lbl_80479D88
/* 80479B60  4B F2 B1 6D */	bl mFI_GetFieldId
/* 80479B64  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80479B68  28 00 30 02 */	cmplwi r0, 0x3002
/* 80479B6C  41 82 02 1C */	beq lbl_80479D88
/* 80479B70  A8 16 08 40 */	lha r0, 0x840(r22)
/* 80479B74  2C 00 00 00 */	cmpwi r0, 0
/* 80479B78  40 82 02 10 */	bne lbl_80479D88
/* 80479B7C  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80479B80  2C 00 00 02 */	cmpwi r0, 2
/* 80479B84  40 82 02 04 */	bne lbl_80479D88
/* 80479B88  80 BB 00 04 */	lwz r5, 4(r27)
/* 80479B8C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80479B90  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80479B94  1C 05 08 58 */	mulli r0, r5, 0x858
/* 80479B98  80 63 00 00 */	lwz r3, 0(r3)
/* 80479B9C  7C 83 02 14 */	add r4, r3, r0
/* 80479BA0  88 04 01 2C */	lbz r0, 0x12c(r4)
/* 80479BA4  28 00 00 01 */	cmplwi r0, 1
/* 80479BA8  40 82 00 20 */	bne lbl_80479BC8
/* 80479BAC  7F E3 FB 78 */	mr r3, r31
/* 80479BB0  7F 65 DB 78 */	mr r5, r27
/* 80479BB4  48 00 76 F5 */	bl aMR_SetMDFtrDemoData
/* 80479BB8  38 00 00 0E */	li r0, 0xe
/* 80479BBC  38 60 00 01 */	li r3, 1
/* 80479BC0  B0 1F 04 EA */	sth r0, 0x4ea(r31)
/* 80479BC4  48 00 02 60 */	b lbl_80479E24
lbl_80479BC8:
/* 80479BC8  A0 04 08 44 */	lhz r0, 0x844(r4)
/* 80479BCC  28 00 00 00 */	cmplwi r0, 0
/* 80479BD0  40 82 00 20 */	bne lbl_80479BF0
/* 80479BD4  7F E3 FB 78 */	mr r3, r31
/* 80479BD8  7F 65 DB 78 */	mr r5, r27
/* 80479BDC  48 00 76 CD */	bl aMR_SetMDFtrDemoData
/* 80479BE0  38 00 00 0E */	li r0, 0xe
/* 80479BE4  38 60 00 01 */	li r3, 1
/* 80479BE8  B0 1F 04 EA */	sth r0, 0x4ea(r31)
/* 80479BEC  48 00 02 38 */	b lbl_80479E24
lbl_80479BF0:
/* 80479BF0  7F E3 FB 78 */	mr r3, r31
/* 80479BF4  7C A4 2B 78 */	mr r4, r5
/* 80479BF8  4B FF F7 25 */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479BFC  38 00 00 00 */	li r0, 0
/* 80479C00  38 60 00 01 */	li r3, 1
/* 80479C04  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 80479C08  48 00 02 1C */	b lbl_80479E24
lbl_80479C0C:
/* 80479C0C  54 60 AF FF */	rlwinm. r0, r3, 0x15, 0x1f, 0x1f
/* 80479C10  40 82 00 0C */	bne lbl_80479C1C
/* 80479C14  54 60 9F FF */	rlwinm. r0, r3, 0x13, 0x1f, 0x1f
/* 80479C18  41 82 00 20 */	beq lbl_80479C38
lbl_80479C1C:
/* 80479C1C  80 9B 00 04 */	lwz r4, 4(r27)
/* 80479C20  7F E3 FB 78 */	mr r3, r31
/* 80479C24  4B FF F6 F9 */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479C28  38 00 00 0E */	li r0, 0xe
/* 80479C2C  38 60 00 01 */	li r3, 1
/* 80479C30  B0 1F 04 EA */	sth r0, 0x4ea(r31)
/* 80479C34  48 00 01 F0 */	b lbl_80479E24
lbl_80479C38:
/* 80479C38  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 80479C3C  40 82 00 0C */	bne lbl_80479C48
/* 80479C40  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 80479C44  41 82 00 2C */	beq lbl_80479C70
lbl_80479C48:
/* 80479C48  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80479C4C  2C 00 00 02 */	cmpwi r0, 2
/* 80479C50  40 82 01 38 */	bne lbl_80479D88
/* 80479C54  A8 16 08 40 */	lha r0, 0x840(r22)
/* 80479C58  2C 00 00 00 */	cmpwi r0, 0
/* 80479C5C  40 82 01 2C */	bne lbl_80479D88
/* 80479C60  7F E3 FB 78 */	mr r3, r31
/* 80479C64  4B FF F8 7D */	bl aMR_RequestForceOpenDemo
/* 80479C68  38 60 00 01 */	li r3, 1
/* 80479C6C  48 00 01 B8 */	b lbl_80479E24
lbl_80479C70:
/* 80479C70  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80479C74  41 82 00 60 */	beq lbl_80479CD4
/* 80479C78  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80479C7C  2C 00 00 02 */	cmpwi r0, 2
/* 80479C80  40 82 01 08 */	bne lbl_80479D88
/* 80479C84  A8 16 08 40 */	lha r0, 0x840(r22)
/* 80479C88  2C 00 00 00 */	cmpwi r0, 0
/* 80479C8C  40 82 00 FC */	bne lbl_80479D88
/* 80479C90  88 1E 00 28 */	lbz r0, 0x28(r30)
/* 80479C94  28 00 00 04 */	cmplwi r0, 4
/* 80479C98  40 82 00 14 */	bne lbl_80479CAC
/* 80479C9C  7F E3 FB 78 */	mr r3, r31
/* 80479CA0  4B FF F8 41 */	bl aMR_RequestForceOpenDemo
/* 80479CA4  38 60 00 01 */	li r3, 1
/* 80479CA8  48 00 01 7C */	b lbl_80479E24
lbl_80479CAC:
/* 80479CAC  7E C3 B3 78 */	mr r3, r22
/* 80479CB0  7F 04 C3 78 */	mr r4, r24
/* 80479CB4  7F 65 DB 78 */	mr r5, r27
/* 80479CB8  48 00 74 A5 */	bl aMR_CheckHikidashi
/* 80479CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80479CC0  41 82 00 C8 */	beq lbl_80479D88
/* 80479CC4  7F E3 FB 78 */	mr r3, r31
/* 80479CC8  4B FF F8 19 */	bl aMR_RequestForceOpenDemo
/* 80479CCC  38 60 00 01 */	li r3, 1
/* 80479CD0  48 00 01 54 */	b lbl_80479E24
lbl_80479CD4:
/* 80479CD4  A0 16 00 00 */	lhz r0, 0(r22)
/* 80479CD8  28 00 03 F6 */	cmplwi r0, 0x3f6
/* 80479CDC  40 82 00 34 */	bne lbl_80479D10
/* 80479CE0  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80479CE4  2C 00 00 02 */	cmpwi r0, 2
/* 80479CE8  40 82 00 A0 */	bne lbl_80479D88
/* 80479CEC  80 9B 00 04 */	lwz r4, 4(r27)
/* 80479CF0  7F E3 FB 78 */	mr r3, r31
/* 80479CF4  4B FF F6 29 */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80479CFC  41 82 00 8C */	beq lbl_80479D88
/* 80479D00  38 00 00 00 */	li r0, 0
/* 80479D04  38 60 00 01 */	li r3, 1
/* 80479D08  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 80479D0C  48 00 01 18 */	b lbl_80479E24
lbl_80479D10:
/* 80479D10  54 60 8F FF */	rlwinm. r0, r3, 0x11, 0x1f, 0x1f
/* 80479D14  41 82 00 50 */	beq lbl_80479D64
/* 80479D18  80 9B 00 04 */	lwz r4, 4(r27)
/* 80479D1C  7F E3 FB 78 */	mr r3, r31
/* 80479D20  4B FF F5 FD */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479D24  2C 03 00 00 */	cmpwi r3, 0
/* 80479D28  41 82 00 60 */	beq lbl_80479D88
/* 80479D2C  38 00 00 00 */	li r0, 0
/* 80479D30  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 80479D34  88 16 01 2C */	lbz r0, 0x12c(r22)
/* 80479D38  28 00 00 01 */	cmplwi r0, 1
/* 80479D3C  40 82 00 14 */	bne lbl_80479D50
/* 80479D40  38 96 00 08 */	addi r4, r22, 8
/* 80479D44  38 60 00 16 */	li r3, 0x16
/* 80479D48  48 1B 42 61 */	bl sAdo_OngenTrgStart
/* 80479D4C  48 00 00 10 */	b lbl_80479D5C
lbl_80479D50:
/* 80479D50  38 96 00 08 */	addi r4, r22, 8
/* 80479D54  38 60 00 17 */	li r3, 0x17
/* 80479D58  48 1B 42 51 */	bl sAdo_OngenTrgStart
lbl_80479D5C:
/* 80479D5C  38 60 00 01 */	li r3, 1
/* 80479D60  48 00 00 C4 */	b lbl_80479E24
lbl_80479D64:
/* 80479D64  80 9B 00 04 */	lwz r4, 4(r27)
/* 80479D68  7F E3 FB 78 */	mr r3, r31
/* 80479D6C  4B FF F5 B1 */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80479D70  2C 03 00 00 */	cmpwi r3, 0
/* 80479D74  41 82 00 14 */	beq lbl_80479D88
/* 80479D78  38 00 00 00 */	li r0, 0
/* 80479D7C  38 60 00 01 */	li r3, 1
/* 80479D80  B0 1F 01 74 */	sth r0, 0x174(r31)
/* 80479D84  48 00 00 A0 */	b lbl_80479E24
lbl_80479D88:
/* 80479D88  36 F7 FF FF */	addic. r23, r23, -1
/* 80479D8C  40 80 FB F4 */	bge lbl_80479980
/* 80479D90  48 00 00 0C */	b lbl_80479D9C
lbl_80479D94:
/* 80479D94  38 00 00 0E */	li r0, 0xe
/* 80479D98  B0 1F 04 EA */	sth r0, 0x4ea(r31)
lbl_80479D9C:
/* 80479D9C  A8 7F 01 74 */	lha r3, 0x174(r31)
/* 80479DA0  2C 03 00 01 */	cmpwi r3, 1
/* 80479DA4  41 82 00 1C */	beq lbl_80479DC0
/* 80479DA8  38 03 FF FA */	addi r0, r3, -6
/* 80479DAC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80479DB0  28 00 00 01 */	cmplwi r0, 1
/* 80479DB4  40 81 00 0C */	ble lbl_80479DC0
/* 80479DB8  2C 03 00 08 */	cmpwi r3, 8
/* 80479DBC  40 82 00 0C */	bne lbl_80479DC8
lbl_80479DC0:
/* 80479DC0  38 00 00 00 */	li r0, 0
/* 80479DC4  B0 1F 01 74 */	sth r0, 0x174(r31)
lbl_80479DC8:
/* 80479DC8  A8 1F 04 0A */	lha r0, 0x40a(r31)
/* 80479DCC  2C 00 00 01 */	cmpwi r0, 1
/* 80479DD0  40 82 00 14 */	bne lbl_80479DE4
/* 80479DD4  38 60 00 06 */	li r3, 6
/* 80479DD8  38 00 00 00 */	li r0, 0
/* 80479DDC  B0 7F 01 74 */	sth r3, 0x174(r31)
/* 80479DE0  B0 1F 04 0A */	sth r0, 0x40a(r31)
lbl_80479DE4:
/* 80479DE4  A8 1F 04 0C */	lha r0, 0x40c(r31)
/* 80479DE8  2C 00 00 01 */	cmpwi r0, 1
/* 80479DEC  40 82 00 14 */	bne lbl_80479E00
/* 80479DF0  38 60 00 06 */	li r3, 6
/* 80479DF4  38 00 00 00 */	li r0, 0
/* 80479DF8  B0 7F 01 74 */	sth r3, 0x174(r31)
/* 80479DFC  B0 1F 04 0C */	sth r0, 0x40c(r31)
lbl_80479E00:
/* 80479E00  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 80479E04  2C 00 00 00 */	cmpwi r0, 0
/* 80479E08  40 82 00 18 */	bne lbl_80479E20
/* 80479E0C  38 00 00 00 */	li r0, 0
/* 80479E10  B0 1F 04 02 */	sth r0, 0x402(r31)
/* 80479E14  B0 1F 04 00 */	sth r0, 0x400(r31)
/* 80479E18  B0 1F 04 0E */	sth r0, 0x40e(r31)
/* 80479E1C  B0 1F 04 10 */	sth r0, 0x410(r31)
lbl_80479E20:
/* 80479E20  38 60 00 00 */	li r3, 0
lbl_80479E24:
/* 80479E24  39 61 00 60 */	addi r11, r1, 0x60
/* 80479E28  4B C2 10 D1 */	bl func_8009AEF8
/* 80479E2C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80479E30  7C 08 03 A6 */	mtlr r0
/* 80479E34  38 21 00 60 */	addi r1, r1, 0x60
/* 80479E38  4E 80 00 20 */	blr 
