lbl_803A3F88:
/* 803A3F88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A3F8C  7C 08 02 A6 */	mflr r0
/* 803A3F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A3F94  39 61 00 20 */	addi r11, r1, 0x20
/* 803A3F98  4B CF 6F 3D */	bl func_8009AED4
/* 803A3F9C  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A3FA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A3FA4  80 C4 7A 58 */	lwz r6, g_fdinfo@l(r4)  /* 0x81167A58@l */
/* 803A3FA8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803A3FAC  3C 64 00 02 */	addis r3, r4, 2
/* 803A3FB0  A0 A6 00 00 */	lhz r5, 0(r6)
/* 803A3FB4  7C DD 33 78 */	mr r29, r6
/* 803A3FB8  54 A0 04 26 */	rlwinm r0, r5, 0, 0x10, 0x13
/* 803A3FBC  B0 A3 65 1E */	sth r5, 0x651e(r3)
/* 803A3FC0  2C 00 30 00 */	cmpwi r0, 0x3000
/* 803A3FC4  40 82 00 34 */	bne lbl_803A3FF8
/* 803A3FC8  80 03 60 04 */	lwz r0, 0x6004(r3)
/* 803A3FCC  2C 00 00 23 */	cmpwi r0, 0x23
/* 803A3FD0  41 80 00 28 */	blt lbl_803A3FF8
/* 803A3FD4  2C 00 00 27 */	cmpwi r0, 0x27
/* 803A3FD8  41 81 00 20 */	bgt lbl_803A3FF8
/* 803A3FDC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803A3FE0  2C 00 00 23 */	cmpwi r0, 0x23
/* 803A3FE4  41 80 00 0C */	blt lbl_803A3FF0
/* 803A3FE8  2C 00 00 27 */	cmpwi r0, 0x27
/* 803A3FEC  40 81 00 0C */	ble lbl_803A3FF8
lbl_803A3FF0:
/* 803A3FF0  38 60 00 00 */	li r3, 0
/* 803A3FF4  4B FD 88 7D */	bl mBGMPsComp_museum_status
lbl_803A3FF8:
/* 803A3FF8  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803A3FFC  28 00 00 00 */	cmplwi r0, 0
/* 803A4000  41 82 00 5C */	beq lbl_803A405C
/* 803A4004  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 803A4008  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803A400C  41 82 00 50 */	beq lbl_803A405C
/* 803A4010  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803A4014  40 82 00 1C */	bne lbl_803A4030
/* 803A4018  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 803A401C  80 63 00 00 */	lwz r3, 0(r3)
/* 803A4020  28 03 00 00 */	cmplwi r3, 0
/* 803A4024  41 82 00 38 */	beq lbl_803A405C
/* 803A4028  48 01 84 8D */	bl zelda_free
/* 803A402C  48 00 00 30 */	b lbl_803A405C
lbl_803A4030:
/* 803A4030  88 7D 00 92 */	lbz r3, 0x92(r29)
/* 803A4034  88 1D 00 93 */	lbz r0, 0x93(r29)
/* 803A4038  83 DD 00 74 */	lwz r30, 0x74(r29)
/* 803A403C  7F E3 01 D6 */	mullw r31, r3, r0
/* 803A4040  48 00 00 14 */	b lbl_803A4054
lbl_803A4044:
/* 803A4044  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 803A4048  48 01 84 6D */	bl zelda_free
/* 803A404C  3B DE 06 14 */	addi r30, r30, 0x614
/* 803A4050  3B FF FF FF */	addi r31, r31, -1
lbl_803A4054:
/* 803A4054  2C 1F 00 00 */	cmpwi r31, 0
/* 803A4058  40 82 FF EC */	bne lbl_803A4044
lbl_803A405C:
/* 803A405C  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 803A4060  48 01 84 55 */	bl zelda_free
/* 803A4064  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 803A4068  48 01 84 4D */	bl zelda_free
/* 803A406C  3B C0 00 00 */	li r30, 0
/* 803A4070  7F DF F3 78 */	mr r31, r30
lbl_803A4074:
/* 803A4074  38 1F 00 38 */	addi r0, r31, 0x38
/* 803A4078  7C 7D 00 2E */	lwzx r3, r29, r0
/* 803A407C  48 01 84 39 */	bl zelda_free
/* 803A4080  3B DE 00 01 */	addi r30, r30, 1
/* 803A4084  3B FF 00 04 */	addi r31, r31, 4
/* 803A4088  2C 1E 00 04 */	cmpwi r30, 4
/* 803A408C  41 80 FF E8 */	blt lbl_803A4074
/* 803A4090  7F A3 EB 78 */	mr r3, r29
/* 803A4094  48 01 84 21 */	bl zelda_free
/* 803A4098  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A409C  38 00 00 00 */	li r0, 0
/* 803A40A0  90 03 7A 58 */	stw r0, g_fdinfo@l(r3)  /* 0x81167A58@l */
/* 803A40A4  48 00 1D A1 */	bl mFI_InitRegisterBgInfo
/* 803A40A8  39 61 00 20 */	addi r11, r1, 0x20
/* 803A40AC  4B CF 6E 75 */	bl func_8009AF20
/* 803A40B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A40B4  7C 08 03 A6 */	mtlr r0
/* 803A40B8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A40BC  4E 80 00 20 */	blr 
