lbl_803F2FA0:
/* 803F2FA0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803F2FA4  7C 08 02 A6 */	mflr r0
/* 803F2FA8  90 01 00 74 */	stw r0, 0x74(r1)
/* 803F2FAC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 803F2FB0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 803F2FB4  39 61 00 60 */	addi r11, r1, 0x60
/* 803F2FB8  4B CA 7F 19 */	bl func_8009AED0
/* 803F2FBC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F2FC0  7C 7D 1B 78 */	mr r29, r3
/* 803F2FC4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F2FC8  3F E4 00 02 */	addis r31, r4, 2
/* 803F2FCC  3C C4 00 03 */	addis r6, r4, 3
/* 803F2FD0  88 1F 60 01 */	lbz r0, 0x6001(r31)
/* 803F2FD4  80 A6 88 50 */	lwz r5, -0x77b0(r6)
/* 803F2FD8  80 86 88 54 */	lwz r4, -0x77ac(r6)
/* 803F2FDC  28 00 00 00 */	cmplwi r0, 0
/* 803F2FE0  80 06 88 58 */	lwz r0, -0x77a8(r6)
/* 803F2FE4  90 A1 00 44 */	stw r5, 0x44(r1)
/* 803F2FE8  90 81 00 48 */	stw r4, 0x48(r1)
/* 803F2FEC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 803F2FF0  40 82 01 D8 */	bne lbl_803F31C8
/* 803F2FF4  88 1F 65 23 */	lbz r0, 0x6523(r31)
/* 803F2FF8  28 00 00 00 */	cmplwi r0, 0
/* 803F2FFC  40 82 00 08 */	bne lbl_803F3004
/* 803F3000  48 00 01 C8 */	b lbl_803F31C8
lbl_803F3004:
/* 803F3004  80 1F 60 98 */	lwz r0, 0x6098(r31)
/* 803F3008  28 00 00 00 */	cmplwi r0, 0
/* 803F300C  41 82 01 BC */	beq lbl_803F31C8
/* 803F3010  3C A0 80 64 */	lis r5, lit_480@ha /* 0x8064328C@ha */
/* 803F3014  3C 80 80 64 */	lis r4, lit_390@ha /* 0x80643268@ha */
/* 803F3018  C0 04 32 68 */	lfs f0, lit_390@l(r4)  /* 0x80643268@l */
/* 803F301C  38 81 00 20 */	addi r4, r1, 0x20
/* 803F3020  C3 E1 00 44 */	lfs f31, 0x44(r1)
/* 803F3024  C0 25 32 8C */	lfs f1, lit_480@l(r5)  /* 0x8064328C@l */
/* 803F3028  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 803F302C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 803F3030  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 803F3034  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 803F3038  80 01 00 40 */	lwz r0, 0x40(r1)
/* 803F303C  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 803F3040  90 C1 00 20 */	stw r6, 0x20(r1)
/* 803F3044  90 A1 00 24 */	stw r5, 0x24(r1)
/* 803F3048  90 01 00 28 */	stw r0, 0x28(r1)
/* 803F304C  4B FF F6 85 */	bl aTRC_area_check
/* 803F3050  2C 03 00 00 */	cmpwi r3, 0
/* 803F3054  41 82 01 74 */	beq lbl_803F31C8
/* 803F3058  38 7D 1D A8 */	addi r3, r29, 0x1da8
/* 803F305C  38 80 58 0A */	li r4, 0x580a
/* 803F3060  38 A0 00 01 */	li r5, 1
/* 803F3064  4B F8 2C DD */	bl Actor_info_fgName_search
/* 803F3068  7C 7E 1B 79 */	or. r30, r3, r3
/* 803F306C  40 82 00 3C */	bne lbl_803F30A8
/* 803F3070  80 9F 60 98 */	lwz r4, 0x6098(r31)
/* 803F3074  3C 60 80 64 */	lis r3, lit_480@ha /* 0x8064328C@ha */
/* 803F3078  38 C3 32 8C */	addi r6, r3, lit_480@l /* 0x8064328C@l */
/* 803F307C  FC 20 F8 90 */	fmr f1, f31
/* 803F3080  81 84 00 00 */	lwz r12, 0(r4)
/* 803F3084  7F A3 EB 78 */	mr r3, r29
/* 803F3088  38 80 58 0A */	li r4, 0x580a
/* 803F308C  38 A0 FF FF */	li r5, -1
/* 803F3090  C0 46 00 00 */	lfs f2, 0(r6)
/* 803F3094  7D 89 03 A6 */	mtctr r12
/* 803F3098  4E 80 04 21 */	bctrl 
/* 803F309C  7C 7E 1B 79 */	or. r30, r3, r3
/* 803F30A0  40 82 00 54 */	bne lbl_803F30F4
/* 803F30A4  48 00 01 24 */	b lbl_803F31C8
lbl_803F30A8:
/* 803F30A8  FC 20 F8 18 */	frsp f1, f31
/* 803F30AC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 803F30B0  3C 60 80 64 */	lis r3, lit_390@ha /* 0x80643268@ha */
/* 803F30B4  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 803F30B8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 803F30BC  38 83 32 68 */	addi r4, r3, lit_390@l /* 0x80643268@l */
/* 803F30C0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 803F30C4  38 61 00 14 */	addi r3, r1, 0x14
/* 803F30C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F30CC  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 803F30D0  C0 24 00 00 */	lfs f1, 0(r4)
/* 803F30D4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803F30D8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803F30DC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803F30E0  4B F9 C8 B9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803F30E4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 803F30E8  38 7E 00 28 */	addi r3, r30, 0x28
/* 803F30EC  38 81 00 2C */	addi r4, r1, 0x2c
/* 803F30F0  4B FC 7D CD */	bl xyz_t_move
lbl_803F30F4:
/* 803F30F4  3C 80 80 64 */	lis r4, lit_422@ha /* 0x80643284@ha */
/* 803F30F8  38 7D 1D A8 */	addi r3, r29, 0x1da8
/* 803F30FC  38 A4 32 84 */	addi r5, r4, lit_422@l /* 0x80643284@l */
/* 803F3100  38 80 58 0B */	li r4, 0x580b
/* 803F3104  C0 05 00 00 */	lfs f0, 0(r5)
/* 803F3108  38 A0 00 01 */	li r5, 1
/* 803F310C  EF FF 00 28 */	fsubs f31, f31, f0
/* 803F3110  4B F8 2C 31 */	bl Actor_info_fgName_search
/* 803F3114  7C 7C 1B 79 */	or. r28, r3, r3
/* 803F3118  40 82 00 40 */	bne lbl_803F3158
/* 803F311C  80 7F 60 98 */	lwz r3, 0x6098(r31)
/* 803F3120  3C 80 80 64 */	lis r4, lit_480@ha /* 0x8064328C@ha */
/* 803F3124  C0 44 32 8C */	lfs f2, lit_480@l(r4)  /* 0x8064328C@l */
/* 803F3128  FC 20 F8 90 */	fmr f1, f31
/* 803F312C  81 83 00 00 */	lwz r12, 0(r3)
/* 803F3130  7F A3 EB 78 */	mr r3, r29
/* 803F3134  38 80 58 0B */	li r4, 0x580b
/* 803F3138  38 A0 FF FF */	li r5, -1
/* 803F313C  7D 89 03 A6 */	mtctr r12
/* 803F3140  4E 80 04 21 */	bctrl 
/* 803F3144  7C 7C 1B 79 */	or. r28, r3, r3
/* 803F3148  40 82 00 5C */	bne lbl_803F31A4
/* 803F314C  7F C3 F3 78 */	mr r3, r30
/* 803F3150  4B F8 12 F1 */	bl Actor_delete
/* 803F3154  48 00 00 74 */	b lbl_803F31C8
lbl_803F3158:
/* 803F3158  3C 60 80 64 */	lis r3, lit_480@ha /* 0x8064328C@ha */
/* 803F315C  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 803F3160  C0 03 32 8C */	lfs f0, lit_480@l(r3)  /* 0x8064328C@l */
/* 803F3164  3C 60 80 64 */	lis r3, lit_390@ha /* 0x80643268@ha */
/* 803F3168  38 83 32 68 */	addi r4, r3, lit_390@l /* 0x80643268@l */
/* 803F316C  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 803F3170  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 803F3174  38 61 00 08 */	addi r3, r1, 8
/* 803F3178  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 803F317C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F3180  C0 24 00 00 */	lfs f1, 0(r4)
/* 803F3184  90 C1 00 08 */	stw r6, 8(r1)
/* 803F3188  90 A1 00 0C */	stw r5, 0xc(r1)
/* 803F318C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803F3190  4B F9 C8 09 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803F3194  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 803F3198  38 7C 00 28 */	addi r3, r28, 0x28
/* 803F319C  38 81 00 2C */	addi r4, r1, 0x2c
/* 803F31A0  4B FC 7D 1D */	bl xyz_t_move
lbl_803F31A4:
/* 803F31A4  38 60 00 00 */	li r3, 0
/* 803F31A8  38 00 FF FF */	li r0, -1
/* 803F31AC  98 7F 65 23 */	stb r3, 0x6523(r31)
/* 803F31B0  98 1E 00 08 */	stb r0, 8(r30)
/* 803F31B4  98 1E 00 09 */	stb r0, 9(r30)
/* 803F31B8  93 9E 01 50 */	stw r28, 0x150(r30)
/* 803F31BC  98 1C 00 08 */	stb r0, 8(r28)
/* 803F31C0  98 1C 00 09 */	stb r0, 9(r28)
/* 803F31C4  93 DC 01 4C */	stw r30, 0x14c(r28)
lbl_803F31C8:
/* 803F31C8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 803F31CC  39 61 00 60 */	addi r11, r1, 0x60
/* 803F31D0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 803F31D4  4B CA 7D 49 */	bl func_8009AF1C
/* 803F31D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803F31DC  7C 08 03 A6 */	mtlr r0
/* 803F31E0  38 21 00 70 */	addi r1, r1, 0x70
/* 803F31E4  4E 80 00 20 */	blr 
