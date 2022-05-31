lbl_805A3FD8:
/* 805A3FD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A3FDC  7C 08 02 A6 */	mflr r0
/* 805A3FE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A3FE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805A3FE8  4B AF 6E E5 */	bl func_8009AECC
/* 805A3FEC  7C 7F 1B 78 */	mr r31, r3
/* 805A3FF0  3C 60 80 6C */	lis r3, data_806C3C58@ha /* 0x806C3C58@ha */
/* 805A3FF4  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A3FF8  3B 83 3C 58 */	addi r28, r3, data_806C3C58@l /* 0x806C3C58@l */
/* 805A3FFC  38 7C 00 00 */	addi r3, r28, 0
/* 805A4000  83 DF 01 CC */	lwz r30, 0x1cc(r31)
/* 805A4004  54 00 18 38 */	slwi r0, r0, 3
/* 805A4008  7C 63 02 14 */	add r3, r3, r0
/* 805A400C  AB 63 00 02 */	lha r27, 2(r3)
/* 805A4010  4B FF EE C1 */	bl aGYO_get_uki_type
/* 805A4014  7C 7D 1B 78 */	mr r29, r3
/* 805A4018  38 7F 00 28 */	addi r3, r31, 0x28
/* 805A401C  38 9E 00 28 */	addi r4, r30, 0x28
/* 805A4020  4B E1 71 11 */	bl search_position_angleY
/* 805A4024  7C 60 1B 78 */	mr r0, r3
/* 805A4028  7F E3 FB 78 */	mr r3, r31
/* 805A402C  7C 04 03 78 */	mr r4, r0
/* 805A4030  4B FF EE ED */	bl aGTT_set_angle
/* 805A4034  38 7F 00 28 */	addi r3, r31, 0x28
/* 805A4038  38 9E 00 28 */	addi r4, r30, 0x28
/* 805A403C  4B E1 6F 99 */	bl search_position_distance
/* 805A4040  1C 9D 00 14 */	mulli r4, r29, 0x14
/* 805A4044  57 60 10 3A */	slwi r0, r27, 2
/* 805A4048  38 7C 01 F8 */	addi r3, r28, 0x1f8
/* 805A404C  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 805A4050  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 805A4054  7C 04 02 14 */	add r0, r4, r0
/* 805A4058  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A405C  EC 43 10 28 */	fsubs f2, f3, f2
/* 805A4060  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A4064  41 81 00 1C */	bgt lbl_805A4080
/* 805A4068  FC 40 12 10 */	fabs f2, f2
/* 805A406C  3C 60 80 65 */	lis r3, lit_627@ha /* 0x8064A3EC@ha */
/* 805A4070  C0 03 A3 EC */	lfs f0, lit_627@l(r3)  /* 0x8064A3EC@l */
/* 805A4074  FC 40 10 18 */	frsp f2, f2
/* 805A4078  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805A407C  40 81 00 14 */	ble lbl_805A4090
lbl_805A4080:
/* 805A4080  7F E3 FB 78 */	mr r3, r31
/* 805A4084  38 80 00 01 */	li r4, 1
/* 805A4088  48 00 0B BD */	bl aGTT_setupAction
/* 805A408C  48 00 00 68 */	b lbl_805A40F4
lbl_805A4090:
/* 805A4090  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A4094  38 7C 01 B8 */	addi r3, r28, 0x1b8
/* 805A4098  54 00 10 3A */	slwi r0, r0, 2
/* 805A409C  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A40A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A40A4  40 80 00 50 */	bge lbl_805A40F4
/* 805A40A8  80 1E 02 8C */	lwz r0, 0x28c(r30)
/* 805A40AC  2C 00 00 01 */	cmpwi r0, 1
/* 805A40B0  40 82 00 38 */	bne lbl_805A40E8
/* 805A40B4  38 00 00 01 */	li r0, 1
/* 805A40B8  7F E3 FB 78 */	mr r3, r31
/* 805A40BC  90 1E 02 88 */	stw r0, 0x288(r30)
/* 805A40C0  38 80 00 04 */	li r4, 4
/* 805A40C4  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A40C8  90 1E 02 90 */	stw r0, 0x290(r30)
/* 805A40CC  93 FE 01 74 */	stw r31, 0x174(r30)
/* 805A40D0  A8 1F 00 36 */	lha r0, 0x36(r31)
/* 805A40D4  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 805A40D8  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805A40DC  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 805A40E0  48 00 0B 65 */	bl aGTT_setupAction
/* 805A40E4  48 00 00 10 */	b lbl_805A40F4
lbl_805A40E8:
/* 805A40E8  7F E3 FB 78 */	mr r3, r31
/* 805A40EC  38 80 00 01 */	li r4, 1
/* 805A40F0  48 00 0B 55 */	bl aGTT_setupAction
lbl_805A40F4:
/* 805A40F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805A40F8  4B AF 6E 21 */	bl func_8009AF18
/* 805A40FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A4100  7C 08 03 A6 */	mtlr r0
/* 805A4104  38 21 00 20 */	addi r1, r1, 0x20
/* 805A4108  4E 80 00 20 */	blr 
