lbl_805A6000:
/* 805A6000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6004  7C 08 02 A6 */	mflr r0
/* 805A6008  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A600C  39 61 00 20 */	addi r11, r1, 0x20
/* 805A6010  4B AF 4E BD */	bl func_8009AECC
/* 805A6014  7C 7F 1B 78 */	mr r31, r3
/* 805A6018  3C 60 80 6C */	lis r3, data_806C3FA8@ha /* 0x806C3FA8@ha */
/* 805A601C  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A6020  3B 83 3F A8 */	addi r28, r3, data_806C3FA8@l /* 0x806C3FA8@l */
/* 805A6024  38 7C 00 00 */	addi r3, r28, 0
/* 805A6028  83 DF 01 CC */	lwz r30, 0x1cc(r31)
/* 805A602C  54 00 18 38 */	slwi r0, r0, 3
/* 805A6030  7C 63 02 14 */	add r3, r3, r0
/* 805A6034  AB 63 00 02 */	lha r27, 2(r3)
/* 805A6038  4B FF EE 89 */	bl aGKK_get_uki_type
/* 805A603C  7C 7D 1B 78 */	mr r29, r3
/* 805A6040  38 7F 00 28 */	addi r3, r31, 0x28
/* 805A6044  38 9E 00 28 */	addi r4, r30, 0x28
/* 805A6048  4B E1 50 E9 */	bl search_position_angleY
/* 805A604C  7C 60 1B 78 */	mr r0, r3
/* 805A6050  7F E3 FB 78 */	mr r3, r31
/* 805A6054  7C 04 03 78 */	mr r4, r0
/* 805A6058  4B FF EE B5 */	bl aGKK_set_angle
/* 805A605C  38 7F 00 28 */	addi r3, r31, 0x28
/* 805A6060  38 9E 00 28 */	addi r4, r30, 0x28
/* 805A6064  4B E1 4F 71 */	bl search_position_distance
/* 805A6068  1C 9D 00 14 */	mulli r4, r29, 0x14
/* 805A606C  57 60 10 3A */	slwi r0, r27, 2
/* 805A6070  38 7C 01 F8 */	addi r3, r28, 0x1f8
/* 805A6074  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 805A6078  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 805A607C  7C 04 02 14 */	add r0, r4, r0
/* 805A6080  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A6084  EC 43 10 28 */	fsubs f2, f3, f2
/* 805A6088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A608C  41 81 00 1C */	bgt lbl_805A60A8
/* 805A6090  FC 40 12 10 */	fabs f2, f2
/* 805A6094  3C 60 80 65 */	lis r3, lit_603@ha /* 0x8064A46C@ha */
/* 805A6098  C0 03 A4 6C */	lfs f0, lit_603@l(r3)  /* 0x8064A46C@l */
/* 805A609C  FC 40 10 18 */	frsp f2, f2
/* 805A60A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A60A4  40 81 00 14 */	ble lbl_805A60B8
lbl_805A60A8:
/* 805A60A8  7F E3 FB 78 */	mr r3, r31
/* 805A60AC  38 80 00 04 */	li r4, 4
/* 805A60B0  48 00 0A A9 */	bl aGKK_setupAction
/* 805A60B4  48 00 00 68 */	b lbl_805A611C
lbl_805A60B8:
/* 805A60B8  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A60BC  38 7C 01 B8 */	addi r3, r28, 0x1b8
/* 805A60C0  54 00 10 3A */	slwi r0, r0, 2
/* 805A60C4  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A60C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A60CC  40 80 00 50 */	bge lbl_805A611C
/* 805A60D0  80 1E 02 8C */	lwz r0, 0x28c(r30)
/* 805A60D4  2C 00 00 01 */	cmpwi r0, 1
/* 805A60D8  40 82 00 38 */	bne lbl_805A6110
/* 805A60DC  38 00 00 01 */	li r0, 1
/* 805A60E0  7F E3 FB 78 */	mr r3, r31
/* 805A60E4  90 1E 02 88 */	stw r0, 0x288(r30)
/* 805A60E8  38 80 00 08 */	li r4, 8
/* 805A60EC  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A60F0  90 1E 02 90 */	stw r0, 0x290(r30)
/* 805A60F4  93 FE 01 74 */	stw r31, 0x174(r30)
/* 805A60F8  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A60FC  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 805A6100  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805A6104  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 805A6108  48 00 0A 51 */	bl aGKK_setupAction
/* 805A610C  48 00 00 10 */	b lbl_805A611C
lbl_805A6110:
/* 805A6110  7F E3 FB 78 */	mr r3, r31
/* 805A6114  38 80 00 04 */	li r4, 4
/* 805A6118  48 00 0A 41 */	bl aGKK_setupAction
lbl_805A611C:
/* 805A611C  39 61 00 20 */	addi r11, r1, 0x20
/* 805A6120  4B AF 4D F9 */	bl func_8009AF18
/* 805A6124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A6128  7C 08 03 A6 */	mtlr r0
/* 805A612C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6130  4E 80 00 20 */	blr 
