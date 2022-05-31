lbl_8037CED4:
/* 8037CED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CED8  7C 08 02 A6 */	mflr r0
/* 8037CEDC  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CEE4  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CEE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037CEEC  3B E3 02 FC */	addi r31, r3, 0x2fc
/* 8037CEF0  7F E3 FB 78 */	mr r3, r31
/* 8037CEF4  4B FF FC 1D */	bl mBGMForce_cleanup
/* 8037CEF8  48 02 7D 99 */	bl mFI_CheckFieldData
/* 8037CEFC  2C 03 00 00 */	cmpwi r3, 0
/* 8037CF00  41 82 00 A0 */	beq lbl_8037CFA0
/* 8037CF04  48 02 7D C9 */	bl mFI_GetFieldId
/* 8037CF08  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8037CF0C  40 82 00 64 */	bne lbl_8037CF70
/* 8037CF10  48 01 DF A9 */	bl mEv_CheckTitleDemo
/* 8037CF14  2C 03 00 00 */	cmpwi r3, 0
/* 8037CF18  40 81 00 14 */	ble lbl_8037CF2C
/* 8037CF1C  38 60 00 46 */	li r3, 0x46
/* 8037CF20  38 80 01 68 */	li r4, 0x168
/* 8037CF24  4B FF F4 01 */	bl mBGMPsComp_delete_ps_demo
/* 8037CF28  48 00 00 78 */	b lbl_8037CFA0
lbl_8037CF2C:
/* 8037CF2C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8037CF30  2C 00 00 03 */	cmpwi r0, 3
/* 8037CF34  41 82 00 0C */	beq lbl_8037CF40
/* 8037CF38  2C 00 00 07 */	cmpwi r0, 7
/* 8037CF3C  40 82 00 10 */	bne lbl_8037CF4C
lbl_8037CF40:
/* 8037CF40  88 1F 00 04 */	lbz r0, 4(r31)
/* 8037CF44  28 00 00 00 */	cmplwi r0, 0
/* 8037CF48  41 82 00 08 */	beq lbl_8037CF50
lbl_8037CF4C:
/* 8037CF4C  4B FF D7 D9 */	bl mBGMFieldNorm_delete_req
lbl_8037CF50:
/* 8037CF50  80 1F 00 00 */	lwz r0, 0(r31)
/* 8037CF54  2C 00 00 07 */	cmpwi r0, 7
/* 8037CF58  40 82 00 48 */	bne lbl_8037CFA0
/* 8037CF5C  88 1F 00 04 */	lbz r0, 4(r31)
/* 8037CF60  28 00 00 00 */	cmplwi r0, 0
/* 8037CF64  41 82 00 3C */	beq lbl_8037CFA0
/* 8037CF68  4B FF F3 61 */	bl mBGMPsComp_delete_ps_quiet
/* 8037CF6C  48 00 00 34 */	b lbl_8037CFA0
lbl_8037CF70:
/* 8037CF70  28 00 30 00 */	cmplwi r0, 0x3000
/* 8037CF74  41 82 00 14 */	beq lbl_8037CF88
/* 8037CF78  28 00 40 00 */	cmplwi r0, 0x4000
/* 8037CF7C  41 82 00 0C */	beq lbl_8037CF88
/* 8037CF80  28 00 60 00 */	cmplwi r0, 0x6000
/* 8037CF84  40 82 00 18 */	bne lbl_8037CF9C
lbl_8037CF88:
/* 8037CF88  80 1F 00 08 */	lwz r0, 8(r31)
/* 8037CF8C  2C 00 00 03 */	cmpwi r0, 3
/* 8037CF90  41 82 00 10 */	beq lbl_8037CFA0
/* 8037CF94  4B FF C2 01 */	bl mBGMRoom_scene_bgm_delete_req
/* 8037CF98  48 00 00 08 */	b lbl_8037CFA0
lbl_8037CF9C:
/* 8037CF9C  4B FF BD 0D */	bl mBGMDemo_scene_bgm_delete_req
lbl_8037CFA0:
/* 8037CFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CFA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037CFA8  7C 08 03 A6 */	mtlr r0
/* 8037CFAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CFB0  4E 80 00 20 */	blr 
