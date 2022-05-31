lbl_805CFEEC:
/* 805CFEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CFEF0  7C 08 02 A6 */	mflr r0
/* 805CFEF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CFEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 805CFEFC  4B AC AF D9 */	bl func_8009AED4
/* 805CFF00  7C 7D 1B 78 */	mr r29, r3
/* 805CFF04  7C 9E 23 78 */	mr r30, r4
/* 805CFF08  7C BF 2B 78 */	mr r31, r5
/* 805CFF0C  4B FF FA 35 */	bl mDI_roll_control_read
/* 805CFF10  4B DC 60 61 */	bl getTrigger
/* 805CFF14  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805CFF18  70 00 D0 00 */	andi. r0, r0, 0xd000
/* 805CFF1C  41 82 00 78 */	beq lbl_805CFF94
/* 805CFF20  4B DC 60 51 */	bl getTrigger
/* 805CFF24  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 805CFF28  40 82 00 10 */	bne lbl_805CFF38
/* 805CFF2C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805CFF30  2C 00 00 01 */	cmpwi r0, 1
/* 805CFF34  40 82 00 34 */	bne lbl_805CFF68
lbl_805CFF38:
/* 805CFF38  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805CFF3C  2C 00 00 01 */	cmpwi r0, 1
/* 805CFF40  40 82 00 10 */	bne lbl_805CFF50
/* 805CFF44  38 60 00 5F */	li r3, 0x5f
/* 805CFF48  48 05 DD BD */	bl sAdo_SysTrgStart
/* 805CFF4C  48 00 00 0C */	b lbl_805CFF58
lbl_805CFF50:
/* 805CFF50  38 60 10 03 */	li r3, 0x1003
/* 805CFF54  48 05 DD B1 */	bl sAdo_SysTrgStart
lbl_805CFF58:
/* 805CFF58  7F A3 EB 78 */	mr r3, r29
/* 805CFF5C  7F C4 F3 78 */	mr r4, r30
/* 805CFF60  48 00 04 3D */	bl mDI_end_diary
/* 805CFF64  48 00 00 30 */	b lbl_805CFF94
lbl_805CFF68:
/* 805CFF68  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 805CFF6C  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805CFF70  C0 03 B0 D4 */	lfs f0, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805CFF74  38 80 00 01 */	li r4, 1
/* 805CFF78  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805CFF7C  38 00 00 00 */	li r0, 0
/* 805CFF80  38 60 00 5F */	li r3, 0x5f
/* 805CFF84  B0 9F 00 1C */	sth r4, 0x1c(r31)
/* 805CFF88  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 805CFF8C  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 805CFF90  48 05 DD 75 */	bl sAdo_SysTrgStart
lbl_805CFF94:
/* 805CFF94  39 61 00 20 */	addi r11, r1, 0x20
/* 805CFF98  4B AC AF 89 */	bl func_8009AF20
/* 805CFF9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CFFA0  7C 08 03 A6 */	mtlr r0
/* 805CFFA4  38 21 00 20 */	addi r1, r1, 0x20
/* 805CFFA8  4E 80 00 20 */	blr 
