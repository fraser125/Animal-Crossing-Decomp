lbl_80414C44:
/* 80414C44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80414C48  7C 08 02 A6 */	mflr r0
/* 80414C4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80414C50  39 61 00 20 */	addi r11, r1, 0x20
/* 80414C54  4B C8 62 7D */	bl func_8009AED0
/* 80414C58  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80414C5C  7C 7F 1B 78 */	mr r31, r3
/* 80414C60  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80414C64  7C 9E 23 78 */	mr r30, r4
/* 80414C68  3C A5 00 02 */	addis r5, r5, 2
/* 80414C6C  A8 05 61 50 */	lha r0, 0x6150(r5)
/* 80414C70  2C 00 00 00 */	cmpwi r0, 0
/* 80414C74  40 82 00 2C */	bne lbl_80414CA0
/* 80414C78  4B F9 32 4D */	bl mFI_ActorisBorn
/* 80414C7C  20 63 00 01 */	subfic r3, r3, 1
/* 80414C80  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80414C84  7C 64 00 34 */	cntlzw r4, r3
/* 80414C88  7F E3 FB 78 */	mr r3, r31
/* 80414C8C  54 85 D9 7E */	srwi r5, r4, 5
/* 80414C90  7F C4 F3 78 */	mr r4, r30
/* 80414C94  7C 00 2B 78 */	or r0, r0, r5
/* 80414C98  90 1F 01 74 */	stw r0, 0x174(r31)
/* 80414C9C  4B FF FE FD */	bl aBC_set_boat
lbl_80414CA0:
/* 80414CA0  4B F9 32 25 */	bl mFI_ActorisBorn
/* 80414CA4  2C 03 00 01 */	cmpwi r3, 1
/* 80414CA8  40 82 00 64 */	bne lbl_80414D0C
/* 80414CAC  8B BE 00 E4 */	lbz r29, 0xe4(r30)
/* 80414CB0  8B 9E 00 E5 */	lbz r28, 0xe5(r30)
/* 80414CB4  7F BD 07 74 */	extsb r29, r29
/* 80414CB8  7F 9C 07 74 */	extsb r28, r28
/* 80414CBC  7F A3 EB 78 */	mr r3, r29
/* 80414CC0  7F 84 E3 78 */	mr r4, r28
/* 80414CC4  4B F9 3C C1 */	bl mFI_MoveActorListDma
/* 80414CC8  90 7F 01 78 */	stw r3, 0x178(r31)
/* 80414CCC  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80414CD0  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 80414CD4  80 7F 01 78 */	lwz r3, 0x178(r31)
/* 80414CD8  4B FB C9 E5 */	bl mNpc_AddActor_inBlock
/* 80414CDC  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80414CE0  28 00 00 00 */	cmplwi r0, 0
/* 80414CE4  41 82 00 20 */	beq lbl_80414D04
/* 80414CE8  7F A3 EB 78 */	mr r3, r29
/* 80414CEC  7F 84 E3 78 */	mr r4, r28
/* 80414CF0  4B F9 37 89 */	bl mFI_GetMoveActorBitData
/* 80414CF4  B0 7F 01 7C */	sth r3, 0x17c(r31)
/* 80414CF8  38 00 00 01 */	li r0, 1
/* 80414CFC  B0 1F 01 7E */	sth r0, 0x17e(r31)
/* 80414D00  48 00 00 0C */	b lbl_80414D0C
lbl_80414D04:
/* 80414D04  38 00 00 00 */	li r0, 0
/* 80414D08  B0 1F 01 7C */	sth r0, 0x17c(r31)
lbl_80414D0C:
/* 80414D0C  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 80414D10  38 00 00 00 */	li r0, 0
/* 80414D14  38 63 7A 58 */	addi r3, r3, g_fdinfo@l /* 0x81167A58@l */
/* 80414D18  80 63 00 00 */	lwz r3, 0(r3)
/* 80414D1C  98 03 00 91 */	stb r0, 0x91(r3)
/* 80414D20  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 80414D24  2C 00 00 01 */	cmpwi r0, 1
/* 80414D28  40 82 00 78 */	bne lbl_80414DA0
/* 80414D2C  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80414D30  2C 00 00 00 */	cmpwi r0, 0
/* 80414D34  41 82 00 1C */	beq lbl_80414D50
/* 80414D38  7F C3 F3 78 */	mr r3, r30
/* 80414D3C  38 80 00 01 */	li r4, 1
/* 80414D40  4B FF F7 71 */	bl func_804144B0
/* 80414D44  7F E3 FB 78 */	mr r3, r31
/* 80414D48  7F C4 F3 78 */	mr r4, r30
/* 80414D4C  4B FF F9 1D */	bl aBC_setupActor
lbl_80414D50:
/* 80414D50  A8 1F 01 7E */	lha r0, 0x17e(r31)
/* 80414D54  2C 00 00 01 */	cmpwi r0, 1
/* 80414D58  40 82 00 48 */	bne lbl_80414DA0
/* 80414D5C  A0 1F 01 7C */	lhz r0, 0x17c(r31)
/* 80414D60  28 00 00 00 */	cmplwi r0, 0
/* 80414D64  41 82 00 3C */	beq lbl_80414DA0
/* 80414D68  8B 9E 00 E4 */	lbz r28, 0xe4(r30)
/* 80414D6C  7F C3 F3 78 */	mr r3, r30
/* 80414D70  8B BE 00 E5 */	lbz r29, 0xe5(r30)
/* 80414D74  38 80 00 04 */	li r4, 4
/* 80414D78  7F 9C 07 74 */	extsb r28, r28
/* 80414D7C  7F BD 07 74 */	extsb r29, r29
/* 80414D80  4B FF F7 31 */	bl func_804144B0
/* 80414D84  7F E3 FB 78 */	mr r3, r31
/* 80414D88  7F C4 F3 78 */	mr r4, r30
/* 80414D8C  4B FF FB 81 */	bl aBC_setupMvActor
/* 80414D90  A0 BF 01 7C */	lhz r5, 0x17c(r31)
/* 80414D94  7F 83 E3 78 */	mr r3, r28
/* 80414D98  7F A4 EB 78 */	mr r4, r29
/* 80414D9C  4B F9 37 D1 */	bl mFI_SetMoveActorBitData
lbl_80414DA0:
/* 80414DA0  38 60 00 00 */	li r3, 0
/* 80414DA4  4B F9 3D 99 */	bl mFI_CheckPlayerWade
/* 80414DA8  2C 03 00 01 */	cmpwi r3, 1
/* 80414DAC  40 82 00 18 */	bne lbl_80414DC4
/* 80414DB0  88 1E 20 D0 */	lbz r0, 0x20d0(r30)
/* 80414DB4  28 00 00 00 */	cmplwi r0, 0
/* 80414DB8  40 82 00 0C */	bne lbl_80414DC4
/* 80414DBC  38 00 00 00 */	li r0, 0
/* 80414DC0  B0 1F 01 7E */	sth r0, 0x17e(r31)
lbl_80414DC4:
/* 80414DC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80414DC8  4B C8 61 55 */	bl func_8009AF1C
/* 80414DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80414DD0  7C 08 03 A6 */	mtlr r0
/* 80414DD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80414DD8  4E 80 00 20 */	blr 
