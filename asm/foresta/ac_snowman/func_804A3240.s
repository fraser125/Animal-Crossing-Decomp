lbl_804A3240:
/* 804A3240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A3244  7C 08 02 A6 */	mflr r0
/* 804A3248  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A324C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A3250  4B BF 7C 85 */	bl func_8009AED4
/* 804A3254  7C 7E 1B 78 */	mr r30, r3
/* 804A3258  3C 60 80 69 */	lis r3, data_8068E7E8@ha /* 0x8068E7E8@ha */
/* 804A325C  A0 1E 00 06 */	lhz r0, 6(r30)
/* 804A3260  7C 9D 23 78 */	mr r29, r4
/* 804A3264  3B E3 E7 E8 */	addi r31, r3, data_8068E7E8@l /* 0x8068E7E8@l */
/* 804A3268  28 00 80 0D */	cmplwi r0, 0x800d
/* 804A326C  40 82 00 40 */	bne lbl_804A32AC
/* 804A3270  38 60 00 3E */	li r3, 0x3e
/* 804A3274  38 80 00 00 */	li r4, 0
/* 804A3278  4B EF AE 65 */	bl mEv_get_common_area
/* 804A327C  28 03 00 00 */	cmplwi r3, 0
/* 804A3280  41 82 00 10 */	beq lbl_804A3290
/* 804A3284  C0 03 00 00 */	lfs f0, 0(r3)
/* 804A3288  D0 1E 01 D8 */	stfs f0, 0x1d8(r30)
/* 804A328C  48 00 00 58 */	b lbl_804A32E4
lbl_804A3290:
/* 804A3290  38 60 00 3E */	li r3, 0x3e
/* 804A3294  38 80 00 00 */	li r4, 0
/* 804A3298  4B EF AD 5D */	bl mEv_reserve_common_area
/* 804A329C  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A32A0  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A32A4  D0 1E 01 D8 */	stfs f0, 0x1d8(r30)
/* 804A32A8  48 00 00 3C */	b lbl_804A32E4
lbl_804A32AC:
/* 804A32AC  38 60 00 3E */	li r3, 0x3e
/* 804A32B0  38 80 00 01 */	li r4, 1
/* 804A32B4  4B EF AE 29 */	bl mEv_get_common_area
/* 804A32B8  28 03 00 00 */	cmplwi r3, 0
/* 804A32BC  41 82 00 10 */	beq lbl_804A32CC
/* 804A32C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 804A32C4  D0 1E 01 D8 */	stfs f0, 0x1d8(r30)
/* 804A32C8  48 00 00 1C */	b lbl_804A32E4
lbl_804A32CC:
/* 804A32CC  38 60 00 3E */	li r3, 0x3e
/* 804A32D0  38 80 00 01 */	li r4, 1
/* 804A32D4  4B EF AD 21 */	bl mEv_reserve_common_area
/* 804A32D8  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A32DC  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A32E0  D0 1E 01 D8 */	stfs f0, 0x1d8(r30)
lbl_804A32E4:
/* 804A32E4  3C 60 80 64 */	lis r3, lit_469@ha /* 0x80645C90@ha */
/* 804A32E8  3C A0 80 64 */	lis r5, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A32EC  C0 43 5C 90 */	lfs f2, lit_469@l(r3)  /* 0x80645C90@l */
/* 804A32F0  3C 80 80 37 */	lis r4, mAc_ActorShadowEllipse@ha /* 0x80376F88@ha */
/* 804A32F4  C0 25 5C 8C */	lfs f1, data_80645C8C@l(r5)  /* 0x80645C8C@l */
/* 804A32F8  38 84 6F 88 */	addi r4, r4, mAc_ActorShadowEllipse@l /* 0x80376F88@l */
/* 804A32FC  FC 60 10 90 */	fmr f3, f2
/* 804A3300  7F C3 F3 78 */	mr r3, r30
/* 804A3304  4B ED 10 ED */	bl Shape_Info_init
/* 804A3308  7F A3 EB 78 */	mr r3, r29
/* 804A330C  38 9E 01 74 */	addi r4, r30, 0x174
/* 804A3310  4B EF 13 09 */	bl ClObjPipe_ct
/* 804A3314  7F A3 EB 78 */	mr r3, r29
/* 804A3318  7F C5 F3 78 */	mr r5, r30
/* 804A331C  38 9E 01 74 */	addi r4, r30, 0x174
/* 804A3320  38 DF 00 24 */	addi r6, r31, 0x24
/* 804A3324  4B EF 13 8D */	bl ClObjPipe_set5
/* 804A3328  38 7E 00 C4 */	addi r3, r30, 0xc4
/* 804A332C  38 9F 00 34 */	addi r4, r31, 0x34
/* 804A3330  4B EF 26 99 */	bl CollisionCheck_Status_set3
/* 804A3334  38 A0 00 00 */	li r5, 0
/* 804A3338  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000800D@ha */
/* 804A333C  90 BE 01 94 */	stw r5, 0x194(r30)
/* 804A3340  38 03 80 0D */	addi r0, r3, 0x800D /* 0x0000800D@l */
/* 804A3344  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80645C94@ha */
/* 804A3348  3C 60 80 64 */	lis r3, lit_471@ha /* 0x80645C98@ha */
/* 804A334C  B0 BE 01 FA */	sth r5, 0x1fa(r30)
/* 804A3350  38 E4 5C 94 */	addi r7, r4, lit_470@l /* 0x80645C94@l */
/* 804A3354  38 C3 5C 98 */	addi r6, r3, lit_471@l /* 0x80645C98@l */
/* 804A3358  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A335C  A0 9E 00 06 */	lhz r4, 6(r30)
/* 804A3360  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804A3364  38 A3 5C 8C */	addi r5, r3, data_80645C8C@l /* 0x80645C8C@l */
/* 804A3368  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80645C9C@ha */
/* 804A336C  7D 24 00 50 */	subf r9, r4, r0
/* 804A3370  39 1F 00 40 */	addi r8, r31, 0x40
/* 804A3374  30 09 FF FF */	addic r0, r9, -1
/* 804A3378  38 83 5C 9C */	addi r4, r3, lit_472@l /* 0x80645C9C@l */
/* 804A337C  7C 00 49 10 */	subfe r0, r0, r9
/* 804A3380  C0 67 00 00 */	lfs f3, 0(r7)
/* 804A3384  54 00 10 3A */	slwi r0, r0, 2
/* 804A3388  C0 46 00 00 */	lfs f2, 0(r6)
/* 804A338C  7C 08 00 2E */	lwzx r0, r8, r0
/* 804A3390  7F C3 F3 78 */	mr r3, r30
/* 804A3394  C0 25 00 00 */	lfs f1, 0(r5)
/* 804A3398  90 1E 01 E8 */	stw r0, 0x1e8(r30)
/* 804A339C  C0 04 00 00 */	lfs f0, 0(r4)
/* 804A33A0  D0 7E 00 7C */	stfs f3, 0x7c(r30)
/* 804A33A4  D0 5E 00 78 */	stfs f2, 0x78(r30)
/* 804A33A8  D0 3E 00 74 */	stfs f1, 0x74(r30)
/* 804A33AC  D0 3E 01 C4 */	stfs f1, 0x1c4(r30)
/* 804A33B0  D0 1E 01 C8 */	stfs f0, 0x1c8(r30)
/* 804A33B4  D0 3E 01 CC */	stfs f1, 0x1cc(r30)
/* 804A33B8  48 00 24 7D */	bl aSMAN_process_normal_init
/* 804A33BC  3C 60 80 64 */	lis r3, lit_473@ha /* 0x80645CA0@ha */
/* 804A33C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804A33C4  C0 03 5C A0 */	lfs f0, lit_473@l(r3)  /* 0x80645CA0@l */
/* 804A33C8  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 804A33CC  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 804A33D0  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 804A33D4  4B BF 7B 4D */	bl func_8009AF20
/* 804A33D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A33DC  7C 08 03 A6 */	mtlr r0
/* 804A33E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804A33E4  4E 80 00 20 */	blr 
