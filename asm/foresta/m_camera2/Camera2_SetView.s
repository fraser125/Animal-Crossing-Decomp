lbl_8037DF3C:
/* 8037DF3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037DF40  7C 08 02 A6 */	mflr r0
/* 8037DF44  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037DF48  39 61 00 30 */	addi r11, r1, 0x30
/* 8037DF4C  4B D1 CF 85 */	bl func_8009AED0
/* 8037DF50  7C 7C 1B 78 */	mr r28, r3
/* 8037DF54  3B FC 1B 88 */	addi r31, r28, 0x1b88
/* 8037DF58  3B BF 00 0C */	addi r29, r31, 0xc
/* 8037DF5C  3B DC 1A 68 */	addi r30, r28, 0x1a68
/* 8037DF60  7F E3 FB 78 */	mr r3, r31
/* 8037DF64  7F A4 EB 78 */	mr r4, r29
/* 8037DF68  48 08 AF AD */	bl Math3DLength
/* 8037DF6C  FC 20 0A 10 */	fabs f1, f1
/* 8037DF70  3C 60 80 64 */	lis r3, data_8064134C@ha /* 0x8064134C@ha */
/* 8037DF74  C0 03 13 4C */	lfs f0, data_8064134C@l(r3)  /* 0x8064134C@l */
/* 8037DF78  FC 20 08 18 */	frsp f1, f1
/* 8037DF7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037DF80  40 80 00 18 */	bge lbl_8037DF98
/* 8037DF84  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037DF88  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8037DF8C  C0 23 13 6C */	lfs f1, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037DF90  EC 01 00 2A */	fadds f0, f1, f0
/* 8037DF94  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8037DF98:
/* 8037DF98  7F 83 E3 78 */	mr r3, r28
/* 8037DF9C  4B FF FB 0D */	bl Camera2_CheckInDoorNearFar
/* 8037DFA0  2C 03 00 00 */	cmpwi r3, 0
/* 8037DFA4  41 82 00 20 */	beq lbl_8037DFC4
/* 8037DFA8  3C 80 80 64 */	lis r4, lit_555@ha /* 0x80641374@ha */
/* 8037DFAC  3C 60 80 64 */	lis r3, lit_556@ha /* 0x80641378@ha */
/* 8037DFB0  C0 24 13 74 */	lfs f1, lit_555@l(r4)  /* 0x80641374@l */
/* 8037DFB4  C0 03 13 78 */	lfs f0, lit_556@l(r3)  /* 0x80641378@l */
/* 8037DFB8  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8037DFBC  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8037DFC0  48 00 00 80 */	b lbl_8037E040
lbl_8037DFC4:
/* 8037DFC4  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 8037DFC8  2C 00 00 06 */	cmpwi r0, 6
/* 8037DFCC  41 82 00 74 */	beq lbl_8037E040
/* 8037DFD0  7F 83 E3 78 */	mr r3, r28
/* 8037DFD4  48 05 B6 6D */	bl get_player_actor_withoutCheck
/* 8037DFD8  7C 64 1B 78 */	mr r4, r3
/* 8037DFDC  7F E3 FB 78 */	mr r3, r31
/* 8037DFE0  38 84 00 28 */	addi r4, r4, 0x28
/* 8037DFE4  48 08 AF 31 */	bl Math3DLength
/* 8037DFE8  3C 60 80 64 */	lis r3, lit_557@ha /* 0x8064137C@ha */
/* 8037DFEC  C0 03 13 7C */	lfs f0, lit_557@l(r3)  /* 0x8064137C@l */
/* 8037DFF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037DFF4  40 80 00 24 */	bge lbl_8037E018
/* 8037DFF8  3C 60 80 64 */	lis r3, lit_558@ha /* 0x80641380@ha */
/* 8037DFFC  3C 80 80 64 */	lis r4, lit_559@ha /* 0x80641384@ha */
/* 8037E000  38 A3 13 80 */	addi r5, r3, lit_558@l /* 0x80641380@l */
/* 8037E004  C0 44 13 84 */	lfs f2, lit_559@l(r4)  /* 0x80641384@l */
/* 8037E008  C0 25 00 00 */	lfs f1, 0(r5)
/* 8037E00C  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8037E010  48 03 CC 59 */	bl chase_f
/* 8037E014  48 00 00 20 */	b lbl_8037E034
lbl_8037E018:
/* 8037E018  3C 60 80 64 */	lis r3, lit_560@ha /* 0x80641388@ha */
/* 8037E01C  3C 80 80 64 */	lis r4, lit_559@ha /* 0x80641384@ha */
/* 8037E020  38 A3 13 88 */	addi r5, r3, lit_560@l /* 0x80641388@l */
/* 8037E024  C0 44 13 84 */	lfs f2, lit_559@l(r4)  /* 0x80641384@l */
/* 8037E028  C0 25 00 00 */	lfs f1, 0(r5)
/* 8037E02C  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8037E030  48 03 CC 39 */	bl chase_f
lbl_8037E034:
/* 8037E034  3C 60 80 64 */	lis r3, lit_556@ha /* 0x80641378@ha */
/* 8037E038  C0 03 13 78 */	lfs f0, lit_556@l(r3)  /* 0x80641378@l */
/* 8037E03C  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_8037E040:
/* 8037E040  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8037E044  3C 60 80 64 */	lis r3, data_8064134C@ha /* 0x8064134C@ha */
/* 8037E048  C0 03 13 4C */	lfs f0, data_8064134C@l(r3)  /* 0x8064134C@l */
/* 8037E04C  FC 20 12 10 */	fabs f1, f2
/* 8037E050  FC 20 08 18 */	frsp f1, f1
/* 8037E054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E058  40 80 00 14 */	bge lbl_8037E06C
/* 8037E05C  3C 60 80 64 */	lis r3, lit_508@ha /* 0x8064136C@ha */
/* 8037E060  C0 03 13 6C */	lfs f0, lit_508@l(r3)  /* 0x8064136C@l */
/* 8037E064  EC 02 00 2A */	fadds f0, f2, f0
/* 8037E068  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_8037E06C:
/* 8037E06C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8037E070  7F C3 F3 78 */	mr r3, r30
/* 8037E074  48 07 5E C5 */	bl setScaleView
/* 8037E078  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8037E07C  7F C3 F3 78 */	mr r3, r30
/* 8037E080  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8037E084  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 8037E088  48 07 5E C5 */	bl setPerspectiveView
/* 8037E08C  7F A3 EB 78 */	mr r3, r29
/* 8037E090  38 9F 01 2C */	addi r4, r31, 0x12c
/* 8037E094  38 A1 00 14 */	addi r5, r1, 0x14
/* 8037E098  48 03 CE AD */	bl xyz_t_add
/* 8037E09C  7F E3 FB 78 */	mr r3, r31
/* 8037E0A0  38 9F 01 20 */	addi r4, r31, 0x120
/* 8037E0A4  38 A1 00 08 */	addi r5, r1, 8
/* 8037E0A8  48 03 CE 9D */	bl xyz_t_add
/* 8037E0AC  7F C3 F3 78 */	mr r3, r30
/* 8037E0B0  38 81 00 08 */	addi r4, r1, 8
/* 8037E0B4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8037E0B8  38 DF 00 18 */	addi r6, r31, 0x18
/* 8037E0BC  48 07 5D F5 */	bl setLookAtView
/* 8037E0C0  39 61 00 30 */	addi r11, r1, 0x30
/* 8037E0C4  4B D1 CE 59 */	bl func_8009AF1C
/* 8037E0C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037E0CC  7C 08 03 A6 */	mtlr r0
/* 8037E0D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8037E0D4  4E 80 00 20 */	blr 
