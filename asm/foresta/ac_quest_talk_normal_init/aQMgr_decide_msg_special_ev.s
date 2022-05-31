lbl_80493F18:
/* 80493F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80493F1C  7C 08 02 A6 */	mflr r0
/* 80493F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493F24  39 61 00 20 */	addi r11, r1, 0x20
/* 80493F28  4B C0 6F A1 */	bl func_8009AEC8
/* 80493F2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80493F30  7C 9A 23 78 */	mr r26, r4
/* 80493F34  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80493F38  3B E0 FF FF */	li r31, -1
/* 80493F3C  3F 63 00 02 */	addis r27, r3, 2
/* 80493F40  3B C0 FF FF */	li r30, -1
/* 80493F44  83 9B 04 A0 */	lwz r28, 0x4a0(r27)
/* 80493F48  7F 63 DB 78 */	mr r3, r27
/* 80493F4C  3B 7B 61 20 */	addi r27, r27, 0x6120
/* 80493F50  3C 1C 00 01 */	addis r0, r28, 1
/* 80493F54  28 00 FF FF */	cmplwi r0, 0xffff
/* 80493F58  41 82 01 90 */	beq lbl_804940E8
/* 80493F5C  3B A3 04 98 */	addi r29, r3, 0x498
/* 80493F60  7F 64 DB 78 */	mr r4, r27
/* 80493F64  7F A3 EB 78 */	mr r3, r29
/* 80493F68  4B F7 29 AD */	bl lbRTC_IsOverTime
/* 80493F6C  2C 03 FF FF */	cmpwi r3, -1
/* 80493F70  41 82 00 4C */	beq lbl_80493FBC
/* 80493F74  28 1C 00 00 */	cmplwi r28, 0
/* 80493F78  40 82 00 24 */	bne lbl_80493F9C
/* 80493F7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80493F80  7F 64 DB 78 */	mr r4, r27
/* 80493F84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80493F88  3C 63 00 02 */	addis r3, r3, 2
/* 80493F8C  38 63 04 AC */	addi r3, r3, 0x4ac
/* 80493F90  4B F7 29 85 */	bl lbRTC_IsOverTime
/* 80493F94  2C 03 FF FF */	cmpwi r3, -1
/* 80493F98  41 82 00 24 */	beq lbl_80493FBC
lbl_80493F9C:
/* 80493F9C  28 1C 00 00 */	cmplwi r28, 0
/* 80493FA0  41 82 01 48 */	beq lbl_804940E8
/* 80493FA4  7F A3 EB 78 */	mr r3, r29
/* 80493FA8  7F 64 DB 78 */	mr r4, r27
/* 80493FAC  38 A0 00 70 */	li r5, 0x70
/* 80493FB0  4B F7 28 89 */	bl lbRTC_IsEqualTime
/* 80493FB4  2C 03 00 01 */	cmpwi r3, 1
/* 80493FB8  40 82 01 30 */	bne lbl_804940E8
lbl_80493FBC:
/* 80493FBC  57 80 00 FE */	clrlwi r0, r28, 3
/* 80493FC0  3C 80 80 69 */	lis r4, l_ev_special@ha /* 0x8068B4F8@ha */
/* 80493FC4  57 45 10 3A */	slwi r5, r26, 2
/* 80493FC8  38 60 00 03 */	li r3, 3
/* 80493FCC  38 84 B4 F8 */	addi r4, r4, l_ev_special@l /* 0x8068B4F8@l */
/* 80493FD0  1C 00 00 03 */	mulli r0, r0, 3
/* 80493FD4  7C 84 28 2E */	lwzx r4, r4, r5
/* 80493FD8  7F E4 02 14 */	add r31, r4, r0
/* 80493FDC  4B F5 03 F5 */	bl mQst_GetRandom
/* 80493FE0  28 1C 00 00 */	cmplwi r28, 0
/* 80493FE4  7F FF 1A 14 */	add r31, r31, r3
/* 80493FE8  40 82 00 D0 */	bne lbl_804940B8
/* 80493FEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80493FF0  38 00 00 05 */	li r0, 5
/* 80493FF4  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 80493FF8  38 60 00 00 */	li r3, 0
/* 80493FFC  7C 09 03 A6 */	mtctr r0
lbl_80494000:
/* 80494000  7C 85 1A 14 */	add r4, r5, r3
/* 80494004  3C 84 00 02 */	addis r4, r4, 2
/* 80494008  A0 84 04 B4 */	lhz r4, 0x4b4(r4)
/* 8049400C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 80494010  2C 00 00 01 */	cmpwi r0, 1
/* 80494014  41 82 00 0C */	beq lbl_80494020
/* 80494018  2C 00 00 03 */	cmpwi r0, 3
/* 8049401C  40 82 00 0C */	bne lbl_80494028
lbl_80494020:
/* 80494020  3B C0 05 5D */	li r30, 0x55d
/* 80494024  48 00 00 48 */	b lbl_8049406C
lbl_80494028:
/* 80494028  2C 00 00 02 */	cmpwi r0, 2
/* 8049402C  40 82 00 40 */	bne lbl_8049406C
/* 80494030  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 80494034  2C 00 00 06 */	cmpwi r0, 6
/* 80494038  41 82 00 20 */	beq lbl_80494058
/* 8049403C  40 80 00 10 */	bge lbl_8049404C
/* 80494040  2C 00 00 04 */	cmpwi r0, 4
/* 80494044  41 82 00 24 */	beq lbl_80494068
/* 80494048  48 00 00 24 */	b lbl_8049406C
lbl_8049404C:
/* 8049404C  2C 00 00 08 */	cmpwi r0, 8
/* 80494050  40 80 00 1C */	bge lbl_8049406C
/* 80494054  48 00 00 0C */	b lbl_80494060
lbl_80494058:
/* 80494058  3B C0 05 5E */	li r30, 0x55e
/* 8049405C  48 00 00 10 */	b lbl_8049406C
lbl_80494060:
/* 80494060  3B C0 05 5F */	li r30, 0x55f
/* 80494064  48 00 00 08 */	b lbl_8049406C
lbl_80494068:
/* 80494068  3B C0 05 60 */	li r30, 0x560
lbl_8049406C:
/* 8049406C  2C 1E FF FF */	cmpwi r30, -1
/* 80494070  41 82 00 34 */	beq lbl_804940A4
/* 80494074  3C 60 81 1D */	lis r3, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80494078  7F C5 F3 78 */	mr r5, r30
/* 8049407C  38 63 EC 94 */	addi r3, r3, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80494080  38 80 00 10 */	li r4, 0x10
/* 80494084  4B F5 AC 49 */	bl mString_Load_StringFromRom
/* 80494088  4B F2 B6 21 */	bl func_803BF6A8
/* 8049408C  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80494090  38 80 00 0B */	li r4, 0xb
/* 80494094  38 A5 EC 94 */	addi r5, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80494098  38 C0 00 10 */	li r6, 0x10
/* 8049409C  4B F2 BB B9 */	bl mMsg_Set_free_str
/* 804940A0  48 00 00 0C */	b lbl_804940AC
lbl_804940A4:
/* 804940A4  38 63 00 02 */	addi r3, r3, 2
/* 804940A8  42 00 FF 58 */	bdnz lbl_80494000
lbl_804940AC:
/* 804940AC  2C 1E FF FF */	cmpwi r30, -1
/* 804940B0  40 82 00 08 */	bne lbl_804940B8
/* 804940B4  3B E0 FF FF */	li r31, -1
lbl_804940B8:
/* 804940B8  2C 1F FF FF */	cmpwi r31, -1
/* 804940BC  41 82 00 2C */	beq lbl_804940E8
/* 804940C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804940C4  38 80 00 0C */	li r4, 0xc
/* 804940C8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804940CC  3C 63 00 02 */	addis r3, r3, 2
/* 804940D0  8B 63 04 9B */	lbz r27, 0x49b(r3)
/* 804940D4  88 63 04 9D */	lbz r3, 0x49d(r3)
/* 804940D8  4B FF D5 B5 */	bl aQMgr_set_number_free_str_add_gatu
/* 804940DC  7F 63 DB 78 */	mr r3, r27
/* 804940E0  38 80 00 0D */	li r4, 0xd
/* 804940E4  4B FF D6 35 */	bl aQMgr_set_number_free_str_add_nichi
lbl_804940E8:
/* 804940E8  7F E3 FB 78 */	mr r3, r31
/* 804940EC  39 61 00 20 */	addi r11, r1, 0x20
/* 804940F0  4B C0 6E 25 */	bl func_8009AF14
/* 804940F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804940F8  7C 08 03 A6 */	mtlr r0
/* 804940FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80494100  4E 80 00 20 */	blr 
