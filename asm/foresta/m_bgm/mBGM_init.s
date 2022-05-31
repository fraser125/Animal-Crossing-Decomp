lbl_8037CDE8:
/* 8037CDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CDEC  7C 08 02 A6 */	mflr r0
/* 8037CDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037CDF8  4B FF F4 59 */	bl mBGMPsComp_delete_ps_wipe
/* 8037CDFC  48 02 7E 95 */	bl mFI_CheckFieldData
/* 8037CE00  2C 03 00 00 */	cmpwi r3, 0
/* 8037CE04  41 82 00 BC */	beq lbl_8037CEC0
/* 8037CE08  48 02 7E C5 */	bl mFI_GetFieldId
/* 8037CE0C  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 8037CE10  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CE14  3B E3 51 C0 */	addi r31, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CE18  40 82 00 68 */	bne lbl_8037CE80
/* 8037CE1C  48 01 E0 9D */	bl mEv_CheckTitleDemo
/* 8037CE20  2C 03 00 00 */	cmpwi r3, 0
/* 8037CE24  40 81 00 14 */	ble lbl_8037CE38
/* 8037CE28  38 60 00 46 */	li r3, 0x46
/* 8037CE2C  38 80 01 68 */	li r4, 0x168
/* 8037CE30  4B FF EE D9 */	bl mBGMPsComp_make_ps_demo
/* 8037CE34  48 00 00 8C */	b lbl_8037CEC0
lbl_8037CE38:
/* 8037CE38  80 1F 02 FC */	lwz r0, 0x2fc(r31)
/* 8037CE3C  2C 00 00 03 */	cmpwi r0, 3
/* 8037CE40  41 82 00 0C */	beq lbl_8037CE4C
/* 8037CE44  2C 00 00 07 */	cmpwi r0, 7
/* 8037CE48  40 82 00 10 */	bne lbl_8037CE58
lbl_8037CE4C:
/* 8037CE4C  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 8037CE50  28 00 00 00 */	cmplwi r0, 0
/* 8037CE54  41 82 00 08 */	beq lbl_8037CE5C
lbl_8037CE58:
/* 8037CE58  4B FF D8 B9 */	bl mBGMFieldNorm_make_req
lbl_8037CE5C:
/* 8037CE5C  80 1F 02 FC */	lwz r0, 0x2fc(r31)
/* 8037CE60  2C 00 00 03 */	cmpwi r0, 3
/* 8037CE64  40 82 00 5C */	bne lbl_8037CEC0
/* 8037CE68  88 1F 03 00 */	lbz r0, 0x300(r31)
/* 8037CE6C  28 00 00 00 */	cmplwi r0, 0
/* 8037CE70  41 82 00 50 */	beq lbl_8037CEC0
/* 8037CE74  38 60 01 68 */	li r3, 0x168
/* 8037CE78  4B FF ED 0D */	bl mBGMPsComp_make_ps_quiet
/* 8037CE7C  48 00 00 44 */	b lbl_8037CEC0
lbl_8037CE80:
/* 8037CE80  28 00 30 00 */	cmplwi r0, 0x3000
/* 8037CE84  41 82 00 14 */	beq lbl_8037CE98
/* 8037CE88  28 00 40 00 */	cmplwi r0, 0x4000
/* 8037CE8C  41 82 00 0C */	beq lbl_8037CE98
/* 8037CE90  28 00 60 00 */	cmplwi r0, 0x6000
/* 8037CE94  40 82 00 28 */	bne lbl_8037CEBC
lbl_8037CE98:
/* 8037CE98  80 1F 03 04 */	lwz r0, 0x304(r31)
/* 8037CE9C  2C 00 00 03 */	cmpwi r0, 3
/* 8037CEA0  41 82 00 20 */	beq lbl_8037CEC0
/* 8037CEA4  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CEA8  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CEAC  38 63 00 14 */	addi r3, r3, 0x14
/* 8037CEB0  4B FF BE 45 */	bl mBGMRoom_shop_close_time_set
/* 8037CEB4  4B FF C2 CD */	bl mBGMRoom_scene_bgm_make_req
/* 8037CEB8  48 00 00 08 */	b lbl_8037CEC0
lbl_8037CEBC:
/* 8037CEBC  4B FF BD D9 */	bl mBGMDemo_scene_bgm_make_req
lbl_8037CEC0:
/* 8037CEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037CEC8  7C 08 03 A6 */	mtlr r0
/* 8037CECC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CED0  4E 80 00 20 */	blr 
