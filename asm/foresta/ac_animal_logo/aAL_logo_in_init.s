lbl_80410A60:
/* 80410A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80410A64  7C 08 02 A6 */	mflr r0
/* 80410A68  3C 80 80 64 */	lis r4, lit_560@ha /* 0x80643848@ha */
/* 80410A6C  3C A0 80 64 */	lis r5, lit_561@ha /* 0x8064384C@ha */
/* 80410A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80410A74  38 E5 38 4C */	addi r7, r5, lit_561@l /* 0x8064384C@l */
/* 80410A78  C0 24 38 48 */	lfs f1, lit_560@l(r4)  /* 0x80643848@l */
/* 80410A7C  3C 80 80 64 */	lis r4, lit_562@ha /* 0x80643850@ha */
/* 80410A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80410A84  38 C4 38 50 */	addi r6, r4, lit_562@l /* 0x80643850@l */
/* 80410A88  7C 7F 1B 78 */	mr r31, r3
/* 80410A8C  3C 60 80 64 */	lis r3, lit_548@ha /* 0x80643844@ha */
/* 80410A90  3C 80 80 C3 */	lis r4, cKF_ba_r_logo_us_animal@ha /* 0x80C33DF0@ha */
/* 80410A94  C0 47 00 00 */	lfs f2, 0(r7)
/* 80410A98  38 A4 3D F0 */	addi r5, r4, cKF_ba_r_logo_us_animal@l /* 0x80C33DF0@l */
/* 80410A9C  C0 86 00 00 */	lfs f4, 0(r6)
/* 80410AA0  C0 A3 38 44 */	lfs f5, lit_548@l(r3)  /* 0x80643844@l */
/* 80410AA4  FC 60 08 90 */	fmr f3, f1
/* 80410AA8  80 9F 01 94 */	lwz r4, 0x194(r31)
/* 80410AAC  38 7F 01 7C */	addi r3, r31, 0x17c
/* 80410AB0  38 C0 00 00 */	li r6, 0
/* 80410AB4  38 E0 00 00 */	li r7, 0
/* 80410AB8  4B F6 02 1D */	bl cKF_SkeletonInfo_R_init
/* 80410ABC  3C 60 80 64 */	lis r3, lit_560@ha /* 0x80643848@ha */
/* 80410AC0  3C A0 80 64 */	lis r5, lit_561@ha /* 0x8064384C@ha */
/* 80410AC4  C0 23 38 48 */	lfs f1, lit_560@l(r3)  /* 0x80643848@l */
/* 80410AC8  3C 80 80 64 */	lis r4, lit_562@ha /* 0x80643850@ha */
/* 80410ACC  3C 60 80 64 */	lis r3, lit_548@ha /* 0x80643844@ha */
/* 80410AD0  39 05 38 4C */	addi r8, r5, lit_561@l /* 0x8064384C@l */
/* 80410AD4  38 E4 38 50 */	addi r7, r4, lit_562@l /* 0x80643850@l */
/* 80410AD8  FC 60 08 90 */	fmr f3, f1
/* 80410ADC  38 C3 38 44 */	addi r6, r3, lit_548@l /* 0x80643844@l */
/* 80410AE0  3C 60 80 C4 */	lis r3, cKF_ba_r_logo_us_cros@ha /* 0x80C3BF1C@ha */
/* 80410AE4  C0 87 00 00 */	lfs f4, 0(r7)
/* 80410AE8  38 A3 BF 1C */	addi r5, r3, cKF_ba_r_logo_us_cros@l /* 0x80C3BF1C@l */
/* 80410AEC  C0 A6 00 00 */	lfs f5, 0(r6)
/* 80410AF0  80 9F 02 0C */	lwz r4, 0x20c(r31)
/* 80410AF4  38 7F 01 F4 */	addi r3, r31, 0x1f4
/* 80410AF8  C0 48 00 00 */	lfs f2, 0(r8)
/* 80410AFC  38 C0 00 00 */	li r6, 0
/* 80410B00  38 E0 00 00 */	li r7, 0
/* 80410B04  4B F6 01 D1 */	bl cKF_SkeletonInfo_R_init
/* 80410B08  3C 60 80 64 */	lis r3, lit_560@ha /* 0x80643848@ha */
/* 80410B0C  3C A0 80 64 */	lis r5, lit_561@ha /* 0x8064384C@ha */
/* 80410B10  C0 23 38 48 */	lfs f1, lit_560@l(r3)  /* 0x80643848@l */
/* 80410B14  3C 80 80 64 */	lis r4, lit_562@ha /* 0x80643850@ha */
/* 80410B18  3C 60 80 64 */	lis r3, lit_548@ha /* 0x80643844@ha */
/* 80410B1C  39 05 38 4C */	addi r8, r5, lit_561@l /* 0x8064384C@l */
/* 80410B20  38 E4 38 50 */	addi r7, r4, lit_562@l /* 0x80643850@l */
/* 80410B24  FC 60 08 90 */	fmr f3, f1
/* 80410B28  38 C3 38 44 */	addi r6, r3, lit_548@l /* 0x80643844@l */
/* 80410B2C  3C 60 80 C4 */	lis r3, cKF_ba_r_logo_us_sing@ha /* 0x80C3EB44@ha */
/* 80410B30  C0 87 00 00 */	lfs f4, 0(r7)
/* 80410B34  38 A3 EB 44 */	addi r5, r3, cKF_ba_r_logo_us_sing@l /* 0x80C3EB44@l */
/* 80410B38  C0 A6 00 00 */	lfs f5, 0(r6)
/* 80410B3C  80 9F 02 84 */	lwz r4, 0x284(r31)
/* 80410B40  38 7F 02 6C */	addi r3, r31, 0x26c
/* 80410B44  C0 48 00 00 */	lfs f2, 0(r8)
/* 80410B48  38 C0 00 00 */	li r6, 0
/* 80410B4C  38 E0 00 00 */	li r7, 0
/* 80410B50  4B F6 01 85 */	bl cKF_SkeletonInfo_R_init
/* 80410B54  38 00 00 00 */	li r0, 0
/* 80410B58  90 1F 05 58 */	stw r0, 0x558(r31)
/* 80410B5C  4B FE 17 A9 */	bl mTD_get_titledemo_no
/* 80410B60  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80410B64  4B FE 96 9D */	bl mCD_set_aram_save_data
/* 80410B68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80410B6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80410B70  3C 63 00 02 */	addis r3, r3, 2
/* 80410B74  38 63 61 20 */	addi r3, r3, 0x6120
/* 80410B78  4B FF 5B A5 */	bl lbRTC_GetTime
/* 80410B7C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80410B80  38 80 00 00 */	li r4, 0
/* 80410B84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80410B88  38 00 FF FF */	li r0, -1
/* 80410B8C  3C 63 00 02 */	addis r3, r3, 2
/* 80410B90  98 83 60 03 */	stb r4, 0x6003(r3)
/* 80410B94  90 83 60 08 */	stw r4, 0x6008(r3)
/* 80410B98  90 03 66 A4 */	stw r0, 0x66a4(r3)
/* 80410B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80410BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80410BA4  7C 08 03 A6 */	mtlr r0
/* 80410BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80410BAC  4E 80 00 20 */	blr 
