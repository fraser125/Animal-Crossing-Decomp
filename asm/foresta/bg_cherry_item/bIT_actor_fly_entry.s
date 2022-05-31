lbl_804B3024:
/* 804B3024  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 804B3028  7C 08 02 A6 */	mflr r0
/* 804B302C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 804B3030  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804B3034  4B BE 7E 9D */	bl func_8009AED0
/* 804B3038  7C BD 2B 78 */	mr r29, r5
/* 804B303C  7C 7C 1B 78 */	mr r28, r3
/* 804B3040  7C 9F 23 78 */	mr r31, r4
/* 804B3044  7F A3 EB 78 */	mr r3, r29
/* 804B3048  4B F0 7A A9 */	bl sin_s
/* 804B304C  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80645FF0@ha */
/* 804B3050  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804B3054  38 83 5F F0 */	addi r4, r3, lit_633@l /* 0x80645FF0@l */
/* 804B3058  7F A3 EB 78 */	mr r3, r29
/* 804B305C  C0 44 00 00 */	lfs f2, 0(r4)
/* 804B3060  EC 22 00 72 */	fmuls f1, f2, f1
/* 804B3064  EC 00 08 2A */	fadds f0, f0, f1
/* 804B3068  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804B306C  4B F0 7A 31 */	bl cos_s
/* 804B3070  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80645FF0@ha */
/* 804B3074  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804B3078  C0 43 5F F0 */	lfs f2, lit_633@l(r3)  /* 0x80645FF0@l */
/* 804B307C  57 80 04 3F */	clrlwi. r0, r28, 0x10
/* 804B3080  EC 22 00 72 */	fmuls f1, f2, f1
/* 804B3084  EC 00 08 2A */	fadds f0, f0, f1
/* 804B3088  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B308C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804B3090  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B3094  41 82 00 34 */	beq lbl_804B30C8
/* 804B3098  28 00 FF FF */	cmplwi r0, 0xffff
/* 804B309C  41 82 00 2C */	beq lbl_804B30C8
/* 804B30A0  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B30A4  38 81 00 08 */	addi r4, r1, 8
/* 804B30A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B30AC  38 60 00 00 */	li r3, 0
/* 804B30B0  38 A0 00 01 */	li r5, 1
/* 804B30B4  90 C1 00 08 */	stw r6, 8(r1)
/* 804B30B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B30BC  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B30C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B30C4  4B EF 47 6D */	bl mFI_SetFG_common
lbl_804B30C8:
/* 804B30C8  3B C1 00 40 */	addi r30, r1, 0x40
/* 804B30CC  B3 81 00 3A */	sth r28, 0x3a(r1)
/* 804B30D0  7F C3 F3 78 */	mr r3, r30
/* 804B30D4  7F E4 FB 78 */	mr r4, r31
/* 804B30D8  4B F0 7D E5 */	bl xyz_t_move
/* 804B30DC  3B E1 00 4C */	addi r31, r1, 0x4c
/* 804B30E0  38 81 00 20 */	addi r4, r1, 0x20
/* 804B30E4  7F E3 FB 78 */	mr r3, r31
/* 804B30E8  4B F0 7D D5 */	bl xyz_t_move
/* 804B30EC  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646030@ha */
/* 804B30F0  38 A0 00 07 */	li r5, 7
/* 804B30F4  C0 03 60 30 */	lfs f0, lit_1188@l(r3)  /* 0x80646030@l */
/* 804B30F8  38 80 00 11 */	li r4, 0x11
/* 804B30FC  38 60 00 00 */	li r3, 0
/* 804B3100  7F A0 07 35 */	extsh. r0, r29
/* 804B3104  B0 A1 00 A4 */	sth r5, 0xa4(r1)
/* 804B3108  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 804B310C  B0 81 00 9C */	sth r4, 0x9c(r1)
/* 804B3110  B0 61 00 BE */	sth r3, 0xbe(r1)
/* 804B3114  40 81 00 10 */	ble lbl_804B3124
/* 804B3118  38 00 00 74 */	li r0, 0x74
/* 804B311C  B0 01 00 98 */	sth r0, 0x98(r1)
/* 804B3120  48 00 00 0C */	b lbl_804B312C
lbl_804B3124:
/* 804B3124  38 00 00 34 */	li r0, 0x34
/* 804B3128  B0 01 00 98 */	sth r0, 0x98(r1)
lbl_804B312C:
/* 804B312C  A0 01 00 98 */	lhz r0, 0x98(r1)
/* 804B3130  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804B3134  41 82 00 1C */	beq lbl_804B3150
/* 804B3138  3C 60 80 64 */	lis r3, lit_1311@ha /* 0x80646034@ha */
/* 804B313C  38 00 00 1A */	li r0, 0x1a
/* 804B3140  C0 03 60 34 */	lfs f0, lit_1311@l(r3)  /* 0x80646034@l */
/* 804B3144  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 804B3148  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804B314C  48 00 00 18 */	b lbl_804B3164
lbl_804B3150:
/* 804B3150  3C 60 80 64 */	lis r3, lit_1312@ha /* 0x80646038@ha */
/* 804B3154  38 00 00 11 */	li r0, 0x11
/* 804B3158  C0 03 60 38 */	lfs f0, lit_1312@l(r3)  /* 0x80646038@l */
/* 804B315C  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 804B3160  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_804B3164:
/* 804B3164  A0 61 00 3A */	lhz r3, 0x3a(r1)
/* 804B3168  38 00 00 00 */	li r0, 0
/* 804B316C  B0 01 00 9A */	sth r0, 0x9a(r1)
/* 804B3170  28 03 00 08 */	cmplwi r3, 8
/* 804B3174  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 804B3178  B0 01 00 AC */	sth r0, 0xac(r1)
/* 804B317C  41 80 00 0C */	blt lbl_804B3188
/* 804B3180  28 03 00 0A */	cmplwi r3, 0xa
/* 804B3184  40 81 00 14 */	ble lbl_804B3198
lbl_804B3188:
/* 804B3188  28 03 25 14 */	cmplwi r3, 0x2514
/* 804B318C  41 80 00 24 */	blt lbl_804B31B0
/* 804B3190  28 03 25 1B */	cmplwi r3, 0x251b
/* 804B3194  41 81 00 1C */	bgt lbl_804B31B0
lbl_804B3198:
/* 804B3198  7F E5 FB 78 */	mr r5, r31
/* 804B319C  38 81 00 14 */	addi r4, r1, 0x14
/* 804B31A0  4B FF DD 31 */	bl bIT_actor_rand_pos_get_plus
/* 804B31A4  7F E3 FB 78 */	mr r3, r31
/* 804B31A8  38 81 00 14 */	addi r4, r1, 0x14
/* 804B31AC  4B F0 7D 11 */	bl xyz_t_move
lbl_804B31B0:
/* 804B31B0  7F E3 FB 78 */	mr r3, r31
/* 804B31B4  7F C4 F3 78 */	mr r4, r30
/* 804B31B8  4B F0 7E D5 */	bl search_position_distanceXZ
/* 804B31BC  A8 81 00 7C */	lha r4, 0x7c(r1)
/* 804B31C0  3C 00 43 30 */	lis r0, 0x4330
/* 804B31C4  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064600C@ha */
/* 804B31C8  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 804B31CC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804B31D0  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 804B31D4  90 01 00 DC */	stw r0, 0xdc(r1)
/* 804B31D8  38 83 60 0C */	addi r4, r3, lit_770@l /* 0x8064600C@l */
/* 804B31DC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 804B31E0  38 61 00 8C */	addi r3, r1, 0x8c
/* 804B31E4  C8 64 00 00 */	lfd f3, 0(r4)
/* 804B31E8  38 81 00 90 */	addi r4, r1, 0x90
/* 804B31EC  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 804B31F0  EC 44 10 28 */	fsubs f2, f4, f2
/* 804B31F4  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 804B31F8  EC 60 18 28 */	fsubs f3, f0, f3
/* 804B31FC  4B FF E7 25 */	bl func_calc_spec_drop_time
/* 804B3200  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B3204  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B3208  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B320C  3C 63 00 02 */	addis r3, r3, 2
/* 804B3210  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804B3214  80 63 00 00 */	lwz r3, 0(r3)
/* 804B3218  3C 63 00 01 */	addis r3, r3, 1
/* 804B321C  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804B3220  4B FF E7 49 */	bl bIT_actor_drop_entry_main
/* 804B3224  39 61 00 F0 */	addi r11, r1, 0xf0
/* 804B3228  4B BE 7C F5 */	bl func_8009AF1C
/* 804B322C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 804B3230  7C 08 03 A6 */	mtlr r0
/* 804B3234  38 21 00 F0 */	addi r1, r1, 0xf0
/* 804B3238  4E 80 00 20 */	blr 
