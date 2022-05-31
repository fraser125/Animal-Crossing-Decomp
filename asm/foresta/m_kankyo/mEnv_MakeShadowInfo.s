lbl_803B6C1C:
/* 803B6C1C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803B6C20  7C 08 02 A6 */	mflr r0
/* 803B6C24  90 01 00 64 */	stw r0, 0x64(r1)
/* 803B6C28  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803B6C2C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 803B6C30  39 61 00 50 */	addi r11, r1, 0x50
/* 803B6C34  4B CE 42 A1 */	bl func_8009AED4
/* 803B6C38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B6C3C  7C 7D 1B 78 */	mr r29, r3
/* 803B6C40  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803B6C44  3B C0 00 00 */	li r30, 0
/* 803B6C48  3C 83 00 02 */	addis r4, r3, 2
/* 803B6C4C  88 04 61 21 */	lbz r0, 0x6121(r4)
/* 803B6C50  88 64 61 22 */	lbz r3, 0x6122(r4)
/* 803B6C54  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 803B6C58  88 84 61 20 */	lbz r4, 0x6120(r4)
/* 803B6C5C  1C 63 0E 10 */	mulli r3, r3, 0xe10
/* 803B6C60  7F E0 22 14 */	add r31, r0, r4
/* 803B6C64  7F E3 FA 14 */	add r31, r3, r31
/* 803B6C68  48 03 04 45 */	bl mRmTp_GetNowSceneLightSwitchIndex
/* 803B6C6C  2C 1F 54 60 */	cmpwi r31, 0x5460
/* 803B6C70  40 81 00 20 */	ble lbl_803B6C90
/* 803B6C74  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 803B6C78  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 803B6C7C  7C 1F 00 00 */	cmpw r31, r0
/* 803B6C80  40 80 00 10 */	bge lbl_803B6C90
/* 803B6C84  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B6C88  C3 E3 24 4C */	lfs f31, lit_545@l(r3)  /* 0x8064244C@l */
/* 803B6C8C  48 00 01 10 */	b lbl_803B6D9C
lbl_803B6C90:
/* 803B6C90  2C 1F 38 22 */	cmpwi r31, 0x3822
/* 803B6C94  41 80 00 14 */	blt lbl_803B6CA8
/* 803B6C98  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011943@ha */
/* 803B6C9C  38 03 19 43 */	addi r0, r3, 0x1943 /* 0x00011943@l */
/* 803B6CA0  7C 1F 00 00 */	cmpw r31, r0
/* 803B6CA4  40 81 00 10 */	ble lbl_803B6CB4
lbl_803B6CA8:
/* 803B6CA8  3C 60 80 64 */	lis r3, lit_589@ha /* 0x80642454@ha */
/* 803B6CAC  C3 E3 24 54 */	lfs f31, lit_589@l(r3)  /* 0x80642454@l */
/* 803B6CB0  48 00 00 EC */	b lbl_803B6D9C
lbl_803B6CB4:
/* 803B6CB4  2C 1F 38 43 */	cmpwi r31, 0x3843
/* 803B6CB8  41 80 00 5C */	blt lbl_803B6D14
/* 803B6CBC  2C 1F 54 60 */	cmpwi r31, 0x5460
/* 803B6CC0  41 81 00 54 */	bgt lbl_803B6D14
/* 803B6CC4  38 7F C7 BD */	addi r3, r31, -14403
/* 803B6CC8  3C 00 43 30 */	lis r0, 0x4330
/* 803B6CCC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803B6CD0  3C 80 80 64 */	lis r4, lit_471@ha /* 0x806423EC@ha */
/* 803B6CD4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 803B6CD8  3C 60 80 64 */	lis r3, lit_1018@ha /* 0x806424A4@ha */
/* 803B6CDC  C8 44 23 EC */	lfd f2, lit_471@l(r4)  /* 0x806423EC@l */
/* 803B6CE0  3C A0 80 64 */	lis r5, lit_590@ha /* 0x80642458@ha */
/* 803B6CE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 803B6CE8  38 85 24 58 */	addi r4, r5, lit_590@l /* 0x80642458@l */
/* 803B6CEC  3C A0 80 64 */	lis r5, lit_589@ha /* 0x80642454@ha */
/* 803B6CF0  C0 03 24 A4 */	lfs f0, lit_1018@l(r3)  /* 0x806424A4@l */
/* 803B6CF4  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 803B6CF8  C0 65 24 54 */	lfs f3, lit_589@l(r5)  /* 0x80642454@l */
/* 803B6CFC  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B6D00  C0 44 00 00 */	lfs f2, 0(r4)
/* 803B6D04  EC 01 00 24 */	fdivs f0, f1, f0
/* 803B6D08  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B6D0C  EF E3 00 2A */	fadds f31, f3, f0
/* 803B6D10  48 00 00 8C */	b lbl_803B6D9C
lbl_803B6D14:
/* 803B6D14  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 803B6D18  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 803B6D1C  7C 1F 00 00 */	cmpw r31, r0
/* 803B6D20  41 80 00 70 */	blt lbl_803B6D90
/* 803B6D24  38 03 19 22 */	addi r0, r3, 0x1922
/* 803B6D28  7C 1F 00 00 */	cmpw r31, r0
/* 803B6D2C  41 81 00 64 */	bgt lbl_803B6D90
/* 803B6D30  3C 7F FF FF */	addis r3, r31, 0xffff
/* 803B6D34  3C 00 43 30 */	lis r0, 0x4330
/* 803B6D38  38 63 02 E0 */	addi r3, r3, 0x2e0
/* 803B6D3C  3C A0 80 64 */	lis r5, lit_471@ha /* 0x806423EC@ha */
/* 803B6D40  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 803B6D44  90 01 00 18 */	stw r0, 0x18(r1)
/* 803B6D48  3C 60 80 64 */	lis r3, lit_1019@ha /* 0x806424A8@ha */
/* 803B6D4C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 803B6D50  38 85 23 EC */	addi r4, r5, lit_471@l /* 0x806423EC@l */
/* 803B6D54  C8 44 00 00 */	lfd f2, 0(r4)
/* 803B6D58  3C 80 80 64 */	lis r4, lit_590@ha /* 0x80642458@ha */
/* 803B6D5C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 803B6D60  3C A0 80 64 */	lis r5, lit_545@ha /* 0x8064244C@ha */
/* 803B6D64  C0 03 24 A8 */	lfs f0, lit_1019@l(r3)  /* 0x806424A8@l */
/* 803B6D68  3C 60 80 64 */	lis r3, lit_589@ha /* 0x80642454@ha */
/* 803B6D6C  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B6D70  C0 45 24 4C */	lfs f2, lit_545@l(r5)  /* 0x8064244C@l */
/* 803B6D74  C0 64 24 58 */	lfs f3, lit_590@l(r4)  /* 0x80642458@l */
/* 803B6D78  EC 01 00 24 */	fdivs f0, f1, f0
/* 803B6D7C  C0 23 24 54 */	lfs f1, lit_589@l(r3)  /* 0x80642454@l */
/* 803B6D80  EC 02 00 28 */	fsubs f0, f2, f0
/* 803B6D84  EC 03 00 32 */	fmuls f0, f3, f0
/* 803B6D88  EF E1 00 2A */	fadds f31, f1, f0
/* 803B6D8C  48 00 00 10 */	b lbl_803B6D9C
lbl_803B6D90:
/* 803B6D90  3C 60 80 64 */	lis r3, lit_589@ha /* 0x80642454@ha */
/* 803B6D94  3B C0 00 01 */	li r30, 1
/* 803B6D98  C3 E3 24 54 */	lfs f31, lit_589@l(r3)  /* 0x80642454@l */
lbl_803B6D9C:
/* 803B6D9C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 803B6DA0  28 00 00 01 */	cmplwi r0, 1
/* 803B6DA4  40 82 01 8C */	bne lbl_803B6F30
/* 803B6DA8  2C 1F 38 3B */	cmpwi r31, 0x383b
/* 803B6DAC  40 81 00 0C */	ble lbl_803B6DB8
/* 803B6DB0  2C 1F 38 43 */	cmpwi r31, 0x3843
/* 803B6DB4  41 80 00 20 */	blt lbl_803B6DD4
lbl_803B6DB8:
/* 803B6DB8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001193B@ha */
/* 803B6DBC  38 03 19 3B */	addi r0, r3, 0x193B /* 0x0001193B@l */
/* 803B6DC0  7C 1F 00 00 */	cmpw r31, r0
/* 803B6DC4  40 81 00 B4 */	ble lbl_803B6E78
/* 803B6DC8  38 03 19 43 */	addi r0, r3, 0x1943
/* 803B6DCC  7C 1F 00 00 */	cmpw r31, r0
/* 803B6DD0  40 80 00 A8 */	bge lbl_803B6E78
lbl_803B6DD4:
/* 803B6DD4  3C 80 80 64 */	lis r4, lit_1020@ha /* 0x806424AC@ha */
/* 803B6DD8  3C 60 80 64 */	lis r3, lit_1021@ha /* 0x806424B4@ha */
/* 803B6DDC  38 A4 24 AC */	addi r5, r4, lit_1020@l /* 0x806424AC@l */
/* 803B6DE0  C9 05 00 00 */	lfd f8, 0(r5)
/* 803B6DE4  38 C3 24 B4 */	addi r6, r3, lit_1021@l /* 0x806424B4@l */
/* 803B6DE8  C8 E5 00 00 */	lfd f7, 0(r5)
/* 803B6DEC  3C 60 80 64 */	lis r3, lit_1022@ha /* 0x806424BC@ha */
/* 803B6DF0  FC 00 40 34 */	frsqrte f0, f8
/* 803B6DF4  C0 63 24 BC */	lfs f3, lit_1022@l(r3)  /* 0x806424BC@l */
/* 803B6DF8  3C A0 80 64 */	lis r5, lit_544@ha /* 0x80642448@ha */
/* 803B6DFC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 803B6E00  38 65 24 48 */	addi r3, r5, lit_544@l /* 0x80642448@l */
/* 803B6E04  3C 80 80 64 */	lis r4, lit_545@ha /* 0x8064244C@ha */
/* 803B6E08  FC 20 00 32 */	fmul f1, f0, f0
/* 803B6E0C  3C A0 81 17 */	lis r5, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6E10  38 A5 9B A0 */	addi r5, r5, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6E14  FC A7 00 32 */	fmul f5, f7, f0
/* 803B6E18  C0 04 24 4C */	lfs f0, lit_545@l(r4)  /* 0x8064244C@l */
/* 803B6E1C  FC 48 00 72 */	fmul f2, f8, f1
/* 803B6E20  C0 23 00 00 */	lfs f1, 0(r3)
/* 803B6E24  38 65 00 30 */	addi r3, r5, 0x30
/* 803B6E28  FC 80 18 90 */	fmr f4, f3
/* 803B6E2C  FC 46 10 28 */	fsub f2, f6, f2
/* 803B6E30  FC A5 00 B2 */	fmul f5, f5, f2
/* 803B6E34  FC 45 01 72 */	fmul f2, f5, f5
/* 803B6E38  FC A7 01 72 */	fmul f5, f7, f5
/* 803B6E3C  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B6E40  FC 46 10 28 */	fsub f2, f6, f2
/* 803B6E44  FC A5 00 B2 */	fmul f5, f5, f2
/* 803B6E48  FC 45 01 72 */	fmul f2, f5, f5
/* 803B6E4C  FC A7 01 72 */	fmul f5, f7, f5
/* 803B6E50  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B6E54  FC 46 10 28 */	fsub f2, f6, f2
/* 803B6E58  FC 45 00 B2 */	fmul f2, f5, f2
/* 803B6E5C  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B6E60  FC 40 10 18 */	frsp f2, f2
/* 803B6E64  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 803B6E68  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 803B6E6C  EC 40 10 28 */	fsubs f2, f0, f2
/* 803B6E70  48 00 43 41 */	bl add_calc
/* 803B6E74  48 00 01 64 */	b lbl_803B6FD8
lbl_803B6E78:
/* 803B6E78  3C 60 80 64 */	lis r3, lit_1023@ha /* 0x806424C4@ha */
/* 803B6E7C  3C 80 80 64 */	lis r4, lit_1020@ha /* 0x806424AC@ha */
/* 803B6E80  38 A3 24 C4 */	addi r5, r3, lit_1023@l /* 0x806424C4@l */
/* 803B6E84  C8 E4 24 AC */	lfd f7, lit_1020@l(r4)  /* 0x806424AC@l */
/* 803B6E88  C9 05 00 00 */	lfd f8, 0(r5)
/* 803B6E8C  3C 60 80 64 */	lis r3, lit_1021@ha /* 0x806424B4@ha */
/* 803B6E90  39 03 24 B4 */	addi r8, r3, lit_1021@l /* 0x806424B4@l */
/* 803B6E94  3C A0 80 64 */	lis r5, lit_544@ha /* 0x80642448@ha */
/* 803B6E98  FC 20 40 34 */	frsqrte f1, f8
/* 803B6E9C  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B6EA0  38 C3 24 4C */	addi r6, r3, lit_545@l /* 0x8064244C@l */
/* 803B6EA4  C8 C8 00 00 */	lfd f6, 0(r8)
/* 803B6EA8  3C 80 80 64 */	lis r4, lit_1024@ha /* 0x806424CC@ha */
/* 803B6EAC  38 E5 24 48 */	addi r7, r5, lit_544@l /* 0x80642448@l */
/* 803B6EB0  FC 01 00 72 */	fmul f0, f1, f1
/* 803B6EB4  38 A4 24 CC */	addi r5, r4, lit_1024@l /* 0x806424CC@l */
/* 803B6EB8  3C 60 80 64 */	lis r3, lit_1025@ha /* 0x806424D0@ha */
/* 803B6EBC  C0 65 00 00 */	lfs f3, 0(r5)
/* 803B6EC0  38 83 24 D0 */	addi r4, r3, lit_1025@l /* 0x806424D0@l */
/* 803B6EC4  FC A7 00 72 */	fmul f5, f7, f1
/* 803B6EC8  FC 48 00 32 */	fmul f2, f8, f0
/* 803B6ECC  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6ED0  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6ED4  C0 06 00 00 */	lfs f0, 0(r6)
/* 803B6ED8  C0 27 00 00 */	lfs f1, 0(r7)
/* 803B6EDC  38 63 00 30 */	addi r3, r3, 0x30
/* 803B6EE0  FC 46 10 28 */	fsub f2, f6, f2
/* 803B6EE4  C0 84 00 00 */	lfs f4, 0(r4)
/* 803B6EE8  FC A5 00 B2 */	fmul f5, f5, f2
/* 803B6EEC  FC 45 01 72 */	fmul f2, f5, f5
/* 803B6EF0  FC A7 01 72 */	fmul f5, f7, f5
/* 803B6EF4  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B6EF8  FC 46 10 28 */	fsub f2, f6, f2
/* 803B6EFC  FC A5 00 B2 */	fmul f5, f5, f2
/* 803B6F00  FC 45 01 72 */	fmul f2, f5, f5
/* 803B6F04  FC A7 01 72 */	fmul f5, f7, f5
/* 803B6F08  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B6F0C  FC 46 10 28 */	fsub f2, f6, f2
/* 803B6F10  FC 45 00 B2 */	fmul f2, f5, f2
/* 803B6F14  FC 48 00 B2 */	fmul f2, f8, f2
/* 803B6F18  FC 40 10 18 */	frsp f2, f2
/* 803B6F1C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 803B6F20  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 803B6F24  EC 40 10 28 */	fsubs f2, f0, f2
/* 803B6F28  48 00 42 89 */	bl add_calc
/* 803B6F2C  48 00 00 AC */	b lbl_803B6FD8
lbl_803B6F30:
/* 803B6F30  3C 60 80 64 */	lis r3, lit_1023@ha /* 0x806424C4@ha */
/* 803B6F34  3C 80 80 64 */	lis r4, lit_1020@ha /* 0x806424AC@ha */
/* 803B6F38  38 A3 24 C4 */	addi r5, r3, lit_1023@l /* 0x806424C4@l */
/* 803B6F3C  C8 C4 24 AC */	lfd f6, lit_1020@l(r4)  /* 0x806424AC@l */
/* 803B6F40  C8 E5 00 00 */	lfd f7, 0(r5)
/* 803B6F44  3C 60 80 64 */	lis r3, lit_1021@ha /* 0x806424B4@ha */
/* 803B6F48  39 03 24 B4 */	addi r8, r3, lit_1021@l /* 0x806424B4@l */
/* 803B6F4C  3C 80 80 64 */	lis r4, lit_1026@ha /* 0x806424D4@ha */
/* 803B6F50  FC 20 38 34 */	frsqrte f1, f7
/* 803B6F54  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B6F58  38 C3 24 4C */	addi r6, r3, lit_545@l /* 0x8064244C@l */
/* 803B6F5C  38 A4 24 D4 */	addi r5, r4, lit_1026@l /* 0x806424D4@l */
/* 803B6F60  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806424D8@ha */
/* 803B6F64  C8 A8 00 00 */	lfd f5, 0(r8)
/* 803B6F68  FC 01 00 72 */	fmul f0, f1, f1
/* 803B6F6C  38 83 24 D8 */	addi r4, r3, lit_1027@l /* 0x806424D8@l */
/* 803B6F70  3C E0 81 17 */	lis r7, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6F74  C0 65 00 00 */	lfs f3, 0(r5)
/* 803B6F78  FC 46 00 72 */	fmul f2, f6, f1
/* 803B6F7C  38 67 9B A0 */	addi r3, r7, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6F80  FC 07 00 32 */	fmul f0, f7, f0
/* 803B6F84  C0 26 00 00 */	lfs f1, 0(r6)
/* 803B6F88  C0 84 00 00 */	lfs f4, 0(r4)
/* 803B6F8C  38 63 00 30 */	addi r3, r3, 0x30
/* 803B6F90  FC 05 00 28 */	fsub f0, f5, f0
/* 803B6F94  FC 42 00 32 */	fmul f2, f2, f0
/* 803B6F98  FC 02 00 B2 */	fmul f0, f2, f2
/* 803B6F9C  FC 46 00 B2 */	fmul f2, f6, f2
/* 803B6FA0  FC 07 00 32 */	fmul f0, f7, f0
/* 803B6FA4  FC 05 00 28 */	fsub f0, f5, f0
/* 803B6FA8  FC 42 00 32 */	fmul f2, f2, f0
/* 803B6FAC  FC 02 00 B2 */	fmul f0, f2, f2
/* 803B6FB0  FC 46 00 B2 */	fmul f2, f6, f2
/* 803B6FB4  FC 07 00 32 */	fmul f0, f7, f0
/* 803B6FB8  FC 05 00 28 */	fsub f0, f5, f0
/* 803B6FBC  FC 02 00 32 */	fmul f0, f2, f0
/* 803B6FC0  FC 07 00 32 */	fmul f0, f7, f0
/* 803B6FC4  FC 00 00 18 */	frsp f0, f0
/* 803B6FC8  D0 01 00 08 */	stfs f0, 8(r1)
/* 803B6FCC  C0 01 00 08 */	lfs f0, 8(r1)
/* 803B6FD0  EC 41 00 28 */	fsubs f2, f1, f0
/* 803B6FD4  48 00 41 DD */	bl add_calc
lbl_803B6FD8:
/* 803B6FD8  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B6FDC  38 00 00 00 */	li r0, 0
/* 803B6FE0  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B6FE4  A8 63 00 0A */	lha r3, 0xa(r3)
/* 803B6FE8  2C 03 00 01 */	cmpwi r3, 1
/* 803B6FEC  41 82 00 0C */	beq lbl_803B6FF8
/* 803B6FF0  2C 03 00 02 */	cmpwi r3, 2
/* 803B6FF4  40 82 00 08 */	bne lbl_803B6FFC
lbl_803B6FF8:
/* 803B6FF8  38 00 00 01 */	li r0, 1
lbl_803B6FFC:
/* 803B6FFC  2C 00 00 00 */	cmpwi r0, 0
/* 803B7000  41 82 00 10 */	beq lbl_803B7010
/* 803B7004  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806424DC@ha */
/* 803B7008  C0 83 24 DC */	lfs f4, lit_1028@l(r3)  /* 0x806424DC@l */
/* 803B700C  48 00 00 0C */	b lbl_803B7018
lbl_803B7010:
/* 803B7010  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B7014  C0 83 24 4C */	lfs f4, lit_545@l(r3)  /* 0x8064244C@l */
lbl_803B7018:
/* 803B7018  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B701C  38 00 00 00 */	li r0, 0
/* 803B7020  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7024  A8 63 00 0C */	lha r3, 0xc(r3)
/* 803B7028  2C 03 00 01 */	cmpwi r3, 1
/* 803B702C  41 82 00 0C */	beq lbl_803B7038
/* 803B7030  2C 03 00 02 */	cmpwi r3, 2
/* 803B7034  40 82 00 08 */	bne lbl_803B703C
lbl_803B7038:
/* 803B7038  38 00 00 01 */	li r0, 1
lbl_803B703C:
/* 803B703C  2C 00 00 00 */	cmpwi r0, 0
/* 803B7040  41 82 00 10 */	beq lbl_803B7050
/* 803B7044  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806424DC@ha */
/* 803B7048  C0 03 24 DC */	lfs f0, lit_1028@l(r3)  /* 0x806424DC@l */
/* 803B704C  48 00 00 0C */	b lbl_803B7058
lbl_803B7050:
/* 803B7050  3C 60 80 64 */	lis r3, lit_545@ha /* 0x8064244C@ha */
/* 803B7054  C0 03 24 4C */	lfs f0, lit_545@l(r3)  /* 0x8064244C@l */
lbl_803B7058:
/* 803B7058  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B705C  3C 60 80 64 */	lis r3, lit_1029@ha /* 0x806424E0@ha */
/* 803B7060  38 A4 9B A0 */	addi r5, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B7064  EC 00 20 28 */	fsubs f0, f0, f4
/* 803B7068  C0 45 00 10 */	lfs f2, 0x10(r5)
/* 803B706C  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806424DC@ha */
/* 803B7070  C0 23 24 E0 */	lfs f1, lit_1029@l(r3)  /* 0x806424E0@l */
/* 803B7074  EC 62 00 32 */	fmuls f3, f2, f0
/* 803B7078  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 803B707C  C0 44 24 DC */	lfs f2, lit_1028@l(r4)  /* 0x806424DC@l */
/* 803B7080  EC 84 18 2A */	fadds f4, f4, f3
/* 803B7084  C0 65 00 28 */	lfs f3, 0x28(r5)
/* 803B7088  EF FF 01 32 */	fmuls f31, f31, f4
/* 803B708C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 803B7090  EC 01 00 32 */	fmuls f0, f1, f0
/* 803B7094  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B7098  EC 03 00 32 */	fmuls f0, f3, f0
/* 803B709C  FC 00 00 1E */	fctiwz f0, f0
/* 803B70A0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803B70A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803B70A8  98 1D 00 C4 */	stb r0, 0xc4(r29)
/* 803B70AC  A8 65 00 9A */	lha r3, 0x9a(r5)
/* 803B70B0  7C 60 07 35 */	extsh. r0, r3
/* 803B70B4  41 82 00 0C */	beq lbl_803B70C0
/* 803B70B8  98 7D 00 C4 */	stb r3, 0xc4(r29)
/* 803B70BC  48 00 00 84 */	b lbl_803B7140
lbl_803B70C0:
/* 803B70C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B70C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B70C8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803B70CC  2C 00 00 07 */	cmpwi r0, 7
/* 803B70D0  41 82 00 70 */	beq lbl_803B7140
/* 803B70D4  2C 00 00 26 */	cmpwi r0, 0x26
/* 803B70D8  41 82 00 68 */	beq lbl_803B7140
/* 803B70DC  88 05 00 A0 */	lbz r0, 0xa0(r5)
/* 803B70E0  3C 60 43 30 */	lis r3, 0x4330
/* 803B70E4  88 DD 00 C4 */	lbz r6, 0xc4(r29)
/* 803B70E8  3C 80 80 64 */	lis r4, lit_1033@ha /* 0x806424EC@ha */
/* 803B70EC  90 61 00 20 */	stw r3, 0x20(r1)
/* 803B70F0  C8 64 24 EC */	lfd f3, lit_1033@l(r4)  /* 0x806424EC@l */
/* 803B70F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B70F8  C0 45 00 00 */	lfs f2, 0(r5)
/* 803B70FC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 803B7100  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 803B7104  EC 20 18 28 */	fsubs f1, f0, f3
/* 803B7108  90 61 00 28 */	stw r3, 0x28(r1)
/* 803B710C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803B7110  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 803B7114  EC 00 18 28 */	fsubs f0, f0, f3
/* 803B7118  90 61 00 18 */	stw r3, 0x18(r1)
/* 803B711C  EC 01 00 28 */	fsubs f0, f1, f0
/* 803B7120  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 803B7124  EC 21 18 28 */	fsubs f1, f1, f3
/* 803B7128  EC 02 00 32 */	fmuls f0, f2, f0
/* 803B712C  EC 01 00 2A */	fadds f0, f1, f0
/* 803B7130  FC 00 00 1E */	fctiwz f0, f0
/* 803B7134  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803B7138  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803B713C  98 1D 00 C4 */	stb r0, 0xc4(r29)
lbl_803B7140:
/* 803B7140  2C 1F 38 40 */	cmpwi r31, 0x3840
/* 803B7144  41 80 00 48 */	blt lbl_803B718C
/* 803B7148  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 803B714C  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 803B7150  7C 1F 00 00 */	cmpw r31, r0
/* 803B7154  41 81 00 38 */	bgt lbl_803B718C
/* 803B7158  38 7F C7 C0 */	addi r3, r31, -14400
/* 803B715C  3C 00 43 30 */	lis r0, 0x4330
/* 803B7160  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803B7164  3C 80 80 64 */	lis r4, lit_471@ha /* 0x806423EC@ha */
/* 803B7168  90 61 00 34 */	stw r3, 0x34(r1)
/* 803B716C  3C 60 80 64 */	lis r3, lit_1030@ha /* 0x806424E4@ha */
/* 803B7170  C8 44 23 EC */	lfd f2, lit_471@l(r4)  /* 0x806423EC@l */
/* 803B7174  90 01 00 30 */	stw r0, 0x30(r1)
/* 803B7178  C0 03 24 E4 */	lfs f0, lit_1030@l(r3)  /* 0x806424E4@l */
/* 803B717C  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 803B7180  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B7184  EC 41 00 24 */	fdivs f2, f1, f0
/* 803B7188  48 00 00 50 */	b lbl_803B71D8
lbl_803B718C:
/* 803B718C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 803B7190  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 803B7194  7C 1F 00 00 */	cmpw r31, r0
/* 803B7198  40 80 00 0C */	bge lbl_803B71A4
/* 803B719C  3F FF 00 01 */	addis r31, r31, 1
/* 803B71A0  3B FF 51 80 */	addi r31, r31, 0x5180
lbl_803B71A4:
/* 803B71A4  3C 7F FF FF */	addis r3, r31, 0xffff
/* 803B71A8  3C 00 43 30 */	lis r0, 0x4330
/* 803B71AC  38 63 E6 C0 */	addi r3, r3, -6464
/* 803B71B0  3C A0 80 64 */	lis r5, lit_471@ha /* 0x806423EC@ha */
/* 803B71B4  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 803B71B8  90 01 00 30 */	stw r0, 0x30(r1)
/* 803B71BC  3C 60 80 64 */	lis r3, lit_1031@ha /* 0x806424E8@ha */
/* 803B71C0  C8 45 23 EC */	lfd f2, lit_471@l(r5)  /* 0x806423EC@l */
/* 803B71C4  90 81 00 34 */	stw r4, 0x34(r1)
/* 803B71C8  C0 03 24 E8 */	lfs f0, lit_1031@l(r3)  /* 0x806424E8@l */
/* 803B71CC  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 803B71D0  EC 21 10 28 */	fsubs f1, f1, f2
/* 803B71D4  EC 41 00 24 */	fdivs f2, f1, f0
lbl_803B71D8:
/* 803B71D8  3C 80 80 64 */	lis r4, lit_711@ha /* 0x80642474@ha */
/* 803B71DC  3C 60 80 64 */	lis r3, lit_588@ha /* 0x80642450@ha */
/* 803B71E0  C0 24 24 74 */	lfs f1, lit_711@l(r4)  /* 0x80642474@l */
/* 803B71E4  C0 03 24 50 */	lfs f0, lit_588@l(r3)  /* 0x80642450@l */
/* 803B71E8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 803B71EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 803B71F0  D0 1D 00 C0 */	stfs f0, 0xc0(r29)
/* 803B71F4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 803B71F8  39 61 00 50 */	addi r11, r1, 0x50
/* 803B71FC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803B7200  4B CE 3D 21 */	bl func_8009AF20
/* 803B7204  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803B7208  7C 08 03 A6 */	mtlr r0
/* 803B720C  38 21 00 60 */	addi r1, r1, 0x60
/* 803B7210  4E 80 00 20 */	blr 
