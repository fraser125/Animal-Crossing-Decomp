lbl_804005FC:
/* 804005FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400600  7C 08 02 A6 */	mflr r0
/* 80400604  90 01 00 24 */	stw r0, 0x24(r1)
/* 80400608  39 61 00 20 */	addi r11, r1, 0x20
/* 8040060C  4B C9 A8 C5 */	bl func_8009AED0
/* 80400610  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80400614  3C A0 81 19 */	lis r5, l_memMgr@ha /* 0x81197638@ha */
/* 80400618  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8040061C  3B E0 FF FF */	li r31, -1
/* 80400620  3C 83 00 02 */	addis r4, r3, 2
/* 80400624  38 65 76 38 */	addi r3, r5, l_memMgr@l /* 0x81197638@l */
/* 80400628  88 04 0F 1A */	lbz r0, 0xf1a(r4)
/* 8040062C  7C 7C 1B 78 */	mr r28, r3
/* 80400630  3B A3 00 14 */	addi r29, r3, 0x14
/* 80400634  28 00 00 00 */	cmplwi r0, 0
/* 80400638  40 82 00 D4 */	bne lbl_8040070C
/* 8040063C  4B FF 9E 91 */	bl mCD_ClearMemMgr_com2
/* 80400640  7F 83 E3 78 */	mr r3, r28
/* 80400644  7F A4 EB 78 */	mr r4, r29
/* 80400648  38 A0 00 01 */	li r5, 1
/* 8040064C  38 C0 00 02 */	li r6, 2
/* 80400650  4B FF B3 D9 */	bl mCD_bg_get_area_common
/* 80400654  2C 03 00 01 */	cmpwi r3, 1
/* 80400658  40 82 00 A8 */	bne lbl_80400700
/* 8040065C  80 1C 00 D0 */	lwz r0, 0xd0(r28)
/* 80400660  28 00 00 00 */	cmplwi r0, 0
/* 80400664  41 82 00 9C */	beq lbl_80400700
/* 80400668  80 1C 01 64 */	lwz r0, 0x164(r28)
/* 8040066C  28 00 00 00 */	cmplwi r0, 0
/* 80400670  41 82 00 90 */	beq lbl_80400700
/* 80400674  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80400678  28 00 00 00 */	cmplwi r0, 0
/* 8040067C  41 82 00 84 */	beq lbl_80400700
/* 80400680  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 80400684  3B A0 00 00 */	li r29, 0
/* 80400688  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 8040068C  4B FF A0 51 */	bl mCD_CheckInitProtectCode
/* 80400690  2C 03 00 00 */	cmpwi r3, 0
/* 80400694  40 82 00 40 */	bne lbl_804006D4
/* 80400698  3C 60 81 1A */	lis r3, l_keep_noLandCode@ha /* 0x8119CC38@ha */
/* 8040069C  38 63 CC 38 */	addi r3, r3, l_keep_noLandCode@l /* 0x8119CC38@l */
/* 804006A0  4B FF A0 79 */	bl mCD_CheckProtectCode
/* 804006A4  2C 03 00 01 */	cmpwi r3, 1
/* 804006A8  40 82 00 2C */	bne lbl_804006D4
/* 804006AC  48 00 00 10 */	b lbl_804006BC
lbl_804006B0:
/* 804006B0  7F 83 E3 78 */	mr r3, r28
/* 804006B4  4B FF AA AD */	bl mCD_GetNoLandSlot_bg
/* 804006B8  7C 7D 1B 78 */	mr r29, r3
lbl_804006BC:
/* 804006BC  2C 1D 00 00 */	cmpwi r29, 0
/* 804006C0  41 82 FF F0 */	beq lbl_804006B0
/* 804006C4  2C 1D 00 01 */	cmpwi r29, 1
/* 804006C8  40 82 00 38 */	bne lbl_80400700
/* 804006CC  83 FC 00 00 */	lwz r31, 0(r28)
/* 804006D0  48 00 00 30 */	b lbl_80400700
lbl_804006D4:
/* 804006D4  3F C0 00 07 */	lis r30, 7
/* 804006D8  48 00 00 14 */	b lbl_804006EC
lbl_804006DC:
/* 804006DC  7F 83 E3 78 */	mr r3, r28
/* 804006E0  38 9E 20 00 */	addi r4, r30, 0x2000
/* 804006E4  4B FF A8 0D */	bl mCD_GetSpaceSlot_bg2
/* 804006E8  7C 7D 1B 78 */	mr r29, r3
lbl_804006EC:
/* 804006EC  2C 1D 00 00 */	cmpwi r29, 0
/* 804006F0  41 82 FF EC */	beq lbl_804006DC
/* 804006F4  2C 1D 00 01 */	cmpwi r29, 1
/* 804006F8  40 82 00 08 */	bne lbl_80400700
/* 804006FC  83 FC 00 00 */	lwz r31, 0(r28)
lbl_80400700:
/* 80400700  7F 83 E3 78 */	mr r3, r28
/* 80400704  4B FF 9D C9 */	bl mCD_ClearMemMgr_com2
/* 80400708  48 00 00 0C */	b lbl_80400714
lbl_8040070C:
/* 8040070C  4B FF FE 7D */	bl mCD_GetThisLandSlotNo
/* 80400710  7C 7F 1B 78 */	mr r31, r3
lbl_80400714:
/* 80400714  7F E3 FB 78 */	mr r3, r31
/* 80400718  39 61 00 20 */	addi r11, r1, 0x20
/* 8040071C  4B C9 A8 01 */	bl func_8009AF1C
/* 80400720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80400724  7C 08 03 A6 */	mtlr r0
/* 80400728  38 21 00 20 */	addi r1, r1, 0x20
/* 8040072C  4E 80 00 20 */	blr 
