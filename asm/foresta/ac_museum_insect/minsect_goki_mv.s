lbl_8046AD00:
/* 8046AD00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046AD04  7C 08 02 A6 */	mflr r0
/* 8046AD08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046AD0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046AD10  4B C3 01 C1 */	bl func_8009AED0
/* 8046AD14  7C 9E 23 78 */	mr r30, r4
/* 8046AD18  7C 7D 1B 78 */	mr r29, r3
/* 8046AD1C  7F C3 F3 78 */	mr r3, r30
/* 8046AD20  4B F6 E9 21 */	bl get_player_actor_withoutCheck
/* 8046AD24  81 9D 00 04 */	lwz r12, 4(r29)
/* 8046AD28  7C 7F 1B 78 */	mr r31, r3
/* 8046AD2C  3B 9F 00 28 */	addi r28, r31, 0x28
/* 8046AD30  28 0C 00 00 */	cmplwi r12, 0
/* 8046AD34  41 82 00 14 */	beq lbl_8046AD48
/* 8046AD38  7F A3 EB 78 */	mr r3, r29
/* 8046AD3C  7F C4 F3 78 */	mr r4, r30
/* 8046AD40  7D 89 03 A6 */	mtctr r12
/* 8046AD44  4E 80 04 21 */	bctrl 
lbl_8046AD48:
/* 8046AD48  A8 1D 00 72 */	lha r0, 0x72(r29)
/* 8046AD4C  2C 00 00 00 */	cmpwi r0, 0
/* 8046AD50  40 82 03 C8 */	bne lbl_8046B118
/* 8046AD54  7F 84 E3 78 */	mr r4, r28
/* 8046AD58  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8046AD5C  4B F5 03 31 */	bl search_position_distanceXZ
/* 8046AD60  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8046AD64  C0 03 45 DC */	lfs f0, lit_503@l(r3)  /* 0x806445DC@l */
/* 8046AD68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AD6C  40 80 00 E0 */	bge lbl_8046AE4C
/* 8046AD70  3C 60 80 64 */	lis r3, lit_4057@ha /* 0x806448A0@ha */
/* 8046AD74  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8046AD78  C0 03 48 A0 */	lfs f0, lit_4057@l(r3)  /* 0x806448A0@l */
/* 8046AD7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AD80  40 81 00 CC */	ble lbl_8046AE4C
/* 8046AD84  4B BF 1F 71 */	bl fqrand
/* 8046AD88  3C 60 80 64 */	lis r3, lit_3505@ha /* 0x80644850@ha */
/* 8046AD8C  C0 03 48 50 */	lfs f0, lit_3505@l(r3)  /* 0x80644850@l */
/* 8046AD90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AD94  40 81 00 B8 */	ble lbl_8046AE4C
/* 8046AD98  38 00 00 01 */	li r0, 1
/* 8046AD9C  B0 1D 00 72 */	sth r0, 0x72(r29)
/* 8046ADA0  4B BF 1F 55 */	bl fqrand
/* 8046ADA4  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046ADA8  3C C0 43 30 */	lis r6, 0x4330
/* 8046ADAC  38 E3 61 38 */	addi r7, r3, debug_mode@l /* 0x81166138@l */
/* 8046ADB0  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046ADB4  80 A7 00 00 */	lwz r5, 0(r7)
/* 8046ADB8  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 8046ADBC  3D 00 80 64 */	lis r8, lit_507@ha /* 0x806445EC@ha */
/* 8046ADC0  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 8046ADC4  A8 05 16 9A */	lha r0, 0x169a(r5)
/* 8046ADC8  38 A8 45 EC */	addi r5, r8, lit_507@l /* 0x806445EC@l */
/* 8046ADCC  39 03 46 54 */	addi r8, r3, lit_678@l /* 0x80644654@l */
/* 8046ADD0  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046ADD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046ADD8  3C 60 80 64 */	lis r3, lit_4058@ha /* 0x806448A4@ha */
/* 8046ADDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046ADE0  38 A3 48 A4 */	addi r5, r3, lit_4058@l /* 0x806448A4@l */
/* 8046ADE4  C8 44 00 00 */	lfd f2, 0(r4)
/* 8046ADE8  EC 80 08 2A */	fadds f4, f0, f1
/* 8046ADEC  90 C1 00 08 */	stw r6, 8(r1)
/* 8046ADF0  38 00 00 01 */	li r0, 1
/* 8046ADF4  C0 68 00 00 */	lfs f3, 0(r8)
/* 8046ADF8  38 9D 00 1C */	addi r4, r29, 0x1c
/* 8046ADFC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046AE00  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8046AE04  38 60 01 32 */	li r3, 0x132
/* 8046AE08  EC 00 10 28 */	fsubs f0, f0, f2
/* 8046AE0C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8046AE10  EC 03 00 32 */	fmuls f0, f3, f0
/* 8046AE14  EC 00 20 2A */	fadds f0, f0, f4
/* 8046AE18  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 8046AE1C  80 A7 00 00 */	lwz r5, 0(r7)
/* 8046AE20  A8 A5 16 98 */	lha r5, 0x1698(r5)
/* 8046AE24  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8046AE28  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8046AE2C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8046AE30  EC 00 10 28 */	fsubs f0, f0, f2
/* 8046AE34  EC 03 00 32 */	fmuls f0, f3, f0
/* 8046AE38  EC 01 00 2A */	fadds f0, f1, f0
/* 8046AE3C  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 8046AE40  B0 1D 00 74 */	sth r0, 0x74(r29)
/* 8046AE44  48 1C 31 65 */	bl sAdo_OngenTrgStart
/* 8046AE48  48 00 03 88 */	b lbl_8046B1D0
lbl_8046AE4C:
/* 8046AE4C  7F 84 E3 78 */	mr r4, r28
/* 8046AE50  38 7D 00 1C */	addi r3, r29, 0x1c
/* 8046AE54  4B F5 02 39 */	bl search_position_distanceXZ
/* 8046AE58  3C 60 80 64 */	lis r3, lit_2456@ha /* 0x806447D8@ha */
/* 8046AE5C  C0 03 47 D8 */	lfs f0, lit_2456@l(r3)  /* 0x806447D8@l */
/* 8046AE60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AE64  40 80 01 14 */	bge lbl_8046AF78
/* 8046AE68  3C 60 80 64 */	lis r3, lit_511@ha /* 0x8064460C@ha */
/* 8046AE6C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8046AE70  C0 03 46 0C */	lfs f0, lit_511@l(r3)  /* 0x8064460C@l */
/* 8046AE74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AE78  40 81 01 00 */	ble lbl_8046AF78
/* 8046AE7C  4B BF 1E 79 */	bl fqrand
/* 8046AE80  3C 60 80 64 */	lis r3, lit_1066@ha /* 0x806446FC@ha */
/* 8046AE84  C0 03 46 FC */	lfs f0, lit_1066@l(r3)  /* 0x806446FC@l */
/* 8046AE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AE8C  40 81 00 B8 */	ble lbl_8046AF44
/* 8046AE90  38 00 00 01 */	li r0, 1
/* 8046AE94  B0 1D 00 72 */	sth r0, 0x72(r29)
/* 8046AE98  4B BF 1E 5D */	bl fqrand
/* 8046AE9C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8046AEA0  3C C0 43 30 */	lis r6, 0x4330
/* 8046AEA4  38 E3 61 38 */	addi r7, r3, debug_mode@l /* 0x81166138@l */
/* 8046AEA8  3C 60 80 64 */	lis r3, lit_589@ha /* 0x8064463C@ha */
/* 8046AEAC  80 A7 00 00 */	lwz r5, 0(r7)
/* 8046AEB0  38 83 46 3C */	addi r4, r3, lit_589@l /* 0x8064463C@l */
/* 8046AEB4  3D 00 80 64 */	lis r8, lit_507@ha /* 0x806445EC@ha */
/* 8046AEB8  3C 60 80 64 */	lis r3, lit_678@ha /* 0x80644654@ha */
/* 8046AEBC  A8 05 16 9A */	lha r0, 0x169a(r5)
/* 8046AEC0  38 A8 45 EC */	addi r5, r8, lit_507@l /* 0x806445EC@l */
/* 8046AEC4  39 03 46 54 */	addi r8, r3, lit_678@l /* 0x80644654@l */
/* 8046AEC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8046AECC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046AED0  3C 60 80 64 */	lis r3, lit_4058@ha /* 0x806448A4@ha */
/* 8046AED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AED8  38 A3 48 A4 */	addi r5, r3, lit_4058@l /* 0x806448A4@l */
/* 8046AEDC  C8 44 00 00 */	lfd f2, 0(r4)
/* 8046AEE0  EC 80 08 2A */	fadds f4, f0, f1
/* 8046AEE4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8046AEE8  38 00 00 01 */	li r0, 1
/* 8046AEEC  C0 68 00 00 */	lfs f3, 0(r8)
/* 8046AEF0  38 9D 00 1C */	addi r4, r29, 0x1c
/* 8046AEF4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8046AEF8  90 C1 00 08 */	stw r6, 8(r1)
/* 8046AEFC  38 60 01 32 */	li r3, 0x132
/* 8046AF00  EC 00 10 28 */	fsubs f0, f0, f2
/* 8046AF04  C0 25 00 00 */	lfs f1, 0(r5)
/* 8046AF08  EC 03 00 32 */	fmuls f0, f3, f0
/* 8046AF0C  EC 00 20 2A */	fadds f0, f0, f4
/* 8046AF10  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 8046AF14  80 A7 00 00 */	lwz r5, 0(r7)
/* 8046AF18  A8 A5 16 98 */	lha r5, 0x1698(r5)
/* 8046AF1C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8046AF20  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8046AF24  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046AF28  EC 00 10 28 */	fsubs f0, f0, f2
/* 8046AF2C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8046AF30  EC 01 00 2A */	fadds f0, f1, f0
/* 8046AF34  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 8046AF38  B0 1D 00 74 */	sth r0, 0x74(r29)
/* 8046AF3C  48 1C 30 6D */	bl sAdo_OngenTrgStart
/* 8046AF40  48 00 02 90 */	b lbl_8046B1D0
lbl_8046AF44:
/* 8046AF44  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046AF48  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8046AF4C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046AF50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AF54  40 81 00 24 */	ble lbl_8046AF78
/* 8046AF58  A8 1D 00 78 */	lha r0, 0x78(r29)
/* 8046AF5C  2C 00 00 01 */	cmpwi r0, 1
/* 8046AF60  41 82 00 18 */	beq lbl_8046AF78
/* 8046AF64  7F A3 EB 78 */	mr r3, r29
/* 8046AF68  7F C4 F3 78 */	mr r4, r30
/* 8046AF6C  4B FF FD 45 */	bl goki_talk_process_init
/* 8046AF70  38 00 00 01 */	li r0, 1
/* 8046AF74  B0 1D 00 78 */	sth r0, 0x78(r29)
lbl_8046AF78:
/* 8046AF78  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046AF7C  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8046AF80  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046AF84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AF88  40 81 00 F4 */	ble lbl_8046B07C
/* 8046AF8C  7F A3 EB 78 */	mr r3, r29
/* 8046AF90  7F C4 F3 78 */	mr r4, r30
/* 8046AF94  4B FF FB 91 */	bl goki_wall_hit_angle_corect
/* 8046AF98  7F A3 EB 78 */	mr r3, r29
/* 8046AF9C  4B FE FC 49 */	bl func_8045ABE4
/* 8046AFA0  7F A3 EB 78 */	mr r3, r29
/* 8046AFA4  38 BD 00 1C */	addi r5, r29, 0x1c
/* 8046AFA8  38 80 00 A8 */	li r4, 0xa8
/* 8046AFAC  48 1C 2F 99 */	bl sAdo_OngenPos
/* 8046AFB0  A8 9D 00 6E */	lha r4, 0x6e(r29)
/* 8046AFB4  38 64 FF FF */	addi r3, r4, -1
/* 8046AFB8  7C 80 07 35 */	extsh. r0, r4
/* 8046AFBC  B0 7D 00 6E */	sth r3, 0x6e(r29)
/* 8046AFC0  40 80 02 08 */	bge lbl_8046B1C8
/* 8046AFC4  4B BF 1D 31 */	bl fqrand
/* 8046AFC8  3C 60 80 64 */	lis r3, lit_584@ha /* 0x8064462C@ha */
/* 8046AFCC  C0 03 46 2C */	lfs f0, lit_584@l(r3)  /* 0x8064462C@l */
/* 8046AFD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046AFD4  40 81 00 38 */	ble lbl_8046B00C
/* 8046AFD8  4B BF 1D 1D */	bl fqrand
/* 8046AFDC  3C 80 80 64 */	lis r4, lit_3934@ha /* 0x80644894@ha */
/* 8046AFE0  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046AFE4  C0 44 48 94 */	lfs f2, lit_3934@l(r4)  /* 0x80644894@l */
/* 8046AFE8  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046AFEC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046AFF0  FC 20 08 1E */	fctiwz f1, f1
/* 8046AFF4  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8046AFF8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046AFFC  38 03 00 B4 */	addi r0, r3, 0xb4
/* 8046B000  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8046B004  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 8046B008  48 00 01 C0 */	b lbl_8046B1C8
lbl_8046B00C:
/* 8046B00C  7F A3 EB 78 */	mr r3, r29
/* 8046B010  7F C4 F3 78 */	mr r4, r30
/* 8046B014  4B FF F8 C9 */	bl goki_player_check
/* 8046B018  2C 03 00 00 */	cmpwi r3, 0
/* 8046B01C  41 82 00 2C */	beq lbl_8046B048
/* 8046B020  4B BF 1C D5 */	bl fqrand
/* 8046B024  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046B028  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046B02C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046B030  FC 00 00 1E */	fctiwz f0, f0
/* 8046B034  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8046B038  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046B03C  38 03 00 28 */	addi r0, r3, 0x28
/* 8046B040  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8046B044  48 00 01 84 */	b lbl_8046B1C8
lbl_8046B048:
/* 8046B048  4B BF 1C AD */	bl fqrand
/* 8046B04C  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046B050  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 8046B054  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046B058  FC 00 00 1E */	fctiwz f0, f0
/* 8046B05C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8046B060  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046B064  38 03 00 28 */	addi r0, r3, 0x28
/* 8046B068  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8046B06C  4B BF 1C 61 */	bl func_8005CCCC
/* 8046B070  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 8046B074  B0 1D 00 6A */	sth r0, 0x6a(r29)
/* 8046B078  48 00 01 50 */	b lbl_8046B1C8
lbl_8046B07C:
/* 8046B07C  A8 9D 00 6E */	lha r4, 0x6e(r29)
/* 8046B080  38 64 FF FF */	addi r3, r4, -1
/* 8046B084  7C 80 07 35 */	extsh. r0, r4
/* 8046B088  B0 7D 00 6E */	sth r3, 0x6e(r29)
/* 8046B08C  40 80 00 44 */	bge lbl_8046B0D0
/* 8046B090  4B BF 1C 65 */	bl fqrand
/* 8046B094  3C 80 80 64 */	lis r4, lit_823@ha /* 0x8064469C@ha */
/* 8046B098  3C 60 80 64 */	lis r3, lit_4059@ha /* 0x806448A8@ha */
/* 8046B09C  C0 44 46 9C */	lfs f2, lit_823@l(r4)  /* 0x8064469C@l */
/* 8046B0A0  C0 03 48 A8 */	lfs f0, lit_4059@l(r3)  /* 0x806448A8@l */
/* 8046B0A4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046B0A8  FC 20 08 1E */	fctiwz f1, f1
/* 8046B0AC  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8046B0B0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046B0B4  38 03 00 28 */	addi r0, r3, 0x28
/* 8046B0B8  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8046B0BC  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 8046B0C0  4B BF 1C 0D */	bl func_8005CCCC
/* 8046B0C4  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 8046B0C8  B0 1D 00 6A */	sth r0, 0x6a(r29)
/* 8046B0CC  48 00 00 FC */	b lbl_8046B1C8
lbl_8046B0D0:
/* 8046B0D0  7F A3 EB 78 */	mr r3, r29
/* 8046B0D4  7F C4 F3 78 */	mr r4, r30
/* 8046B0D8  4B FF F8 05 */	bl goki_player_check
/* 8046B0DC  2C 03 00 00 */	cmpwi r3, 0
/* 8046B0E0  41 82 00 E8 */	beq lbl_8046B1C8
/* 8046B0E4  4B BF 1C 11 */	bl fqrand
/* 8046B0E8  3C 80 80 64 */	lis r4, lit_823@ha /* 0x8064469C@ha */
/* 8046B0EC  3C 60 80 64 */	lis r3, lit_4059@ha /* 0x806448A8@ha */
/* 8046B0F0  C0 44 46 9C */	lfs f2, lit_823@l(r4)  /* 0x8064469C@l */
/* 8046B0F4  C0 03 48 A8 */	lfs f0, lit_4059@l(r3)  /* 0x806448A8@l */
/* 8046B0F8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046B0FC  FC 20 08 1E */	fctiwz f1, f1
/* 8046B100  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8046B104  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046B108  38 03 00 28 */	addi r0, r3, 0x28
/* 8046B10C  B0 1D 00 6E */	sth r0, 0x6e(r29)
/* 8046B110  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 8046B114  48 00 00 B4 */	b lbl_8046B1C8
lbl_8046B118:
/* 8046B118  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8046B11C  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8046B120  4B FA 0E E1 */	bl atans_table
/* 8046B124  7C 03 00 D0 */	neg r0, r3
/* 8046B128  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8046B12C  B0 1D 00 68 */	sth r0, 0x68(r29)
/* 8046B130  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8046B134  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 8046B138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046B13C  40 80 00 58 */	bge lbl_8046B194
/* 8046B140  A8 1D 00 8C */	lha r0, 0x8c(r29)
/* 8046B144  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8046B148  41 82 00 4C */	beq lbl_8046B194
/* 8046B14C  38 00 00 00 */	li r0, 0
/* 8046B150  B0 1D 00 68 */	sth r0, 0x68(r29)
/* 8046B154  B0 1D 00 72 */	sth r0, 0x72(r29)
/* 8046B158  4B BF 1B 9D */	bl fqrand
/* 8046B15C  3C 80 80 64 */	lis r4, lit_823@ha /* 0x8064469C@ha */
/* 8046B160  3C 60 80 64 */	lis r3, lit_4059@ha /* 0x806448A8@ha */
/* 8046B164  C0 44 46 9C */	lfs f2, lit_823@l(r4)  /* 0x8064469C@l */
/* 8046B168  38 00 00 00 */	li r0, 0
/* 8046B16C  C0 03 48 A8 */	lfs f0, lit_4059@l(r3)  /* 0x806448A8@l */
/* 8046B170  EC 22 00 72 */	fmuls f1, f2, f1
/* 8046B174  FC 20 08 1E */	fctiwz f1, f1
/* 8046B178  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8046B17C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8046B180  38 63 00 28 */	addi r3, r3, 0x28
/* 8046B184  B0 7D 00 6E */	sth r3, 0x6e(r29)
/* 8046B188  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 8046B18C  B0 1D 00 74 */	sth r0, 0x74(r29)
/* 8046B190  48 00 00 40 */	b lbl_8046B1D0
lbl_8046B194:
/* 8046B194  7F A3 EB 78 */	mr r3, r29
/* 8046B198  4B FE FA 4D */	bl func_8045ABE4
/* 8046B19C  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 8046B1A0  7F A3 EB 78 */	mr r3, r29
/* 8046B1A4  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 8046B1A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8046B1AC  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 8046B1B0  4B FF 63 A9 */	bl mi_batta_hane_anime
/* 8046B1B4  A8 1D 00 76 */	lha r0, 0x76(r29)
/* 8046B1B8  2C 00 00 00 */	cmpwi r0, 0
/* 8046B1BC  41 81 00 0C */	bgt lbl_8046B1C8
/* 8046B1C0  38 00 00 07 */	li r0, 7
/* 8046B1C4  B0 1D 00 76 */	sth r0, 0x76(r29)
lbl_8046B1C8:
/* 8046B1C8  7F A3 EB 78 */	mr r3, r29
/* 8046B1CC  4B FF 0C 91 */	bl minsect_goki_BGCheck
lbl_8046B1D0:
/* 8046B1D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8046B1D4  4B C2 FD 49 */	bl func_8009AF1C
/* 8046B1D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046B1DC  7C 08 03 A6 */	mtlr r0
/* 8046B1E0  38 21 00 30 */	addi r1, r1, 0x30
/* 8046B1E4  4E 80 00 20 */	blr 
