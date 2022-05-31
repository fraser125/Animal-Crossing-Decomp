lbl_80597C68:
/* 80597C68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80597C6C  7C 08 02 A6 */	mflr r0
/* 80597C70  90 01 00 34 */	stw r0, 0x34(r1)
/* 80597C74  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80597C78  7C 7F 1B 78 */	mr r31, r3
/* 80597C7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80597C80  7C 9E 23 78 */	mr r30, r4
/* 80597C84  4B FF FE 79 */	bl aIDG_chk_water_attr
/* 80597C88  2C 03 00 00 */	cmpwi r3, 0
/* 80597C8C  40 82 00 BC */	bne lbl_80597D48
/* 80597C90  7F E3 FB 78 */	mr r3, r31
/* 80597C94  4B FF FE 21 */	bl aIDG_chk_active_range
/* 80597C98  2C 03 00 00 */	cmpwi r3, 0
/* 80597C9C  40 82 00 18 */	bne lbl_80597CB4
/* 80597CA0  7F E3 FB 78 */	mr r3, r31
/* 80597CA4  7F C5 F3 78 */	mr r5, r30
/* 80597CA8  38 80 00 07 */	li r4, 7
/* 80597CAC  48 00 05 A9 */	bl aIDG_setupAction
/* 80597CB0  48 00 00 98 */	b lbl_80597D48
lbl_80597CB4:
/* 80597CB4  7F E3 FB 78 */	mr r3, r31
/* 80597CB8  4B FF FF 35 */	bl aIDG_calc_direction_angl
/* 80597CBC  80 1F 02 18 */	lwz r0, 0x218(r31)
/* 80597CC0  2C 00 00 04 */	cmpwi r0, 4
/* 80597CC4  40 82 00 64 */	bne lbl_80597D28
/* 80597CC8  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 80597CCC  38 61 00 0C */	addi r3, r1, 0xc
/* 80597CD0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80597CD4  38 81 00 08 */	addi r4, r1, 8
/* 80597CD8  38 A1 00 10 */	addi r5, r1, 0x10
/* 80597CDC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80597CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597CE4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80597CE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80597CEC  4B E0 D6 7D */	bl mFI_Wpos2UtNum
/* 80597CF0  A8 7F 02 68 */	lha r3, 0x268(r31)
/* 80597CF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80597CF8  7C 03 00 00 */	cmpw r3, r0
/* 80597CFC  40 82 00 14 */	bne lbl_80597D10
/* 80597D00  A8 7F 02 6A */	lha r3, 0x26a(r31)
/* 80597D04  80 01 00 08 */	lwz r0, 8(r1)
/* 80597D08  7C 03 00 00 */	cmpw r3, r0
/* 80597D0C  41 82 00 3C */	beq lbl_80597D48
lbl_80597D10:
/* 80597D10  38 60 FF FF */	li r3, -1
/* 80597D14  38 00 00 02 */	li r0, 2
/* 80597D18  B0 7F 02 68 */	sth r3, 0x268(r31)
/* 80597D1C  B0 7F 02 6A */	sth r3, 0x26a(r31)
/* 80597D20  90 1F 02 18 */	stw r0, 0x218(r31)
/* 80597D24  48 00 00 24 */	b lbl_80597D48
lbl_80597D28:
/* 80597D28  7F E3 FB 78 */	mr r3, r31
/* 80597D2C  4B FF FC A9 */	bl aIDG_check_patience
/* 80597D30  2C 03 00 01 */	cmpwi r3, 1
/* 80597D34  40 82 00 14 */	bne lbl_80597D48
/* 80597D38  7F E3 FB 78 */	mr r3, r31
/* 80597D3C  7F C5 F3 78 */	mr r5, r30
/* 80597D40  38 80 00 02 */	li r4, 2
/* 80597D44  48 00 05 11 */	bl aIDG_setupAction
lbl_80597D48:
/* 80597D48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80597D4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80597D50  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80597D54  7C 08 03 A6 */	mtlr r0
/* 80597D58  38 21 00 30 */	addi r1, r1, 0x30
/* 80597D5C  4E 80 00 20 */	blr 
