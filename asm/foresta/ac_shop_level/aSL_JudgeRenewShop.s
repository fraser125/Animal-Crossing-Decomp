lbl_8049F968:
/* 8049F968  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049F96C  7C 08 02 A6 */	mflr r0
/* 8049F970  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049F974  39 61 00 40 */	addi r11, r1, 0x40
/* 8049F978  4B BF B5 59 */	bl func_8009AED0
/* 8049F97C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F980  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
/* 8049F984  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8049F988  2C 00 00 07 */	cmpwi r0, 7
/* 8049F98C  40 82 02 14 */	bne lbl_8049FBA0
/* 8049F990  3C 60 20 00 */	lis r3, 0x2000
/* 8049F994  4B EF B0 85 */	bl mEv_CheckEvent
/* 8049F998  2C 03 00 00 */	cmpwi r3, 0
/* 8049F99C  40 82 02 04 */	bne lbl_8049FBA0
/* 8049F9A0  4B F4 A0 41 */	bl mSP_GetRealShopLevel
/* 8049F9A4  7C 7E 1B 78 */	mr r30, r3
/* 8049F9A8  4B F4 9F BD */	bl mSP_GetShopLevel
/* 8049F9AC  7C 03 F0 00 */	cmpw r3, r30
/* 8049F9B0  40 80 01 F0 */	bge lbl_8049FBA0
/* 8049F9B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F9B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049F9BC  3C 83 00 02 */	addis r4, r3, 2
/* 8049F9C0  80 64 61 20 */	lwz r3, 0x6120(r4)
/* 8049F9C4  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 8049F9C8  90 61 00 28 */	stw r3, 0x28(r1)
/* 8049F9CC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8049F9D0  90 61 00 20 */	stw r3, 0x20(r1)
/* 8049F9D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049F9D8  4B F4 AB D5 */	bl mSP_GetShopOpenTime
/* 8049F9DC  38 00 00 00 */	li r0, 0
/* 8049F9E0  98 61 00 22 */	stb r3, 0x22(r1)
/* 8049F9E4  38 61 00 20 */	addi r3, r1, 0x20
/* 8049F9E8  38 80 00 02 */	li r4, 2
/* 8049F9EC  98 01 00 21 */	stb r0, 0x21(r1)
/* 8049F9F0  98 01 00 20 */	stb r0, 0x20(r1)
/* 8049F9F4  4B F6 73 31 */	bl lbRTC_Add_DD
/* 8049F9F8  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8049F9FC  38 61 00 18 */	addi r3, r1, 0x18
/* 8049FA00  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8049FA04  38 80 00 01 */	li r4, 1
/* 8049FA08  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8049FA0C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049FA10  4B F6 73 15 */	bl lbRTC_Add_DD
/* 8049FA14  4B EF C5 C5 */	bl mEv_get_bargain_day
/* 8049FA18  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8049FA1C  41 82 00 58 */	beq lbl_8049FA74
/* 8049FA20  88 01 00 2D */	lbz r0, 0x2d(r1)
/* 8049FA24  54 64 C6 3E */	rlwinm r4, r3, 0x18, 0x18, 0x1f
/* 8049FA28  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8049FA2C  7C 00 20 40 */	cmplw r0, r4
/* 8049FA30  40 82 00 10 */	bne lbl_8049FA40
/* 8049FA34  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 8049FA38  7C 00 18 40 */	cmplw r0, r3
/* 8049FA3C  41 82 02 08 */	beq lbl_8049FC44
lbl_8049FA40:
/* 8049FA40  88 01 00 25 */	lbz r0, 0x25(r1)
/* 8049FA44  7C 00 20 40 */	cmplw r0, r4
/* 8049FA48  40 82 00 10 */	bne lbl_8049FA58
/* 8049FA4C  88 01 00 23 */	lbz r0, 0x23(r1)
/* 8049FA50  7C 00 18 40 */	cmplw r0, r3
/* 8049FA54  41 82 01 F0 */	beq lbl_8049FC44
lbl_8049FA58:
/* 8049FA58  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 8049FA5C  7C 00 20 40 */	cmplw r0, r4
/* 8049FA60  40 82 00 14 */	bne lbl_8049FA74
/* 8049FA64  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 8049FA68  7C 00 18 40 */	cmplw r0, r3
/* 8049FA6C  40 82 00 08 */	bne lbl_8049FA74
/* 8049FA70  48 00 01 D4 */	b lbl_8049FC44
lbl_8049FA74:
/* 8049FA74  A3 A1 00 2E */	lhz r29, 0x2e(r1)
/* 8049FA78  8B C1 00 2D */	lbz r30, 0x2d(r1)
/* 8049FA7C  7F A3 EB 78 */	mr r3, r29
/* 8049FA80  7F C4 F3 78 */	mr r4, r30
/* 8049FA84  4B F6 6C F5 */	bl lbRTC_GetDaysByMonth
/* 8049FA88  8B 81 00 2B */	lbz r28, 0x2b(r1)
/* 8049FA8C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8049FA90  7C 1C 00 40 */	cmplw r28, r0
/* 8049FA94  41 82 01 B0 */	beq lbl_8049FC44
/* 8049FA98  A0 61 00 26 */	lhz r3, 0x26(r1)
/* 8049FA9C  88 81 00 25 */	lbz r4, 0x25(r1)
/* 8049FAA0  4B F6 6C D9 */	bl lbRTC_GetDaysByMonth
/* 8049FAA4  88 01 00 23 */	lbz r0, 0x23(r1)
/* 8049FAA8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8049FAAC  7C 00 18 40 */	cmplw r0, r3
/* 8049FAB0  41 82 01 94 */	beq lbl_8049FC44
/* 8049FAB4  A0 61 00 1E */	lhz r3, 0x1e(r1)
/* 8049FAB8  88 81 00 1D */	lbz r4, 0x1d(r1)
/* 8049FABC  4B F6 6C BD */	bl lbRTC_GetDaysByMonth
/* 8049FAC0  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 8049FAC4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8049FAC8  7C 00 18 40 */	cmplw r0, r3
/* 8049FACC  40 82 00 08 */	bne lbl_8049FAD4
/* 8049FAD0  48 00 01 74 */	b lbl_8049FC44
lbl_8049FAD4:
/* 8049FAD4  28 1E 00 0B */	cmplwi r30, 0xb
/* 8049FAD8  40 82 00 24 */	bne lbl_8049FAFC
/* 8049FADC  7F A3 EB 78 */	mr r3, r29
/* 8049FAE0  38 80 00 0B */	li r4, 0xb
/* 8049FAE4  38 A0 00 04 */	li r5, 4
/* 8049FAE8  38 C0 00 04 */	li r6, 4
/* 8049FAEC  4B F6 78 C1 */	bl lbRTC_Weekly_day
/* 8049FAF0  38 03 00 01 */	addi r0, r3, 1
/* 8049FAF4  7C 1C 00 00 */	cmpw r28, r0
/* 8049FAF8  41 82 01 4C */	beq lbl_8049FC44
lbl_8049FAFC:
/* 8049FAFC  88 01 00 25 */	lbz r0, 0x25(r1)
/* 8049FB00  28 00 00 0B */	cmplwi r0, 0xb
/* 8049FB04  40 82 00 28 */	bne lbl_8049FB2C
/* 8049FB08  A0 61 00 26 */	lhz r3, 0x26(r1)
/* 8049FB0C  38 80 00 0B */	li r4, 0xb
/* 8049FB10  38 A0 00 04 */	li r5, 4
/* 8049FB14  38 C0 00 04 */	li r6, 4
/* 8049FB18  4B F6 78 95 */	bl lbRTC_Weekly_day
/* 8049FB1C  88 01 00 23 */	lbz r0, 0x23(r1)
/* 8049FB20  38 63 00 01 */	addi r3, r3, 1
/* 8049FB24  7C 00 18 00 */	cmpw r0, r3
/* 8049FB28  41 82 01 1C */	beq lbl_8049FC44
lbl_8049FB2C:
/* 8049FB2C  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 8049FB30  28 00 00 0B */	cmplwi r0, 0xb
/* 8049FB34  40 82 00 2C */	bne lbl_8049FB60
/* 8049FB38  A0 61 00 1E */	lhz r3, 0x1e(r1)
/* 8049FB3C  38 80 00 0B */	li r4, 0xb
/* 8049FB40  38 A0 00 04 */	li r5, 4
/* 8049FB44  38 C0 00 04 */	li r6, 4
/* 8049FB48  4B F6 78 65 */	bl lbRTC_Weekly_day
/* 8049FB4C  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 8049FB50  38 63 00 01 */	addi r3, r3, 1
/* 8049FB54  7C 00 18 00 */	cmpw r0, r3
/* 8049FB58  40 82 00 08 */	bne lbl_8049FB60
/* 8049FB5C  48 00 00 E8 */	b lbl_8049FC44
lbl_8049FB60:
/* 8049FB60  3C 60 20 00 */	lis r3, 0x2000
/* 8049FB64  4B EF AE 15 */	bl mEv_EventON
/* 8049FB68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049FB6C  38 80 00 01 */	li r4, 1
/* 8049FB70  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049FB74  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8049FB78  3C C3 00 02 */	addis r6, r3, 2
/* 8049FB7C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8049FB80  88 66 04 66 */	lbz r3, 0x466(r6)
/* 8049FB84  50 83 26 F6 */	rlwimi r3, r4, 4, 0x1b, 0x1b
/* 8049FB88  90 06 04 74 */	stw r0, 0x474(r6)
/* 8049FB8C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8049FB90  98 66 04 66 */	stb r3, 0x466(r6)
/* 8049FB94  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8049FB98  90 A6 04 78 */	stw r5, 0x478(r6)
/* 8049FB9C  98 06 04 66 */	stb r0, 0x466(r6)
lbl_8049FBA0:
/* 8049FBA0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8049FBA4  2C 00 00 07 */	cmpwi r0, 7
/* 8049FBA8  40 82 00 94 */	bne lbl_8049FC3C
/* 8049FBAC  3C 60 20 00 */	lis r3, 0x2000
/* 8049FBB0  4B EF AE 69 */	bl mEv_CheckEvent
/* 8049FBB4  2C 03 00 01 */	cmpwi r3, 1
/* 8049FBB8  40 82 00 84 */	bne lbl_8049FC3C
/* 8049FBBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049FBC0  38 61 00 08 */	addi r3, r1, 8
/* 8049FBC4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8049FBC8  38 80 00 02 */	li r4, 2
/* 8049FBCC  3D 05 00 02 */	addis r8, r5, 2
/* 8049FBD0  80 E8 61 20 */	lwz r7, 0x6120(r8)
/* 8049FBD4  80 C8 61 24 */	lwz r6, 0x6124(r8)
/* 8049FBD8  80 A8 04 74 */	lwz r5, 0x474(r8)
/* 8049FBDC  80 08 04 78 */	lwz r0, 0x478(r8)
/* 8049FBE0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8049FBE4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8049FBE8  90 A1 00 08 */	stw r5, 8(r1)
/* 8049FBEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049FBF0  4B F6 73 CD */	bl lbRTC_Sub_DD
/* 8049FBF4  38 61 00 10 */	addi r3, r1, 0x10
/* 8049FBF8  38 81 00 08 */	addi r4, r1, 8
/* 8049FBFC  4B F6 6D 19 */	bl lbRTC_IsOverTime
/* 8049FC00  2C 03 00 01 */	cmpwi r3, 1
/* 8049FC04  40 82 00 38 */	bne lbl_8049FC3C
/* 8049FC08  3C 60 20 00 */	lis r3, 0x2000
/* 8049FC0C  4B EF AD BD */	bl mEv_EventOFF
/* 8049FC10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049FC14  38 80 00 00 */	li r4, 0
/* 8049FC18  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049FC1C  3C 63 00 02 */	addis r3, r3, 2
/* 8049FC20  88 03 04 66 */	lbz r0, 0x466(r3)
/* 8049FC24  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8049FC28  98 03 04 66 */	stb r0, 0x466(r3)
/* 8049FC2C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8049FC30  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8049FC34  98 03 04 66 */	stb r0, 0x466(r3)
/* 8049FC38  48 00 00 0C */	b lbl_8049FC44
lbl_8049FC3C:
/* 8049FC3C  4B FF F8 85 */	bl aSL_SetRenewalChiraswhi_Notice
/* 8049FC40  4B F4 9A 35 */	bl mSP_SetRenewalChiraswhi_AppoDay
lbl_8049FC44:
/* 8049FC44  39 61 00 40 */	addi r11, r1, 0x40
/* 8049FC48  4B BF B2 D5 */	bl func_8009AF1C
/* 8049FC4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049FC50  7C 08 03 A6 */	mtlr r0
/* 8049FC54  38 21 00 40 */	addi r1, r1, 0x40
/* 8049FC58  4E 80 00 20 */	blr 
