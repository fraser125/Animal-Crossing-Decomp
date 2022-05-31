lbl_80403DD4:
/* 80403DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403DD8  7C 08 02 A6 */	mflr r0
/* 80403DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403DE0  4B FA 0E B1 */	bl mFI_CheckFieldData
/* 80403DE4  2C 03 00 00 */	cmpwi r3, 0
/* 80403DE8  41 82 00 28 */	beq lbl_80403E10
/* 80403DEC  4B FA 0E E1 */	bl mFI_GetFieldId
/* 80403DF0  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 80403DF4  40 82 00 1C */	bne lbl_80403E10
/* 80403DF8  4B F9 70 C1 */	bl mEv_CheckTitleDemo
/* 80403DFC  2C 03 00 00 */	cmpwi r3, 0
/* 80403E00  40 81 00 10 */	ble lbl_80403E10
/* 80403E04  38 60 00 04 */	li r3, 4
/* 80403E08  48 00 01 A9 */	bl mVibctl_set_force_stop
/* 80403E0C  48 00 00 0C */	b lbl_80403E18
lbl_80403E10:
/* 80403E10  38 60 00 04 */	li r3, 4
/* 80403E14  48 00 01 C9 */	bl mVibctl_clr_force_stop
lbl_80403E18:
/* 80403E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80403E1C  7C 08 03 A6 */	mtlr r0
/* 80403E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80403E24  4E 80 00 20 */	blr 
