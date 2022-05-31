lbl_8038DD10:
/* 8038DD10  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8038DD14  7C 08 02 A6 */	mflr r0
/* 8038DD18  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8038DD1C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8038DD20  4B D0 D1 A9 */	bl func_8009AEC8
/* 8038DD24  7C DB 33 79 */	or. r27, r6, r6
/* 8038DD28  7C 7E 1B 78 */	mr r30, r3
/* 8038DD2C  7C 9F 23 78 */	mr r31, r4
/* 8038DD30  7C BA 2B 78 */	mr r26, r5
/* 8038DD34  7C FC 3B 78 */	mr r28, r7
/* 8038DD38  7D 1D 43 78 */	mr r29, r8
/* 8038DD3C  41 82 00 1C */	beq lbl_8038DD58
/* 8038DD40  7F 6C DB 78 */	mr r12, r27
/* 8038DD44  A0 7F 00 2E */	lhz r3, 0x2e(r31)
/* 8038DD48  7D 89 03 A6 */	mtctr r12
/* 8038DD4C  4E 80 04 21 */	bctrl 
/* 8038DD50  2C 03 00 00 */	cmpwi r3, 0
/* 8038DD54  41 82 00 0C */	beq lbl_8038DD60
lbl_8038DD58:
/* 8038DD58  28 1B 00 00 */	cmplwi r27, 0
/* 8038DD5C  40 82 0C 9C */	bne lbl_8038E9F8
lbl_8038DD60:
/* 8038DD60  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8038DD64  7C 00 E0 00 */	cmpw r0, r28
/* 8038DD68  40 82 00 18 */	bne lbl_8038DD80
/* 8038DD6C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8038DD70  7C 03 E8 00 */	cmpw r3, r29
/* 8038DD74  40 82 00 0C */	bne lbl_8038DD80
/* 8038DD78  38 60 00 00 */	li r3, 0
/* 8038DD7C  48 00 0C 80 */	b lbl_8038E9FC
lbl_8038DD80:
/* 8038DD80  2C 1A 00 01 */	cmpwi r26, 1
/* 8038DD84  40 82 00 F4 */	bne lbl_8038DE78
/* 8038DD88  A0 7F 00 2E */	lhz r3, 0x2e(r31)
/* 8038DD8C  28 03 00 11 */	cmplwi r3, 0x11
/* 8038DD90  41 80 00 0C */	blt lbl_8038DD9C
/* 8038DD94  28 03 00 29 */	cmplwi r3, 0x29
/* 8038DD98  40 81 00 14 */	ble lbl_8038DDAC
lbl_8038DD9C:
/* 8038DD9C  28 03 00 5D */	cmplwi r3, 0x5d
/* 8038DDA0  41 82 00 0C */	beq lbl_8038DDAC
/* 8038DDA4  28 03 FE 19 */	cmplwi r3, 0xfe19
/* 8038DDA8  40 82 00 D0 */	bne lbl_8038DE78
lbl_8038DDAC:
/* 8038DDAC  3C 80 43 30 */	lis r4, 0x4330
/* 8038DDB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038DDB4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038DDB8  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038DDBC  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038DDC0  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038DDC4  90 81 00 90 */	stw r4, 0x90(r1)
/* 8038DDC8  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038DDCC  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038DDD0  C0 65 19 D0 */	lfs f3, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038DDD4  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038DDD8  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038DDDC  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038DDE0  38 61 00 80 */	addi r3, r1, 0x80
/* 8038DDE4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038DDE8  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038DDEC  90 81 00 98 */	stw r4, 0x98(r1)
/* 8038DDF0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038DDF4  EC 04 00 2A */	fadds f0, f4, f0
/* 8038DDF8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038DDFC  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038DE00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038DE04  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038DE08  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038DE0C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038DE10  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038DE14  EC 04 00 2A */	fadds f0, f4, f0
/* 8038DE18  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038DE1C  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038DE20  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8038DE24  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8038DE28  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038DE2C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8038DE30  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038DE34  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038DE38  90 81 00 80 */	stw r4, 0x80(r1)
/* 8038DE3C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8038DE40  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038DE44  90 01 00 88 */	stw r0, 0x88(r1)
/* 8038DE48  48 00 1B 51 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038DE4C  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038DE50  3C 60 80 64 */	lis r3, lit_2000@ha /* 0x80641A54@ha */
/* 8038DE54  38 83 1A 54 */	addi r4, r3, lit_2000@l /* 0x80641A54@l */
/* 8038DE58  38 00 00 01 */	li r0, 1
/* 8038DE5C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038DE60  38 60 00 01 */	li r3, 1
/* 8038DE64  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038DE68  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8038DE6C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038DE70  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038DE74  48 00 0B 88 */	b lbl_8038E9FC
lbl_8038DE78:
/* 8038DE78  A0 9F 00 2E */	lhz r4, 0x2e(r31)
/* 8038DE7C  28 04 08 01 */	cmplwi r4, 0x801
/* 8038DE80  41 82 00 64 */	beq lbl_8038DEE4
/* 8038DE84  28 04 08 06 */	cmplwi r4, 0x806
/* 8038DE88  41 82 00 5C */	beq lbl_8038DEE4
/* 8038DE8C  28 04 08 0E */	cmplwi r4, 0x80e
/* 8038DE90  41 82 00 54 */	beq lbl_8038DEE4
/* 8038DE94  28 04 08 16 */	cmplwi r4, 0x816
/* 8038DE98  41 82 00 4C */	beq lbl_8038DEE4
/* 8038DE9C  28 04 08 1E */	cmplwi r4, 0x81e
/* 8038DEA0  41 82 00 44 */	beq lbl_8038DEE4
/* 8038DEA4  28 04 08 26 */	cmplwi r4, 0x826
/* 8038DEA8  41 82 00 3C */	beq lbl_8038DEE4
/* 8038DEAC  28 04 08 2E */	cmplwi r4, 0x82e
/* 8038DEB0  41 82 00 34 */	beq lbl_8038DEE4
/* 8038DEB4  28 04 08 33 */	cmplwi r4, 0x833
/* 8038DEB8  41 82 00 2C */	beq lbl_8038DEE4
/* 8038DEBC  28 04 08 38 */	cmplwi r4, 0x838
/* 8038DEC0  41 82 00 24 */	beq lbl_8038DEE4
/* 8038DEC4  28 04 08 50 */	cmplwi r4, 0x850
/* 8038DEC8  41 82 00 1C */	beq lbl_8038DEE4
/* 8038DECC  28 04 08 55 */	cmplwi r4, 0x855
/* 8038DED0  41 82 00 14 */	beq lbl_8038DEE4
/* 8038DED4  28 04 08 5E */	cmplwi r4, 0x85e
/* 8038DED8  41 82 00 0C */	beq lbl_8038DEE4
/* 8038DEDC  28 04 08 64 */	cmplwi r4, 0x864
/* 8038DEE0  40 82 00 DC */	bne lbl_8038DFBC
lbl_8038DEE4:
/* 8038DEE4  3C 80 43 30 */	lis r4, 0x4330
/* 8038DEE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038DEEC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038DEF0  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038DEF4  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038DEF8  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038DEFC  90 81 00 98 */	stw r4, 0x98(r1)
/* 8038DF00  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038DF04  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038DF08  C0 65 19 D0 */	lfs f3, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038DF0C  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038DF10  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038DF14  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038DF18  38 61 00 74 */	addi r3, r1, 0x74
/* 8038DF1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038DF20  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038DF24  90 81 00 90 */	stw r4, 0x90(r1)
/* 8038DF28  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038DF2C  EC 04 00 2A */	fadds f0, f4, f0
/* 8038DF30  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038DF34  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038DF38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038DF3C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038DF40  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038DF44  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038DF48  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038DF4C  EC 04 00 2A */	fadds f0, f4, f0
/* 8038DF50  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038DF54  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038DF58  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038DF5C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038DF60  90 81 00 74 */	stw r4, 0x74(r1)
/* 8038DF64  90 01 00 78 */	stw r0, 0x78(r1)
/* 8038DF68  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038DF6C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8038DF70  48 00 1A 29 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038DF74  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038DF78  3C 60 80 64 */	lis r3, lit_1695@ha /* 0x80641A4C@ha */
/* 8038DF7C  38 83 1A 4C */	addi r4, r3, lit_1695@l /* 0x80641A4C@l */
/* 8038DF80  38 00 00 00 */	li r0, 0
/* 8038DF84  C0 44 00 00 */	lfs f2, 0(r4)
/* 8038DF88  3C 60 80 64 */	lis r3, lit_2000@ha /* 0x80641A54@ha */
/* 8038DF8C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038DF90  C0 03 1A 54 */	lfs f0, lit_2000@l(r3)  /* 0x80641A54@l */
/* 8038DF94  38 60 00 01 */	li r3, 1
/* 8038DF98  EC 22 08 2A */	fadds f1, f2, f1
/* 8038DF9C  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8038DFA0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8038DFA4  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8038DFA8  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038DFAC  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038DFB0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038DFB4  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038DFB8  48 00 0A 44 */	b lbl_8038E9FC
lbl_8038DFBC:
/* 8038DFBC  28 04 08 02 */	cmplwi r4, 0x802
/* 8038DFC0  41 82 00 64 */	beq lbl_8038E024
/* 8038DFC4  28 04 08 07 */	cmplwi r4, 0x807
/* 8038DFC8  41 82 00 5C */	beq lbl_8038E024
/* 8038DFCC  28 04 08 0F */	cmplwi r4, 0x80f
/* 8038DFD0  41 82 00 54 */	beq lbl_8038E024
/* 8038DFD4  28 04 08 17 */	cmplwi r4, 0x817
/* 8038DFD8  41 82 00 4C */	beq lbl_8038E024
/* 8038DFDC  28 04 08 1F */	cmplwi r4, 0x81f
/* 8038DFE0  41 82 00 44 */	beq lbl_8038E024
/* 8038DFE4  28 04 08 27 */	cmplwi r4, 0x827
/* 8038DFE8  41 82 00 3C */	beq lbl_8038E024
/* 8038DFEC  28 04 08 2F */	cmplwi r4, 0x82f
/* 8038DFF0  41 82 00 34 */	beq lbl_8038E024
/* 8038DFF4  28 04 08 34 */	cmplwi r4, 0x834
/* 8038DFF8  41 82 00 2C */	beq lbl_8038E024
/* 8038DFFC  28 04 08 39 */	cmplwi r4, 0x839
/* 8038E000  41 82 00 24 */	beq lbl_8038E024
/* 8038E004  28 04 08 51 */	cmplwi r4, 0x851
/* 8038E008  41 82 00 1C */	beq lbl_8038E024
/* 8038E00C  28 04 08 56 */	cmplwi r4, 0x856
/* 8038E010  41 82 00 14 */	beq lbl_8038E024
/* 8038E014  28 04 08 5F */	cmplwi r4, 0x85f
/* 8038E018  41 82 00 0C */	beq lbl_8038E024
/* 8038E01C  28 04 08 65 */	cmplwi r4, 0x865
/* 8038E020  40 82 00 DC */	bne lbl_8038E0FC
lbl_8038E024:
/* 8038E024  3C 80 43 30 */	lis r4, 0x4330
/* 8038E028  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E02C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E030  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E034  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E038  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038E03C  90 81 00 98 */	stw r4, 0x98(r1)
/* 8038E040  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E044  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E048  C0 65 19 D0 */	lfs f3, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038E04C  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E050  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E054  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038E058  38 61 00 68 */	addi r3, r1, 0x68
/* 8038E05C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E060  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E064  90 81 00 90 */	stw r4, 0x90(r1)
/* 8038E068  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E06C  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E070  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E074  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E078  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E07C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E080  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E084  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E088  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E08C  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E090  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E094  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E098  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E09C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E0A0  90 81 00 68 */	stw r4, 0x68(r1)
/* 8038E0A4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8038E0A8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E0AC  90 01 00 70 */	stw r0, 0x70(r1)
/* 8038E0B0  48 00 18 E9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E0B4  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E0B8  3C 60 80 64 */	lis r3, lit_789@ha /* 0x806419D0@ha */
/* 8038E0BC  38 83 19 D0 */	addi r4, r3, lit_789@l /* 0x806419D0@l */
/* 8038E0C0  38 00 00 00 */	li r0, 0
/* 8038E0C4  C0 44 00 00 */	lfs f2, 0(r4)
/* 8038E0C8  3C 60 80 64 */	lis r3, lit_2000@ha /* 0x80641A54@ha */
/* 8038E0CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038E0D0  C0 03 1A 54 */	lfs f0, lit_2000@l(r3)  /* 0x80641A54@l */
/* 8038E0D4  38 60 00 01 */	li r3, 1
/* 8038E0D8  EC 22 08 2A */	fadds f1, f2, f1
/* 8038E0DC  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8038E0E0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8038E0E4  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8038E0E8  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038E0EC  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038E0F0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E0F4  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E0F8  48 00 09 04 */	b lbl_8038E9FC
lbl_8038E0FC:
/* 8038E0FC  28 04 08 03 */	cmplwi r4, 0x803
/* 8038E100  41 82 00 64 */	beq lbl_8038E164
/* 8038E104  28 04 08 08 */	cmplwi r4, 0x808
/* 8038E108  41 82 00 5C */	beq lbl_8038E164
/* 8038E10C  28 04 08 10 */	cmplwi r4, 0x810
/* 8038E110  41 82 00 54 */	beq lbl_8038E164
/* 8038E114  28 04 08 18 */	cmplwi r4, 0x818
/* 8038E118  41 82 00 4C */	beq lbl_8038E164
/* 8038E11C  28 04 08 20 */	cmplwi r4, 0x820
/* 8038E120  41 82 00 44 */	beq lbl_8038E164
/* 8038E124  28 04 08 28 */	cmplwi r4, 0x828
/* 8038E128  41 82 00 3C */	beq lbl_8038E164
/* 8038E12C  28 04 08 30 */	cmplwi r4, 0x830
/* 8038E130  41 82 00 34 */	beq lbl_8038E164
/* 8038E134  28 04 08 35 */	cmplwi r4, 0x835
/* 8038E138  41 82 00 2C */	beq lbl_8038E164
/* 8038E13C  28 04 08 3A */	cmplwi r4, 0x83a
/* 8038E140  41 82 00 24 */	beq lbl_8038E164
/* 8038E144  28 04 08 52 */	cmplwi r4, 0x852
/* 8038E148  41 82 00 1C */	beq lbl_8038E164
/* 8038E14C  28 04 08 57 */	cmplwi r4, 0x857
/* 8038E150  41 82 00 14 */	beq lbl_8038E164
/* 8038E154  28 04 08 60 */	cmplwi r4, 0x860
/* 8038E158  41 82 00 0C */	beq lbl_8038E164
/* 8038E15C  28 04 08 66 */	cmplwi r4, 0x866
/* 8038E160  40 82 00 DC */	bne lbl_8038E23C
lbl_8038E164:
/* 8038E164  3C 80 43 30 */	lis r4, 0x4330
/* 8038E168  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E16C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E170  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E174  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E178  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038E17C  90 81 00 98 */	stw r4, 0x98(r1)
/* 8038E180  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E184  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E188  C0 65 19 D0 */	lfs f3, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038E18C  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E190  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E194  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038E198  38 61 00 5C */	addi r3, r1, 0x5c
/* 8038E19C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E1A0  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E1A4  90 81 00 90 */	stw r4, 0x90(r1)
/* 8038E1A8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E1AC  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E1B0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E1B4  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E1B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E1BC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E1C0  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E1C4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E1C8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E1CC  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E1D0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E1D4  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E1D8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E1DC  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E1E0  90 81 00 5C */	stw r4, 0x5c(r1)
/* 8038E1E4  90 01 00 60 */	stw r0, 0x60(r1)
/* 8038E1E8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E1EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8038E1F0  48 00 17 A9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E1F4  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E1F8  3C 60 80 64 */	lis r3, lit_2001@ha /* 0x80641A58@ha */
/* 8038E1FC  38 83 1A 58 */	addi r4, r3, lit_2001@l /* 0x80641A58@l */
/* 8038E200  38 00 00 00 */	li r0, 0
/* 8038E204  C0 44 00 00 */	lfs f2, 0(r4)
/* 8038E208  3C 60 80 64 */	lis r3, lit_2000@ha /* 0x80641A54@ha */
/* 8038E20C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038E210  C0 03 1A 54 */	lfs f0, lit_2000@l(r3)  /* 0x80641A54@l */
/* 8038E214  38 60 00 01 */	li r3, 1
/* 8038E218  EC 22 08 2A */	fadds f1, f2, f1
/* 8038E21C  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8038E220  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8038E224  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8038E228  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038E22C  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038E230  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E234  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E238  48 00 07 C4 */	b lbl_8038E9FC
lbl_8038E23C:
/* 8038E23C  28 04 08 04 */	cmplwi r4, 0x804
/* 8038E240  41 82 00 DC */	beq lbl_8038E31C
/* 8038E244  28 04 08 31 */	cmplwi r4, 0x831
/* 8038E248  41 82 00 D4 */	beq lbl_8038E31C
/* 8038E24C  28 04 08 36 */	cmplwi r4, 0x836
/* 8038E250  41 82 00 CC */	beq lbl_8038E31C
/* 8038E254  28 04 08 3B */	cmplwi r4, 0x83b
/* 8038E258  41 82 00 C4 */	beq lbl_8038E31C
/* 8038E25C  28 04 08 53 */	cmplwi r4, 0x853
/* 8038E260  41 82 00 BC */	beq lbl_8038E31C
/* 8038E264  28 04 08 61 */	cmplwi r4, 0x861
/* 8038E268  41 82 00 B4 */	beq lbl_8038E31C
/* 8038E26C  38 64 F7 99 */	addi r3, r4, -2151
/* 8038E270  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E274  28 03 00 01 */	cmplwi r3, 1
/* 8038E278  40 81 00 A4 */	ble lbl_8038E31C
/* 8038E27C  38 64 F7 F7 */	addi r3, r4, -2057
/* 8038E280  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E284  28 03 00 03 */	cmplwi r3, 3
/* 8038E288  40 81 00 94 */	ble lbl_8038E31C
/* 8038E28C  38 64 F7 EF */	addi r3, r4, -2065
/* 8038E290  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E294  28 03 00 03 */	cmplwi r3, 3
/* 8038E298  40 81 00 84 */	ble lbl_8038E31C
/* 8038E29C  38 64 F7 E7 */	addi r3, r4, -2073
/* 8038E2A0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E2A4  28 03 00 03 */	cmplwi r3, 3
/* 8038E2A8  40 81 00 74 */	ble lbl_8038E31C
/* 8038E2AC  38 64 F7 DF */	addi r3, r4, -2081
/* 8038E2B0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E2B4  28 03 00 03 */	cmplwi r3, 3
/* 8038E2B8  40 81 00 64 */	ble lbl_8038E31C
/* 8038E2BC  38 64 F7 D7 */	addi r3, r4, -2089
/* 8038E2C0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E2C4  28 03 00 03 */	cmplwi r3, 3
/* 8038E2C8  40 81 00 54 */	ble lbl_8038E31C
/* 8038E2CC  38 64 F7 A8 */	addi r3, r4, -2136
/* 8038E2D0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E2D4  28 03 00 03 */	cmplwi r3, 3
/* 8038E2D8  40 81 00 44 */	ble lbl_8038E31C
/* 8038E2DC  38 64 FF A2 */	addi r3, r4, -94
/* 8038E2E0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E2E4  28 03 00 03 */	cmplwi r3, 3
/* 8038E2E8  40 81 00 34 */	ble lbl_8038E31C
/* 8038E2EC  28 04 00 69 */	cmplwi r4, 0x69
/* 8038E2F0  41 82 00 2C */	beq lbl_8038E31C
/* 8038E2F4  38 64 FF 88 */	addi r3, r4, -120
/* 8038E2F8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E2FC  28 03 00 02 */	cmplwi r3, 2
/* 8038E300  40 81 00 1C */	ble lbl_8038E31C
/* 8038E304  38 64 FF 81 */	addi r3, r4, -127
/* 8038E308  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E30C  28 03 00 03 */	cmplwi r3, 3
/* 8038E310  40 81 00 0C */	ble lbl_8038E31C
/* 8038E314  28 04 FE 1A */	cmplwi r4, 0xfe1a
/* 8038E318  40 82 00 DC */	bne lbl_8038E3F4
lbl_8038E31C:
/* 8038E31C  3C 80 43 30 */	lis r4, 0x4330
/* 8038E320  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E324  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E328  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E32C  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E330  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038E334  90 81 00 98 */	stw r4, 0x98(r1)
/* 8038E338  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E33C  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E340  C0 65 19 D0 */	lfs f3, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038E344  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E348  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E34C  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038E350  38 61 00 50 */	addi r3, r1, 0x50
/* 8038E354  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E358  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E35C  90 81 00 90 */	stw r4, 0x90(r1)
/* 8038E360  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E364  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E368  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E36C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E370  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E374  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E378  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E37C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E380  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E384  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E388  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E38C  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E390  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E394  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E398  90 81 00 50 */	stw r4, 0x50(r1)
/* 8038E39C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8038E3A0  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E3A4  90 01 00 58 */	stw r0, 0x58(r1)
/* 8038E3A8  48 00 15 F1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E3AC  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E3B0  3C 60 80 64 */	lis r3, lit_2002@ha /* 0x80641A5C@ha */
/* 8038E3B4  38 83 1A 5C */	addi r4, r3, lit_2002@l /* 0x80641A5C@l */
/* 8038E3B8  38 00 00 00 */	li r0, 0
/* 8038E3BC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8038E3C0  3C 60 80 64 */	lis r3, lit_2000@ha /* 0x80641A54@ha */
/* 8038E3C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8038E3C8  C0 03 1A 54 */	lfs f0, lit_2000@l(r3)  /* 0x80641A54@l */
/* 8038E3CC  38 60 00 01 */	li r3, 1
/* 8038E3D0  EC 22 08 2A */	fadds f1, f2, f1
/* 8038E3D4  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8038E3D8  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8038E3DC  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8038E3E0  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038E3E4  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038E3E8  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E3EC  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E3F0  48 00 06 0C */	b lbl_8038E9FC
lbl_8038E3F4:
/* 8038E3F4  28 04 00 01 */	cmplwi r4, 1
/* 8038E3F8  41 80 00 0C */	blt lbl_8038E404
/* 8038E3FC  28 04 00 04 */	cmplwi r4, 4
/* 8038E400  40 81 00 34 */	ble lbl_8038E434
lbl_8038E404:
/* 8038E404  28 04 00 70 */	cmplwi r4, 0x70
/* 8038E408  41 80 00 0C */	blt lbl_8038E414
/* 8038E40C  28 04 00 73 */	cmplwi r4, 0x73
/* 8038E410  40 81 00 24 */	ble lbl_8038E434
lbl_8038E414:
/* 8038E414  28 04 00 74 */	cmplwi r4, 0x74
/* 8038E418  41 80 00 0C */	blt lbl_8038E424
/* 8038E41C  28 04 00 77 */	cmplwi r4, 0x77
/* 8038E420  40 81 00 14 */	ble lbl_8038E434
lbl_8038E424:
/* 8038E424  28 04 00 7B */	cmplwi r4, 0x7b
/* 8038E428  41 80 01 28 */	blt lbl_8038E550
/* 8038E42C  28 04 00 7E */	cmplwi r4, 0x7e
/* 8038E430  41 81 01 20 */	bgt lbl_8038E550
lbl_8038E434:
/* 8038E434  3C 80 43 30 */	lis r4, 0x4330
/* 8038E438  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E43C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E440  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E444  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E448  3C A0 80 64 */	lis r5, lit_789@ha /* 0x806419D0@ha */
/* 8038E44C  90 81 00 98 */	stw r4, 0x98(r1)
/* 8038E450  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E454  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E458  C0 65 19 D0 */	lfs f3, lit_789@l(r5)  /* 0x806419D0@l */
/* 8038E45C  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E460  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E464  C0 23 19 A4 */	lfs f1, data_806419A4@l(r3)  /* 0x806419A4@l */
/* 8038E468  38 61 00 44 */	addi r3, r1, 0x44
/* 8038E46C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E470  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E474  90 81 00 90 */	stw r4, 0x90(r1)
/* 8038E478  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E47C  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E480  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E484  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E488  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E48C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E490  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E494  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E498  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E49C  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E4A0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E4A4  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E4A8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E4AC  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E4B0  90 81 00 44 */	stw r4, 0x44(r1)
/* 8038E4B4  90 01 00 48 */	stw r0, 0x48(r1)
/* 8038E4B8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E4BC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8038E4C0  48 00 14 D9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E4C4  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E4C8  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8038E4CC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8038E4D0  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E4D4  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8038E4D8  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 8038E4DC  28 00 00 01 */	cmplwi r0, 1
/* 8038E4E0  41 82 00 1C */	beq lbl_8038E4FC
/* 8038E4E4  28 00 00 70 */	cmplwi r0, 0x70
/* 8038E4E8  41 82 00 14 */	beq lbl_8038E4FC
/* 8038E4EC  28 00 00 74 */	cmplwi r0, 0x74
/* 8038E4F0  41 82 00 0C */	beq lbl_8038E4FC
/* 8038E4F4  28 00 00 7B */	cmplwi r0, 0x7b
/* 8038E4F8  40 82 00 28 */	bne lbl_8038E520
lbl_8038E4FC:
/* 8038E4FC  3C 80 80 64 */	lis r4, lit_802@ha /* 0x806419E4@ha */
/* 8038E500  3C 60 80 64 */	lis r3, lit_1695@ha /* 0x80641A4C@ha */
/* 8038E504  C0 04 19 E4 */	lfs f0, lit_802@l(r4)  /* 0x806419E4@l */
/* 8038E508  C0 23 1A 4C */	lfs f1, lit_1695@l(r3)  /* 0x80641A4C@l */
/* 8038E50C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E510  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038E514  EC 01 00 2A */	fadds f0, f1, f0
/* 8038E518  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8038E51C  48 00 00 24 */	b lbl_8038E540
lbl_8038E520:
/* 8038E520  3C 80 80 64 */	lis r4, lit_2003@ha /* 0x80641A60@ha */
/* 8038E524  3C 60 80 64 */	lis r3, lit_1695@ha /* 0x80641A4C@ha */
/* 8038E528  C0 04 1A 60 */	lfs f0, lit_2003@l(r4)  /* 0x80641A60@l */
/* 8038E52C  C0 23 1A 4C */	lfs f1, lit_1695@l(r3)  /* 0x80641A4C@l */
/* 8038E530  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E534  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038E538  EC 01 00 2A */	fadds f0, f1, f0
/* 8038E53C  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_8038E540:
/* 8038E540  38 00 00 00 */	li r0, 0
/* 8038E544  38 60 00 01 */	li r3, 1
/* 8038E548  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E54C  48 00 04 B0 */	b lbl_8038E9FC
lbl_8038E550:
/* 8038E550  28 04 00 63 */	cmplwi r4, 0x63
/* 8038E554  41 80 00 0C */	blt lbl_8038E560
/* 8038E558  28 04 00 67 */	cmplwi r4, 0x67
/* 8038E55C  40 81 00 1C */	ble lbl_8038E578
lbl_8038E560:
/* 8038E560  28 04 00 6A */	cmplwi r4, 0x6a
/* 8038E564  41 80 00 0C */	blt lbl_8038E570
/* 8038E568  28 04 00 6E */	cmplwi r4, 0x6e
/* 8038E56C  40 81 00 0C */	ble lbl_8038E578
lbl_8038E570:
/* 8038E570  28 04 00 6F */	cmplwi r4, 0x6f
/* 8038E574  40 82 00 E0 */	bne lbl_8038E654
lbl_8038E578:
/* 8038E578  3C A0 43 30 */	lis r5, 0x4330
/* 8038E57C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E580  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E584  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E588  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E58C  3C 80 80 64 */	lis r4, lit_789@ha /* 0x806419D0@ha */
/* 8038E590  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8038E594  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E598  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E59C  C0 64 19 D0 */	lfs f3, lit_789@l(r4)  /* 0x806419D0@l */
/* 8038E5A0  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E5A4  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E5A8  38 83 19 A4 */	addi r4, r3, data_806419A4@l /* 0x806419A4@l */
/* 8038E5AC  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E5B0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E5B4  90 A1 00 90 */	stw r5, 0x90(r1)
/* 8038E5B8  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038E5BC  38 61 00 38 */	addi r3, r1, 0x38
/* 8038E5C0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E5C4  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E5C8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E5CC  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E5D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E5D4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E5D8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E5DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E5E0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E5E4  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E5E8  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E5EC  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E5F0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E5F4  90 81 00 38 */	stw r4, 0x38(r1)
/* 8038E5F8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8038E5FC  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E600  90 01 00 40 */	stw r0, 0x40(r1)
/* 8038E604  48 00 13 95 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E608  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E60C  3C 60 80 64 */	lis r3, lit_2000@ha /* 0x80641A54@ha */
/* 8038E610  38 A3 1A 54 */	addi r5, r3, lit_2000@l /* 0x80641A54@l */
/* 8038E614  3C 60 80 64 */	lis r3, lit_2004@ha /* 0x80641A64@ha */
/* 8038E618  80 DF 00 20 */	lwz r6, 0x20(r31)
/* 8038E61C  38 83 1A 64 */	addi r4, r3, lit_2004@l /* 0x80641A64@l */
/* 8038E620  C0 05 00 00 */	lfs f0, 0(r5)
/* 8038E624  38 00 00 00 */	li r0, 0
/* 8038E628  90 DE 00 18 */	stw r6, 0x18(r30)
/* 8038E62C  38 60 00 01 */	li r3, 1
/* 8038E630  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038E634  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038E638  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038E63C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E640  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038E644  EC 01 00 2A */	fadds f0, f1, f0
/* 8038E648  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8038E64C  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E650  48 00 03 AC */	b lbl_8038E9FC
lbl_8038E654:
/* 8038E654  3C 64 FF FF */	addis r3, r4, 0xffff
/* 8038E658  38 63 0F FF */	addi r3, r3, 0xfff
/* 8038E65C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8038E660  28 03 00 02 */	cmplwi r3, 2
/* 8038E664  40 81 00 0C */	ble lbl_8038E670
/* 8038E668  28 04 F0 04 */	cmplwi r4, 0xf004
/* 8038E66C  40 82 00 E0 */	bne lbl_8038E74C
lbl_8038E670:
/* 8038E670  3C A0 43 30 */	lis r5, 0x4330
/* 8038E674  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E678  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E67C  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E680  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E684  3C 80 80 64 */	lis r4, lit_789@ha /* 0x806419D0@ha */
/* 8038E688  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8038E68C  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E690  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E694  C0 64 19 D0 */	lfs f3, lit_789@l(r4)  /* 0x806419D0@l */
/* 8038E698  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E69C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E6A0  38 83 19 A4 */	addi r4, r3, data_806419A4@l /* 0x806419A4@l */
/* 8038E6A4  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E6A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E6AC  90 A1 00 90 */	stw r5, 0x90(r1)
/* 8038E6B0  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038E6B4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8038E6B8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E6BC  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E6C0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E6C4  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E6C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E6CC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E6D0  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E6D4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E6D8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E6DC  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E6E0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E6E4  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E6E8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E6EC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8038E6F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8038E6F4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E6F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8038E6FC  48 00 12 9D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E700  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E704  3C 60 80 64 */	lis r3, lit_2005@ha /* 0x80641A68@ha */
/* 8038E708  38 A3 1A 68 */	addi r5, r3, lit_2005@l /* 0x80641A68@l */
/* 8038E70C  3C 60 80 64 */	lis r3, lit_2006@ha /* 0x80641A6C@ha */
/* 8038E710  80 DF 00 20 */	lwz r6, 0x20(r31)
/* 8038E714  38 83 1A 6C */	addi r4, r3, lit_2006@l /* 0x80641A6C@l */
/* 8038E718  C0 05 00 00 */	lfs f0, 0(r5)
/* 8038E71C  38 00 00 00 */	li r0, 0
/* 8038E720  90 DE 00 18 */	stw r6, 0x18(r30)
/* 8038E724  38 60 00 01 */	li r3, 1
/* 8038E728  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038E72C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038E730  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038E734  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E738  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038E73C  EC 01 00 2A */	fadds f0, f1, f0
/* 8038E740  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8038E744  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E748  48 00 02 B4 */	b lbl_8038E9FC
lbl_8038E74C:
/* 8038E74C  28 04 F1 02 */	cmplwi r4, 0xf102
/* 8038E750  41 82 00 14 */	beq lbl_8038E764
/* 8038E754  28 04 09 00 */	cmplwi r4, 0x900
/* 8038E758  41 80 00 E0 */	blt lbl_8038E838
/* 8038E75C  28 04 09 20 */	cmplwi r4, 0x920
/* 8038E760  41 81 00 D8 */	bgt lbl_8038E838
lbl_8038E764:
/* 8038E764  3C A0 43 30 */	lis r5, 0x4330
/* 8038E768  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E76C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E770  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E774  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E778  3C 80 80 64 */	lis r4, lit_789@ha /* 0x806419D0@ha */
/* 8038E77C  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8038E780  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E784  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E788  C0 64 19 D0 */	lfs f3, lit_789@l(r4)  /* 0x806419D0@l */
/* 8038E78C  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E790  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E794  38 83 19 A4 */	addi r4, r3, data_806419A4@l /* 0x806419A4@l */
/* 8038E798  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E79C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E7A0  90 A1 00 90 */	stw r5, 0x90(r1)
/* 8038E7A4  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038E7A8  38 61 00 20 */	addi r3, r1, 0x20
/* 8038E7AC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E7B0  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E7B4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E7B8  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E7BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E7C0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E7C4  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E7C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E7CC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E7D0  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E7D4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E7D8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E7DC  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E7E0  90 81 00 20 */	stw r4, 0x20(r1)
/* 8038E7E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038E7E8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E7EC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8038E7F0  48 00 11 A9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E7F4  3C 80 80 64 */	lis r4, lit_2000@ha /* 0x80641A54@ha */
/* 8038E7F8  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E7FC  C0 04 1A 54 */	lfs f0, lit_2000@l(r4)  /* 0x80641A54@l */
/* 8038E800  3C 60 80 64 */	lis r3, lit_2007@ha /* 0x80641A70@ha */
/* 8038E804  C0 23 1A 70 */	lfs f1, lit_2007@l(r3)  /* 0x80641A70@l */
/* 8038E808  38 00 00 00 */	li r0, 0
/* 8038E80C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E810  38 60 00 01 */	li r3, 1
/* 8038E814  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038E818  EC 01 00 2A */	fadds f0, f1, f0
/* 8038E81C  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8038E820  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8038E824  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8038E828  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038E82C  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038E830  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E834  48 00 01 C8 */	b lbl_8038E9FC
lbl_8038E838:
/* 8038E838  28 04 FE 30 */	cmplwi r4, 0xfe30
/* 8038E83C  40 82 00 D8 */	bne lbl_8038E914
/* 8038E840  3C A0 43 30 */	lis r5, 0x4330
/* 8038E844  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E848  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E84C  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E850  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E854  3C 80 80 64 */	lis r4, lit_789@ha /* 0x806419D0@ha */
/* 8038E858  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8038E85C  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E860  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E864  C0 64 19 D0 */	lfs f3, lit_789@l(r4)  /* 0x806419D0@l */
/* 8038E868  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E86C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E870  38 83 19 A4 */	addi r4, r3, data_806419A4@l /* 0x806419A4@l */
/* 8038E874  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E878  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E87C  90 A1 00 90 */	stw r5, 0x90(r1)
/* 8038E880  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038E884  38 61 00 14 */	addi r3, r1, 0x14
/* 8038E888  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E88C  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E890  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E894  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E898  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E89C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E8A0  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E8A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E8A8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E8AC  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E8B0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E8B4  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E8B8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E8BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 8038E8C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8038E8C4  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E8C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8038E8CC  48 00 10 CD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E8D0  3C 80 80 64 */	lis r4, lit_802@ha /* 0x806419E4@ha */
/* 8038E8D4  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E8D8  C0 04 19 E4 */	lfs f0, lit_802@l(r4)  /* 0x806419E4@l */
/* 8038E8DC  3C 60 80 64 */	lis r3, lit_2007@ha /* 0x80641A70@ha */
/* 8038E8E0  C0 23 1A 70 */	lfs f1, lit_2007@l(r3)  /* 0x80641A70@l */
/* 8038E8E4  38 00 00 00 */	li r0, 0
/* 8038E8E8  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E8EC  38 60 00 01 */	li r3, 1
/* 8038E8F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038E8F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8038E8F8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8038E8FC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8038E900  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8038E904  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038E908  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038E90C  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E910  48 00 00 EC */	b lbl_8038E9FC
lbl_8038E914:
/* 8038E914  28 04 F1 14 */	cmplwi r4, 0xf114
/* 8038E918  41 82 00 0C */	beq lbl_8038E924
/* 8038E91C  28 04 F1 22 */	cmplwi r4, 0xf122
/* 8038E920  40 82 00 D8 */	bne lbl_8038E9F8
lbl_8038E924:
/* 8038E924  3C A0 43 30 */	lis r5, 0x4330
/* 8038E928  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E92C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8038E930  3C 60 80 64 */	lis r3, lit_793@ha /* 0x806419DC@ha */
/* 8038E934  C8 43 19 DC */	lfd f2, lit_793@l(r3)  /* 0x806419DC@l */
/* 8038E938  3C 80 80 64 */	lis r4, lit_789@ha /* 0x806419D0@ha */
/* 8038E93C  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8038E940  3C 60 80 64 */	lis r3, lit_790@ha /* 0x806419D4@ha */
/* 8038E944  38 C3 19 D4 */	addi r6, r3, lit_790@l /* 0x806419D4@l */
/* 8038E948  C0 64 19 D0 */	lfs f3, lit_789@l(r4)  /* 0x806419D0@l */
/* 8038E94C  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8038E950  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038E954  38 83 19 A4 */	addi r4, r3, data_806419A4@l /* 0x806419A4@l */
/* 8038E958  C0 86 00 00 */	lfs f4, 0(r6)
/* 8038E95C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E960  90 A1 00 90 */	stw r5, 0x90(r1)
/* 8038E964  C0 24 00 00 */	lfs f1, 0(r4)
/* 8038E968  38 61 00 08 */	addi r3, r1, 8
/* 8038E96C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E970  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E974  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8038E978  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 8038E97C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8038E980  90 01 00 94 */	stw r0, 0x94(r1)
/* 8038E984  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8038E988  EC 00 10 28 */	fsubs f0, f0, f2
/* 8038E98C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8038E990  EC 04 00 2A */	fadds f0, f4, f0
/* 8038E994  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8038E998  80 9E 00 00 */	lwz r4, 0(r30)
/* 8038E99C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8038E9A0  90 81 00 08 */	stw r4, 8(r1)
/* 8038E9A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8038E9A8  80 1E 00 08 */	lwz r0, 8(r30)
/* 8038E9AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8038E9B0  48 00 0F E9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 8038E9B4  3C 80 80 64 */	lis r4, lit_2000@ha /* 0x80641A54@ha */
/* 8038E9B8  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8038E9BC  C0 04 1A 54 */	lfs f0, lit_2000@l(r4)  /* 0x80641A54@l */
/* 8038E9C0  3C 60 80 64 */	lis r3, lit_2008@ha /* 0x80641A74@ha */
/* 8038E9C4  C0 23 1A 74 */	lfs f1, lit_2008@l(r3)  /* 0x80641A74@l */
/* 8038E9C8  38 00 00 00 */	li r0, 0
/* 8038E9CC  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8038E9D0  38 60 00 01 */	li r3, 1
/* 8038E9D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8038E9D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8038E9DC  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8038E9E0  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8038E9E4  90 9E 00 18 */	stw r4, 0x18(r30)
/* 8038E9E8  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 8038E9EC  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8038E9F0  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 8038E9F4  48 00 00 08 */	b lbl_8038E9FC
lbl_8038E9F8:
/* 8038E9F8  38 60 00 00 */	li r3, 0
lbl_8038E9FC:
/* 8038E9FC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8038EA00  4B D0 C5 15 */	bl func_8009AF14
/* 8038EA04  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8038EA08  7C 08 03 A6 */	mtlr r0
/* 8038EA0C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8038EA10  4E 80 00 20 */	blr 
