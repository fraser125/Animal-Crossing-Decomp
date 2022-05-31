lbl_803F2C14:
/* 803F2C14  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803F2C18  7C 08 02 A6 */	mflr r0
/* 803F2C1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 803F2C20  39 61 00 60 */	addi r11, r1, 0x60
/* 803F2C24  4B CA 82 A1 */	bl func_8009AEC4
/* 803F2C28  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F2C2C  7C 79 1B 78 */	mr r25, r3
/* 803F2C30  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803F2C34  7C 9A 23 78 */	mr r26, r4
/* 803F2C38  3F E5 00 03 */	addis r31, r5, 3
/* 803F2C3C  8B DF 88 42 */	lbz r30, -0x77be(r31)
/* 803F2C40  3C 65 00 02 */	addis r3, r5, 2
/* 803F2C44  8B BF 88 44 */	lbz r29, -0x77bc(r31)
/* 803F2C48  8B 9F 88 45 */	lbz r28, -0x77bb(r31)
/* 803F2C4C  83 7F 88 48 */	lwz r27, -0x77b8(r31)
/* 803F2C50  C0 1F 88 4C */	lfs f0, -0x77b4(r31)
/* 803F2C54  88 A3 61 23 */	lbz r5, 0x6123(r3)
/* 803F2C58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803F2C5C  88 1F 88 43 */	lbz r0, -0x77bd(r31)
/* 803F2C60  80 9F 88 50 */	lwz r4, -0x77b0(r31)
/* 803F2C64  80 7F 88 54 */	lwz r3, -0x77ac(r31)
/* 803F2C68  7C 00 28 40 */	cmplw r0, r5
/* 803F2C6C  80 1F 88 58 */	lwz r0, -0x77a8(r31)
/* 803F2C70  90 81 00 2C */	stw r4, 0x2c(r1)
/* 803F2C74  90 61 00 30 */	stw r3, 0x30(r1)
/* 803F2C78  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F2C7C  41 82 00 20 */	beq lbl_803F2C9C
/* 803F2C80  3C 60 00 01 */	lis r3, 0x0001 /* 0x00015180@ha */
/* 803F2C84  38 03 51 80 */	addi r0, r3, 0x5180 /* 0x00015180@l */
/* 803F2C88  7C 1B 00 40 */	cmplw r27, r0
/* 803F2C8C  41 80 00 0C */	blt lbl_803F2C98
/* 803F2C90  3F 7B FF FF */	addis r27, r27, 0xffff
/* 803F2C94  3B 7B AE 80 */	addi r27, r27, -20864
lbl_803F2C98:
/* 803F2C98  98 BF 88 43 */	stb r5, -0x77bd(r31)
lbl_803F2C9C:
/* 803F2C9C  28 1D 00 08 */	cmplwi r29, 8
/* 803F2CA0  41 81 02 28 */	bgt lbl_803F2EC8
/* 803F2CA4  3C 60 80 66 */	lis r3, lit_613@ha /* 0x8065E254@ha */
/* 803F2CA8  57 A0 10 3A */	slwi r0, r29, 2
/* 803F2CAC  38 63 E2 54 */	addi r3, r3, lit_613@l /* 0x8065E254@l */
/* 803F2CB0  7C 03 00 2E */	lwzx r0, r3, r0
/* 803F2CB4  7C 09 03 A6 */	mtctr r0
/* 803F2CB8  4E 80 04 20 */	bctr 
lbl_803F2CBC:
/* 803F2CBC  3C 60 80 64 */	lis r3, lit_605@ha /* 0x806432A4@ha */
/* 803F2CC0  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 803F2CC4  C0 03 32 A4 */	lfs f0, lit_605@l(r3)  /* 0x806432A4@l */
/* 803F2CC8  38 61 00 0C */	addi r3, r1, 0xc
/* 803F2CCC  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 803F2CD0  38 81 00 08 */	addi r4, r1, 8
/* 803F2CD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F2CD8  38 A1 00 20 */	addi r5, r1, 0x20
/* 803F2CDC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803F2CE0  90 E1 00 20 */	stw r7, 0x20(r1)
/* 803F2CE4  90 C1 00 24 */	stw r6, 0x24(r1)
/* 803F2CE8  90 01 00 28 */	stw r0, 0x28(r1)
/* 803F2CEC  4B FB 2A 75 */	bl mFI_Wpos2BlockNum
/* 803F2CF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803F2CF4  2C 00 00 02 */	cmpwi r0, 2
/* 803F2CF8  41 80 01 D0 */	blt lbl_803F2EC8
/* 803F2CFC  3B A0 00 02 */	li r29, 2
/* 803F2D00  48 00 01 C8 */	b lbl_803F2EC8
lbl_803F2D04:
/* 803F2D04  3C 60 80 64 */	lis r3, lit_486@ha /* 0x80643294@ha */
/* 803F2D08  3C 80 80 64 */	lis r4, lit_606@ha /* 0x806432A8@ha */
/* 803F2D0C  38 A3 32 94 */	addi r5, r3, lit_486@l /* 0x80643294@l */
/* 803F2D10  C0 44 32 A8 */	lfs f2, lit_606@l(r4)  /* 0x806432A8@l */
/* 803F2D14  C0 25 00 00 */	lfs f1, 0(r5)
/* 803F2D18  38 61 00 10 */	addi r3, r1, 0x10
/* 803F2D1C  4B FC 7F 4D */	bl chase_f
/* 803F2D20  3C 60 80 64 */	lis r3, lit_607@ha /* 0x806432AC@ha */
/* 803F2D24  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 803F2D28  C0 03 32 AC */	lfs f0, lit_607@l(r3)  /* 0x806432AC@l */
/* 803F2D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F2D30  40 81 01 98 */	ble lbl_803F2EC8
/* 803F2D34  3C 60 80 64 */	lis r3, lit_486@ha /* 0x80643294@ha */
/* 803F2D38  3B A0 00 03 */	li r29, 3
/* 803F2D3C  C0 03 32 94 */	lfs f0, lit_486@l(r3)  /* 0x80643294@l */
/* 803F2D40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803F2D44  48 00 01 84 */	b lbl_803F2EC8
lbl_803F2D48:
/* 803F2D48  3C 60 80 64 */	lis r3, lit_390@ha /* 0x80643268@ha */
/* 803F2D4C  3C 80 80 64 */	lis r4, lit_608@ha /* 0x806432B0@ha */
/* 803F2D50  38 A3 32 68 */	addi r5, r3, lit_390@l /* 0x80643268@l */
/* 803F2D54  C0 44 32 B0 */	lfs f2, lit_608@l(r4)  /* 0x806432B0@l */
/* 803F2D58  C0 25 00 00 */	lfs f1, 0(r5)
/* 803F2D5C  38 61 00 10 */	addi r3, r1, 0x10
/* 803F2D60  4B FC 7F 09 */	bl chase_f
/* 803F2D64  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 803F2D68  3C 60 80 64 */	lis r3, lit_609@ha /* 0x806432B4@ha */
/* 803F2D6C  FC 20 02 10 */	fabs f1, f0
/* 803F2D70  C0 03 32 B4 */	lfs f0, lit_609@l(r3)  /* 0x806432B4@l */
/* 803F2D74  FC 20 08 18 */	frsp f1, f1
/* 803F2D78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F2D7C  40 80 01 4C */	bge lbl_803F2EC8
/* 803F2D80  3C 60 80 64 */	lis r3, lit_390@ha /* 0x80643268@ha */
/* 803F2D84  3B C0 00 01 */	li r30, 1
/* 803F2D88  C0 03 32 68 */	lfs f0, lit_390@l(r3)  /* 0x80643268@l */
/* 803F2D8C  3B 80 00 30 */	li r28, 0x30
/* 803F2D90  3B A0 00 04 */	li r29, 4
/* 803F2D94  3B 40 00 02 */	li r26, 2
/* 803F2D98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803F2D9C  48 00 01 2C */	b lbl_803F2EC8
lbl_803F2DA0:
/* 803F2DA0  28 1C 00 00 */	cmplwi r28, 0
/* 803F2DA4  40 82 00 10 */	bne lbl_803F2DB4
/* 803F2DA8  3B A0 00 05 */	li r29, 5
/* 803F2DAC  3B 7B 01 36 */	addi r27, r27, 0x136
/* 803F2DB0  48 00 01 18 */	b lbl_803F2EC8
lbl_803F2DB4:
/* 803F2DB4  3B 9C FF FF */	addi r28, r28, -1
/* 803F2DB8  48 00 01 10 */	b lbl_803F2EC8
lbl_803F2DBC:
/* 803F2DBC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F2DC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F2DC4  3C 63 00 03 */	addis r3, r3, 3
/* 803F2DC8  88 83 88 40 */	lbz r4, -0x77c0(r3)
/* 803F2DCC  88 03 88 41 */	lbz r0, -0x77bf(r3)
/* 803F2DD0  7C 04 00 40 */	cmplw r4, r0
/* 803F2DD4  41 82 00 18 */	beq lbl_803F2DEC
/* 803F2DD8  98 03 88 40 */	stb r0, -0x77c0(r3)
/* 803F2DDC  38 00 00 00 */	li r0, 0
/* 803F2DE0  3B C0 00 00 */	li r30, 0
/* 803F2DE4  98 1F 88 42 */	stb r0, -0x77be(r31)
/* 803F2DE8  48 00 00 24 */	b lbl_803F2E0C
lbl_803F2DEC:
/* 803F2DEC  28 04 00 00 */	cmplwi r4, 0
/* 803F2DF0  40 82 00 1C */	bne lbl_803F2E0C
/* 803F2DF4  4B FF FA 45 */	bl mTRC_time_check
/* 803F2DF8  2C 03 00 00 */	cmpwi r3, 0
/* 803F2DFC  41 82 00 10 */	beq lbl_803F2E0C
/* 803F2E00  38 00 00 00 */	li r0, 0
/* 803F2E04  3B C0 00 00 */	li r30, 0
/* 803F2E08  98 1F 88 42 */	stb r0, -0x77be(r31)
lbl_803F2E0C:
/* 803F2E0C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 803F2E10  40 82 00 B8 */	bne lbl_803F2EC8
/* 803F2E14  3B 80 00 54 */	li r28, 0x54
/* 803F2E18  3B A0 00 06 */	li r29, 6
/* 803F2E1C  48 00 00 AC */	b lbl_803F2EC8
lbl_803F2E20:
/* 803F2E20  28 1C 00 00 */	cmplwi r28, 0
/* 803F2E24  40 82 00 14 */	bne lbl_803F2E38
/* 803F2E28  3B 80 00 B4 */	li r28, 0xb4
/* 803F2E2C  3B A0 00 07 */	li r29, 7
/* 803F2E30  3B 40 00 03 */	li r26, 3
/* 803F2E34  48 00 00 94 */	b lbl_803F2EC8
lbl_803F2E38:
/* 803F2E38  3B 9C FF FF */	addi r28, r28, -1
/* 803F2E3C  48 00 00 8C */	b lbl_803F2EC8
lbl_803F2E40:
/* 803F2E40  3C 60 80 64 */	lis r3, lit_486@ha /* 0x80643294@ha */
/* 803F2E44  3C 80 80 64 */	lis r4, lit_610@ha /* 0x806432B8@ha */
/* 803F2E48  38 A3 32 94 */	addi r5, r3, lit_486@l /* 0x80643294@l */
/* 803F2E4C  C0 44 32 B8 */	lfs f2, lit_610@l(r4)  /* 0x806432B8@l */
/* 803F2E50  C0 25 00 00 */	lfs f1, 0(r5)
/* 803F2E54  38 61 00 10 */	addi r3, r1, 0x10
/* 803F2E58  4B FC 7E 11 */	bl chase_f
/* 803F2E5C  28 1C 00 00 */	cmplwi r28, 0
/* 803F2E60  40 82 00 0C */	bne lbl_803F2E6C
/* 803F2E64  3B A0 00 08 */	li r29, 8
/* 803F2E68  48 00 00 60 */	b lbl_803F2EC8
lbl_803F2E6C:
/* 803F2E6C  3B 9C FF FF */	addi r28, r28, -1
/* 803F2E70  48 00 00 58 */	b lbl_803F2EC8
lbl_803F2E74:
/* 803F2E74  3C 60 80 64 */	lis r3, lit_605@ha /* 0x806432A4@ha */
/* 803F2E78  3C 80 80 64 */	lis r4, lit_610@ha /* 0x806432B8@ha */
/* 803F2E7C  38 A3 32 A4 */	addi r5, r3, lit_605@l /* 0x806432A4@l */
/* 803F2E80  C0 44 32 B8 */	lfs f2, lit_610@l(r4)  /* 0x806432B8@l */
/* 803F2E84  C0 25 00 00 */	lfs f1, 0(r5)
/* 803F2E88  38 61 00 10 */	addi r3, r1, 0x10
/* 803F2E8C  4B FC 7D DD */	bl chase_f
/* 803F2E90  3C 60 80 64 */	lis r3, lit_611@ha /* 0x806432BC@ha */
/* 803F2E94  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 803F2E98  C0 03 32 BC */	lfs f0, lit_611@l(r3)  /* 0x806432BC@l */
/* 803F2E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803F2EA0  40 81 00 28 */	ble lbl_803F2EC8
/* 803F2EA4  4B FF F9 2D */	bl mTRC_get_depart_time
/* 803F2EA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F2EAC  38 00 00 00 */	li r0, 0
/* 803F2EB0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F2EB4  7C 7B 1B 78 */	mr r27, r3
/* 803F2EB8  3C 84 00 02 */	addis r4, r4, 2
/* 803F2EBC  3B A0 00 00 */	li r29, 0
/* 803F2EC0  98 04 65 23 */	stb r0, 0x6523(r4)
/* 803F2EC4  3B 40 00 04 */	li r26, 4
lbl_803F2EC8:
/* 803F2EC8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 803F2ECC  41 82 00 7C */	beq lbl_803F2F48
/* 803F2ED0  38 79 1D A8 */	addi r3, r25, 0x1da8
/* 803F2ED4  38 80 58 0A */	li r4, 0x580a
/* 803F2ED8  38 A0 00 01 */	li r5, 1
/* 803F2EDC  4B F8 2E 65 */	bl Actor_info_fgName_search
/* 803F2EE0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F2EE4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F2EE8  3C 84 00 02 */	addis r4, r4, 2
/* 803F2EEC  88 04 65 23 */	lbz r0, 0x6523(r4)
/* 803F2EF0  28 00 00 00 */	cmplwi r0, 0
/* 803F2EF4  40 82 00 14 */	bne lbl_803F2F08
/* 803F2EF8  28 03 00 00 */	cmplwi r3, 0
/* 803F2EFC  40 82 00 0C */	bne lbl_803F2F08
/* 803F2F00  38 00 00 01 */	li r0, 1
/* 803F2F04  98 04 65 23 */	stb r0, 0x6523(r4)
lbl_803F2F08:
/* 803F2F08  3C 60 80 64 */	lis r3, lit_612@ha /* 0x806432C0@ha */
/* 803F2F0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F2F10  C0 03 32 C0 */	lfs f0, lit_612@l(r3)  /* 0x806432C0@l */
/* 803F2F14  7F 23 CB 78 */	mr r3, r25
/* 803F2F18  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 803F2F1C  80 81 00 30 */	lwz r4, 0x30(r1)
/* 803F2F20  EC 00 00 72 */	fmuls f0, f0, f1
/* 803F2F24  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 803F2F28  90 81 00 18 */	stw r4, 0x18(r1)
/* 803F2F2C  38 81 00 14 */	addi r4, r1, 0x14
/* 803F2F30  EC 02 00 2A */	fadds f0, f2, f0
/* 803F2F34  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F2F38  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 803F2F3C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803F2F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F2F44  4B FF F5 0D */	bl mTRC_KishaStatusLevel
lbl_803F2F48:
/* 803F2F48  2C 1A 00 00 */	cmpwi r26, 0
/* 803F2F4C  41 80 00 0C */	blt lbl_803F2F58
/* 803F2F50  57 43 06 3E */	clrlwi r3, r26, 0x18
/* 803F2F54  4B FF F7 3D */	bl mTRC_KishaStatusTrg
lbl_803F2F58:
/* 803F2F58  9B DF 88 42 */	stb r30, -0x77be(r31)
/* 803F2F5C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 803F2F60  9B BF 88 44 */	stb r29, -0x77bc(r31)
/* 803F2F64  80 61 00 30 */	lwz r3, 0x30(r1)
/* 803F2F68  9B 9F 88 45 */	stb r28, -0x77bb(r31)
/* 803F2F6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F2F70  93 7F 88 48 */	stw r27, -0x77b8(r31)
/* 803F2F74  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 803F2F78  D0 1F 88 4C */	stfs f0, -0x77b4(r31)
/* 803F2F7C  90 9F 88 50 */	stw r4, -0x77b0(r31)
/* 803F2F80  90 7F 88 54 */	stw r3, -0x77ac(r31)
/* 803F2F84  90 1F 88 58 */	stw r0, -0x77a8(r31)
/* 803F2F88  39 61 00 60 */	addi r11, r1, 0x60
/* 803F2F8C  4B CA 7F 85 */	bl func_8009AF10
/* 803F2F90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803F2F94  7C 08 03 A6 */	mtlr r0
/* 803F2F98  38 21 00 60 */	addi r1, r1, 0x60
/* 803F2F9C  4E 80 00 20 */	blr 
