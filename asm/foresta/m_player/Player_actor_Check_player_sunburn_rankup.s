lbl_804DE6BC:
/* 804DE6BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DE6C0  7C 08 02 A6 */	mflr r0
/* 804DE6C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DE6C8  39 61 00 20 */	addi r11, r1, 0x20
/* 804DE6CC  4B BB C8 09 */	bl func_8009AED4
/* 804DE6D0  7C 7F 1B 78 */	mr r31, r3
/* 804DE6D4  80 03 12 24 */	lwz r0, 0x1224(r3)
/* 804DE6D8  2C 00 00 00 */	cmpwi r0, 0
/* 804DE6DC  40 82 01 38 */	bne lbl_804DE814
/* 804DE6E0  4B EB C7 D9 */	bl mEv_CheckTitleDemo
/* 804DE6E4  2C 03 00 00 */	cmpwi r3, 0
/* 804DE6E8  41 81 01 2C */	bgt lbl_804DE814
/* 804DE6EC  4B EC 65 E1 */	bl mFI_GetFieldId
/* 804DE6F0  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 804DE6F4  40 82 01 20 */	bne lbl_804DE814
/* 804DE6F8  4B EB C6 35 */	bl mEv_CheckFirstIntro
/* 804DE6FC  2C 03 00 00 */	cmpwi r3, 0
/* 804DE700  40 82 01 14 */	bne lbl_804DE814
/* 804DE704  4B ED C2 95 */	bl mEnv_NowWeather
/* 804DE708  2C 03 00 00 */	cmpwi r3, 0
/* 804DE70C  40 82 01 08 */	bne lbl_804DE814
/* 804DE710  4B EF F2 A5 */	bl mPlib_Check_now_handin_item_kind
/* 804DE714  2C 03 00 0B */	cmpwi r3, 0xb
/* 804DE718  38 00 00 00 */	li r0, 0
/* 804DE71C  41 80 00 10 */	blt lbl_804DE72C
/* 804DE720  2C 03 00 33 */	cmpwi r3, 0x33
/* 804DE724  40 80 00 08 */	bge lbl_804DE72C
/* 804DE728  38 00 00 01 */	li r0, 1
lbl_804DE72C:
/* 804DE72C  2C 00 00 00 */	cmpwi r0, 0
/* 804DE730  40 82 00 E4 */	bne lbl_804DE814
/* 804DE734  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE738  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE73C  3F C3 00 02 */	addis r30, r3, 2
/* 804DE740  88 1E 61 22 */	lbz r0, 0x6122(r30)
/* 804DE744  2C 00 00 0A */	cmpwi r0, 0xa
/* 804DE748  41 80 00 CC */	blt lbl_804DE814
/* 804DE74C  2C 00 00 11 */	cmpwi r0, 0x11
/* 804DE750  41 80 00 08 */	blt lbl_804DE758
/* 804DE754  48 00 00 C0 */	b lbl_804DE814
lbl_804DE758:
/* 804DE758  4B EC 89 81 */	bl mFI_CheckInIsland
/* 804DE75C  2C 03 00 00 */	cmpwi r3, 0
/* 804DE760  40 82 00 6C */	bne lbl_804DE7CC
/* 804DE764  88 1E 61 25 */	lbz r0, 0x6125(r30)
/* 804DE768  88 7E 61 23 */	lbz r3, 0x6123(r30)
/* 804DE76C  2C 00 00 08 */	cmpwi r0, 8
/* 804DE770  41 82 00 30 */	beq lbl_804DE7A0
/* 804DE774  2C 00 00 07 */	cmpwi r0, 7
/* 804DE778  40 82 00 10 */	bne lbl_804DE788
/* 804DE77C  2C 03 00 10 */	cmpwi r3, 0x10
/* 804DE780  40 80 00 20 */	bge lbl_804DE7A0
/* 804DE784  48 00 00 90 */	b lbl_804DE814
lbl_804DE788:
/* 804DE788  2C 00 00 09 */	cmpwi r0, 9
/* 804DE78C  40 82 00 88 */	bne lbl_804DE814
/* 804DE790  2C 03 00 0F */	cmpwi r3, 0xf
/* 804DE794  40 81 00 0C */	ble lbl_804DE7A0
/* 804DE798  48 00 00 7C */	b lbl_804DE814
/* 804DE79C  48 00 00 78 */	b lbl_804DE814
lbl_804DE7A0:
/* 804DE7A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE7A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE7A8  3C 63 00 02 */	addis r3, r3, 2
/* 804DE7AC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804DE7B0  88 03 23 C8 */	lbz r0, 0x23c8(r3)
/* 804DE7B4  7C 00 07 75 */	extsb. r0, r0
/* 804DE7B8  40 81 00 14 */	ble lbl_804DE7CC
/* 804DE7BC  88 03 23 C9 */	lbz r0, 0x23c9(r3)
/* 804DE7C0  7C 00 07 74 */	extsb r0, r0
/* 804DE7C4  2C 00 00 02 */	cmpwi r0, 2
/* 804DE7C8  40 80 00 4C */	bge lbl_804DE814
lbl_804DE7CC:
/* 804DE7CC  80 1F 12 28 */	lwz r0, 0x1228(r31)
/* 804DE7D0  2C 00 00 00 */	cmpwi r0, 0
/* 804DE7D4  40 82 00 40 */	bne lbl_804DE814
/* 804DE7D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DE7DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DE7E0  3F C3 00 03 */	addis r30, r3, 3
/* 804DE7E4  AB BE DB A6 */	lha r29, -0x245a(r30)
/* 804DE7E8  4B EC 88 F1 */	bl mFI_CheckInIsland
/* 804DE7EC  2C 03 00 00 */	cmpwi r3, 0
/* 804DE7F0  38 00 46 50 */	li r0, 0x4650
/* 804DE7F4  40 82 00 08 */	bne lbl_804DE7FC
/* 804DE7F8  38 00 D2 F0 */	li r0, -11536
lbl_804DE7FC:
/* 804DE7FC  7C 1D 00 00 */	cmpw r29, r0
/* 804DE800  41 80 00 0C */	blt lbl_804DE80C
/* 804DE804  38 00 00 01 */	li r0, 1
/* 804DE808  90 1F 12 24 */	stw r0, 0x1224(r31)
lbl_804DE80C:
/* 804DE80C  38 1D 00 01 */	addi r0, r29, 1
/* 804DE810  B0 1E DB A6 */	sth r0, -0x245a(r30)
lbl_804DE814:
/* 804DE814  39 61 00 20 */	addi r11, r1, 0x20
/* 804DE818  4B BB C7 09 */	bl func_8009AF20
/* 804DE81C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DE820  7C 08 03 A6 */	mtlr r0
/* 804DE824  38 21 00 20 */	addi r1, r1, 0x20
/* 804DE828  4E 80 00 20 */	blr 
