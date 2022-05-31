lbl_804689CC:
/* 804689CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804689D0  7C 08 02 A6 */	mflr r0
/* 804689D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804689D8  39 61 00 30 */	addi r11, r1, 0x30
/* 804689DC  4B C3 24 F5 */	bl func_8009AED0
/* 804689E0  7C 9E 23 78 */	mr r30, r4
/* 804689E4  7C 7D 1B 78 */	mr r29, r3
/* 804689E8  80 64 00 00 */	lwz r3, 0(r4)
/* 804689EC  4B F7 C7 1D */	bl _texture_z_light_fog_prim
/* 804689F0  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 804689F4  38 60 00 00 */	li r3, 0
/* 804689F8  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804689FC  83 FE 00 00 */	lwz r31, 0(r30)
/* 80468A00  EC 41 00 2A */	fadds f2, f1, f0
/* 80468A04  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80468A08  C0 7D 00 24 */	lfs f3, 0x24(r29)
/* 80468A0C  4B FA 38 F5 */	bl Matrix_translate
/* 80468A10  A8 9D 00 7C */	lha r4, 0x7c(r29)
/* 80468A14  38 60 00 00 */	li r3, 0
/* 80468A18  38 A0 00 00 */	li r5, 0
/* 80468A1C  38 C0 00 01 */	li r6, 1
/* 80468A20  4B FA 3F 75 */	bl Matrix_rotateXYZ
/* 80468A24  A8 7D 00 68 */	lha r3, 0x68(r29)
/* 80468A28  38 C0 00 01 */	li r6, 1
/* 80468A2C  A8 9D 00 6A */	lha r4, 0x6a(r29)
/* 80468A30  A8 BD 00 6C */	lha r5, 0x6c(r29)
/* 80468A34  4B FA 3F 61 */	bl Matrix_rotateXYZ
/* 80468A38  A8 1D 00 7C */	lha r0, 0x7c(r29)
/* 80468A3C  38 60 00 00 */	li r3, 0
/* 80468A40  38 A0 00 00 */	li r5, 0
/* 80468A44  38 C0 00 01 */	li r6, 1
/* 80468A48  7C 00 00 D0 */	neg r0, r0
/* 80468A4C  7C 04 07 34 */	extsh r4, r0
/* 80468A50  4B FA 3F 45 */	bl Matrix_rotateXYZ
/* 80468A54  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80468A58  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80468A5C  38 83 45 BC */	addi r4, r3, lit_459@l /* 0x806445BC@l */
/* 80468A60  38 60 00 01 */	li r3, 1
/* 80468A64  C0 24 00 00 */	lfs f1, 0(r4)
/* 80468A68  FC 40 00 50 */	fneg f2, f0
/* 80468A6C  FC 60 08 90 */	fmr f3, f1
/* 80468A70  4B FA 38 91 */	bl Matrix_translate
/* 80468A74  A8 9D 00 78 */	lha r4, 0x78(r29)
/* 80468A78  38 60 00 00 */	li r3, 0
/* 80468A7C  38 A0 00 00 */	li r5, 0
/* 80468A80  38 C0 00 01 */	li r6, 1
/* 80468A84  4B FA 3F 11 */	bl Matrix_rotateXYZ
/* 80468A88  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80468A8C  3C 80 80 64 */	lis r4, lit_3586@ha /* 0x80644854@ha */
/* 80468A90  38 A3 45 BC */	addi r5, r3, lit_459@l /* 0x806445BC@l */
/* 80468A94  C0 64 48 54 */	lfs f3, lit_3586@l(r4)  /* 0x80644854@l */
/* 80468A98  C0 25 00 00 */	lfs f1, 0(r5)
/* 80468A9C  38 60 00 01 */	li r3, 1
/* 80468AA0  FC 40 08 90 */	fmr f2, f1
/* 80468AA4  4B FA 38 5D */	bl Matrix_translate
/* 80468AA8  38 60 C0 00 */	li r3, -16384
/* 80468AAC  38 80 80 00 */	li r4, -32768
/* 80468AB0  38 A0 00 00 */	li r5, 0
/* 80468AB4  38 C0 00 01 */	li r6, 1
/* 80468AB8  4B FA 3E DD */	bl Matrix_rotateXYZ
/* 80468ABC  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80468AC0  38 60 00 01 */	li r3, 1
/* 80468AC4  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 80468AC8  C0 7D 00 3C */	lfs f3, 0x3c(r29)
/* 80468ACC  4B FA 39 21 */	bl Matrix_scale
/* 80468AD0  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 80468AD4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80468AD8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80468ADC  38 7C 00 08 */	addi r3, r28, 8
/* 80468AE0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80468AE4  90 1C 00 00 */	stw r0, 0(r28)
/* 80468AE8  80 7E 00 00 */	lwz r3, 0(r30)
/* 80468AEC  4B FA 48 E9 */	bl _Matrix_to_Mtx_new
/* 80468AF0  90 7C 00 04 */	stw r3, 4(r28)
/* 80468AF4  3C 60 01 00 */	lis r3, 0x0100 /* 0x00FF9BFF@ha */
/* 80468AF8  3C 80 FB 00 */	lis r4, 0xfb00
/* 80468AFC  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80468B00  38 03 9B FF */	addi r0, r3, 0x9BFF /* 0x00FF9BFF@l */
/* 80468B04  38 65 00 08 */	addi r3, r5, 8
/* 80468B08  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80468B0C  90 85 00 00 */	stw r4, 0(r5)
/* 80468B10  90 05 00 04 */	stw r0, 4(r5)
/* 80468B14  A8 1D 00 80 */	lha r0, 0x80(r29)
/* 80468B18  2C 00 00 00 */	cmpwi r0, 0
/* 80468B1C  41 82 00 38 */	beq lbl_80468B54
/* 80468B20  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80468B24  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 80468B28  3C 00 DE 00 */	lis r0, 0xde00
/* 80468B2C  38 85 00 08 */	addi r4, r5, 8
/* 80468B30  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 80468B34  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 80468B38  90 05 00 00 */	stw r0, 0(r5)
/* 80468B3C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80468B40  54 00 10 3A */	slwi r0, r0, 2
/* 80468B44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80468B48  80 03 00 04 */	lwz r0, 4(r3)
/* 80468B4C  90 05 00 04 */	stw r0, 4(r5)
/* 80468B50  48 00 00 34 */	b lbl_80468B84
lbl_80468B54:
/* 80468B54  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 80468B58  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 80468B5C  3C 00 DE 00 */	lis r0, 0xde00
/* 80468B60  38 85 00 08 */	addi r4, r5, 8
/* 80468B64  38 63 65 4C */	addi r3, r3, minsect_mdl@l /* 0x8068654C@l */
/* 80468B68  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 80468B6C  90 05 00 00 */	stw r0, 0(r5)
/* 80468B70  80 1D 00 00 */	lwz r0, 0(r29)
/* 80468B74  54 00 10 3A */	slwi r0, r0, 2
/* 80468B78  7C 63 00 2E */	lwzx r3, r3, r0
/* 80468B7C  80 03 00 00 */	lwz r0, 0(r3)
/* 80468B80  90 05 00 04 */	stw r0, 4(r5)
lbl_80468B84:
/* 80468B84  C0 5D 00 20 */	lfs f2, 0x20(r29)
/* 80468B88  38 60 00 00 */	li r3, 0
/* 80468B8C  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80468B90  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80468B94  EC 42 00 2A */	fadds f2, f2, f0
/* 80468B98  C0 7D 00 24 */	lfs f3, 0x24(r29)
/* 80468B9C  4B FA 37 65 */	bl Matrix_translate
/* 80468BA0  A8 9D 00 7C */	lha r4, 0x7c(r29)
/* 80468BA4  38 60 00 00 */	li r3, 0
/* 80468BA8  38 A0 00 00 */	li r5, 0
/* 80468BAC  38 C0 00 01 */	li r6, 1
/* 80468BB0  4B FA 3D E5 */	bl Matrix_rotateXYZ
/* 80468BB4  A8 7D 00 68 */	lha r3, 0x68(r29)
/* 80468BB8  38 C0 00 01 */	li r6, 1
/* 80468BBC  A8 9D 00 6A */	lha r4, 0x6a(r29)
/* 80468BC0  A8 BD 00 6C */	lha r5, 0x6c(r29)
/* 80468BC4  4B FA 3D D1 */	bl Matrix_rotateXYZ
/* 80468BC8  A8 1D 00 7C */	lha r0, 0x7c(r29)
/* 80468BCC  38 60 00 00 */	li r3, 0
/* 80468BD0  38 A0 00 00 */	li r5, 0
/* 80468BD4  38 C0 00 01 */	li r6, 1
/* 80468BD8  7C 00 00 D0 */	neg r0, r0
/* 80468BDC  7C 04 07 34 */	extsh r4, r0
/* 80468BE0  4B FA 3D B5 */	bl Matrix_rotateXYZ
/* 80468BE4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80468BE8  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 80468BEC  38 83 45 BC */	addi r4, r3, lit_459@l /* 0x806445BC@l */
/* 80468BF0  38 60 00 01 */	li r3, 1
/* 80468BF4  C0 24 00 00 */	lfs f1, 0(r4)
/* 80468BF8  FC 40 00 50 */	fneg f2, f0
/* 80468BFC  FC 60 08 90 */	fmr f3, f1
/* 80468C00  4B FA 37 01 */	bl Matrix_translate
/* 80468C04  A8 9D 00 78 */	lha r4, 0x78(r29)
/* 80468C08  38 60 00 00 */	li r3, 0
/* 80468C0C  38 A0 00 00 */	li r5, 0
/* 80468C10  38 C0 00 01 */	li r6, 1
/* 80468C14  4B FA 3D 81 */	bl Matrix_rotateXYZ
/* 80468C18  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80468C1C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80468C20  80 63 00 00 */	lwz r3, 0(r3)
/* 80468C24  A8 C3 16 9E */	lha r6, 0x169e(r3)
/* 80468C28  7C C0 07 35 */	extsh. r0, r6
/* 80468C2C  41 82 00 7C */	beq lbl_80468CA8
/* 80468C30  A8 83 16 9C */	lha r4, 0x169c(r3)
/* 80468C34  3C A0 43 30 */	lis r5, 0x4330
/* 80468C38  A8 03 16 A0 */	lha r0, 0x16a0(r3)
/* 80468C3C  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 80468C40  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80468C44  3C C0 80 64 */	lis r6, lit_589@ha /* 0x8064463C@ha */
/* 80468C48  90 81 00 0C */	stw r4, 0xc(r1)
/* 80468C4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80468C50  3C E0 80 64 */	lis r7, lit_3587@ha /* 0x80644858@ha */
/* 80468C54  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80468C58  90 A1 00 08 */	stw r5, 8(r1)
/* 80468C5C  C8 86 46 3C */	lfd f4, lit_589@l(r6)  /* 0x8064463C@l */
/* 80468C60  C8 01 00 08 */	lfd f0, 8(r1)
/* 80468C64  90 61 00 14 */	stw r3, 0x14(r1)
/* 80468C68  38 60 00 01 */	li r3, 1
/* 80468C6C  EC 20 20 28 */	fsubs f1, f0, f4
/* 80468C70  C0 47 48 58 */	lfs f2, lit_3587@l(r7)  /* 0x80644858@l */
/* 80468C74  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80468C78  C0 64 46 54 */	lfs f3, lit_678@l(r4)  /* 0x80644654@l */
/* 80468C7C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80468C80  EC 22 00 72 */	fmuls f1, f2, f1
/* 80468C84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80468C88  EC 40 20 28 */	fsubs f2, f0, f4
/* 80468C8C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80468C90  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80468C94  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80468C98  EC 00 20 28 */	fsubs f0, f0, f4
/* 80468C9C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80468CA0  4B FA 36 61 */	bl Matrix_translate
/* 80468CA4  48 00 00 54 */	b lbl_80468CF8
lbl_80468CA8:
/* 80468CA8  A8 1D 00 80 */	lha r0, 0x80(r29)
/* 80468CAC  2C 00 00 00 */	cmpwi r0, 0
/* 80468CB0  41 82 00 28 */	beq lbl_80468CD8
/* 80468CB4  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80468CB8  3C 80 80 64 */	lis r4, lit_3588@ha /* 0x8064485C@ha */
/* 80468CBC  38 A3 45 BC */	addi r5, r3, lit_459@l /* 0x806445BC@l */
/* 80468CC0  C0 44 48 5C */	lfs f2, lit_3588@l(r4)  /* 0x8064485C@l */
/* 80468CC4  C0 25 00 00 */	lfs f1, 0(r5)
/* 80468CC8  38 60 00 01 */	li r3, 1
/* 80468CCC  FC 60 08 90 */	fmr f3, f1
/* 80468CD0  4B FA 36 31 */	bl Matrix_translate
/* 80468CD4  48 00 00 24 */	b lbl_80468CF8
lbl_80468CD8:
/* 80468CD8  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 80468CDC  3C 80 80 64 */	lis r4, lit_461@ha /* 0x806445C4@ha */
/* 80468CE0  38 A3 45 BC */	addi r5, r3, lit_459@l /* 0x806445BC@l */
/* 80468CE4  C0 44 45 C4 */	lfs f2, lit_461@l(r4)  /* 0x806445C4@l */
/* 80468CE8  C0 25 00 00 */	lfs f1, 0(r5)
/* 80468CEC  38 60 00 01 */	li r3, 1
/* 80468CF0  FC 60 08 90 */	fmr f3, f1
/* 80468CF4  4B FA 36 0D */	bl Matrix_translate
lbl_80468CF8:
/* 80468CF8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80468CFC  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 80468D00  80 63 00 00 */	lwz r3, 0(r3)
/* 80468D04  A8 63 16 A2 */	lha r3, 0x16a2(r3)
/* 80468D08  7C 60 07 35 */	extsh. r0, r3
/* 80468D0C  41 82 00 78 */	beq lbl_80468D84
/* 80468D10  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80468D14  3C 00 43 30 */	lis r0, 0x4330
/* 80468D18  3C 80 80 64 */	lis r4, lit_589@ha /* 0x8064463C@ha */
/* 80468D1C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80468D20  38 64 46 3C */	addi r3, r4, lit_589@l /* 0x8064463C@l */
/* 80468D24  3C C0 80 64 */	lis r6, mino_top_pos@ha /* 0x80644818@ha */
/* 80468D28  90 01 00 18 */	stw r0, 0x18(r1)
/* 80468D2C  3C A0 80 64 */	lis r5, mino_base_pos@ha /* 0x8064480C@ha */
/* 80468D30  C8 23 00 00 */	lfd f1, 0(r3)
/* 80468D34  38 C6 48 18 */	addi r6, r6, mino_top_pos@l /* 0x80644818@l */
/* 80468D38  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80468D3C  38 A5 48 0C */	addi r5, r5, mino_base_pos@l /* 0x8064480C@l */
/* 80468D40  3C 80 80 64 */	lis r4, lit_678@ha /* 0x80644654@ha */
/* 80468D44  C0 66 00 04 */	lfs f3, 4(r6)
/* 80468D48  EC 00 08 28 */	fsubs f0, f0, f1
/* 80468D4C  C0 24 46 54 */	lfs f1, lit_678@l(r4)  /* 0x80644654@l */
/* 80468D50  C0 45 00 04 */	lfs f2, 4(r5)
/* 80468D54  3C 80 80 64 */	lis r4, lit_1067@ha /* 0x80644700@ha */
/* 80468D58  C0 9D 00 58 */	lfs f4, 0x58(r29)
/* 80468D5C  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80468D60  EC 43 10 28 */	fsubs f2, f3, f2
/* 80468D64  C0 63 46 0C */	lfs f3, lit_511@l(r3)  /* 0x8064460C@l */
/* 80468D68  EC 01 00 32 */	fmuls f0, f1, f0
/* 80468D6C  C0 24 47 00 */	lfs f1, lit_1067@l(r4)  /* 0x80644700@l */
/* 80468D70  38 60 00 01 */	li r3, 1
/* 80468D74  EC 02 00 28 */	fsubs f0, f2, f0
/* 80468D78  EC 44 00 24 */	fdivs f2, f4, f0
/* 80468D7C  4B FA 36 71 */	bl Matrix_scale
/* 80468D80  48 00 00 54 */	b lbl_80468DD4
lbl_80468D84:
/* 80468D84  3C 60 80 64 */	lis r3, mino_top_pos@ha /* 0x80644818@ha */
/* 80468D88  3C 80 80 64 */	lis r4, mino_base_pos@ha /* 0x8064480C@ha */
/* 80468D8C  38 A3 48 18 */	addi r5, r3, mino_top_pos@l /* 0x80644818@l */
/* 80468D90  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 80468D94  38 84 48 0C */	addi r4, r4, mino_base_pos@l /* 0x8064480C@l */
/* 80468D98  C0 25 00 04 */	lfs f1, 4(r5)
/* 80468D9C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80468DA0  3C 60 80 64 */	lis r3, lit_586@ha /* 0x80644634@ha */
/* 80468DA4  38 83 46 34 */	addi r4, r3, lit_586@l /* 0x80644634@l */
/* 80468DA8  3C A0 80 64 */	lis r5, lit_1067@ha /* 0x80644700@ha */
/* 80468DAC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80468DB0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80468DB4  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 80468DB8  38 83 46 0C */	addi r4, r3, lit_511@l /* 0x8064460C@l */
/* 80468DBC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80468DC0  C0 25 47 00 */	lfs f1, lit_1067@l(r5)  /* 0x80644700@l */
/* 80468DC4  C0 64 00 00 */	lfs f3, 0(r4)
/* 80468DC8  38 60 00 01 */	li r3, 1
/* 80468DCC  EC 42 00 24 */	fdivs f2, f2, f0
/* 80468DD0  4B FA 36 1D */	bl Matrix_scale
lbl_80468DD4:
/* 80468DD4  3C C0 80 64 */	lis r6, lit_3589@ha /* 0x80644860@ha */
/* 80468DD8  3C A0 80 64 */	lis r5, lit_3590@ha /* 0x80644864@ha */
/* 80468DDC  3C 80 80 64 */	lis r4, lit_3586@ha /* 0x80644854@ha */
/* 80468DE0  C0 26 48 60 */	lfs f1, lit_3589@l(r6)  /* 0x80644860@l */
/* 80468DE4  C0 45 48 64 */	lfs f2, lit_3590@l(r5)  /* 0x80644864@l */
/* 80468DE8  38 60 00 01 */	li r3, 1
/* 80468DEC  C0 64 48 54 */	lfs f3, lit_3586@l(r4)  /* 0x80644854@l */
/* 80468DF0  4B FA 35 11 */	bl Matrix_translate
/* 80468DF4  38 60 C0 00 */	li r3, -16384
/* 80468DF8  38 80 80 00 */	li r4, -32768
/* 80468DFC  38 A0 00 00 */	li r5, 0
/* 80468E00  38 C0 00 01 */	li r6, 1
/* 80468E04  4B FA 3B 91 */	bl Matrix_rotateXYZ
/* 80468E08  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80468E0C  38 60 00 01 */	li r3, 1
/* 80468E10  FC 40 08 90 */	fmr f2, f1
/* 80468E14  FC 60 08 90 */	fmr f3, f1
/* 80468E18  4B FA 35 D5 */	bl Matrix_scale
/* 80468E1C  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 80468E20  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80468E24  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80468E28  38 7C 00 08 */	addi r3, r28, 8
/* 80468E2C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80468E30  90 1C 00 00 */	stw r0, 0(r28)
/* 80468E34  80 7E 00 00 */	lwz r3, 0(r30)
/* 80468E38  4B FA 45 9D */	bl _Matrix_to_Mtx_new
/* 80468E3C  90 7C 00 04 */	stw r3, 4(r28)
/* 80468E40  3C 80 01 00 */	lis r4, 0x0100 /* 0x00FF9BFF@ha */
/* 80468E44  3C 60 80 68 */	lis r3, minsect_mdl@ha /* 0x8068654C@ha */
/* 80468E48  3C E0 FB 00 */	lis r7, 0xfb00
/* 80468E4C  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 80468E50  38 C4 9B FF */	addi r6, r4, 0x9BFF /* 0x00FF9BFF@l */
/* 80468E54  3C 00 DE 00 */	lis r0, 0xde00
/* 80468E58  38 A3 65 4C */	addi r5, r3, minsect_mdl@l /* 0x8068654C@l */
/* 80468E5C  38 88 00 08 */	addi r4, r8, 8
/* 80468E60  7F A3 EB 78 */	mr r3, r29
/* 80468E64  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 80468E68  7F C4 F3 78 */	mr r4, r30
/* 80468E6C  90 E8 00 00 */	stw r7, 0(r8)
/* 80468E70  90 C8 00 04 */	stw r6, 4(r8)
/* 80468E74  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 80468E78  38 C7 00 08 */	addi r6, r7, 8
/* 80468E7C  90 DF 02 D0 */	stw r6, 0x2d0(r31)
/* 80468E80  90 07 00 00 */	stw r0, 0(r7)
/* 80468E84  80 1D 00 00 */	lwz r0, 0(r29)
/* 80468E88  54 00 10 3A */	slwi r0, r0, 2
/* 80468E8C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80468E90  80 05 00 08 */	lwz r0, 8(r5)
/* 80468E94  90 07 00 04 */	stw r0, 4(r7)
/* 80468E98  4B FF 2A 99 */	bl minsect_draw_shadow
/* 80468E9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80468EA0  4B C3 20 7D */	bl func_8009AF1C
/* 80468EA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80468EA8  7C 08 03 A6 */	mtlr r0
/* 80468EAC  38 21 00 30 */	addi r1, r1, 0x30
/* 80468EB0  4E 80 00 20 */	blr 
