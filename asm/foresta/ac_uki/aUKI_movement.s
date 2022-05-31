lbl_804ADF7C:
/* 804ADF7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ADF80  7C 08 02 A6 */	mflr r0
/* 804ADF84  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ADF88  39 61 00 20 */	addi r11, r1, 0x20
/* 804ADF8C  4B BE CF 49 */	bl func_8009AED4
/* 804ADF90  7C 7E 1B 78 */	mr r30, r3
/* 804ADF94  7C 9F 23 78 */	mr r31, r4
/* 804ADF98  4B FF FD E9 */	bl aUKI_Get_flow_angle
/* 804ADF9C  3C 80 80 64 */	lis r4, lit_621@ha /* 0x80645F74@ha */
/* 804ADFA0  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 804ADFA4  C0 04 5F 74 */	lfs f0, lit_621@l(r4)  /* 0x80645F74@l */
/* 804ADFA8  7C 7D 1B 78 */	mr r29, r3
/* 804ADFAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ADFB0  41 80 00 14 */	blt lbl_804ADFC4
/* 804ADFB4  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804ADFB8  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804ADFBC  28 00 00 0D */	cmplwi r0, 0xd
/* 804ADFC0  40 82 00 8C */	bne lbl_804AE04C
lbl_804ADFC4:
/* 804ADFC4  80 1E 02 88 */	lwz r0, 0x288(r30)
/* 804ADFC8  2C 00 00 01 */	cmpwi r0, 1
/* 804ADFCC  41 82 00 38 */	beq lbl_804AE004
/* 804ADFD0  A8 1E 02 66 */	lha r0, 0x266(r30)
/* 804ADFD4  2C 00 00 05 */	cmpwi r0, 5
/* 804ADFD8  41 82 00 0C */	beq lbl_804ADFE4
/* 804ADFDC  38 00 00 00 */	li r0, 0
/* 804ADFE0  B0 1E 02 66 */	sth r0, 0x266(r30)
lbl_804ADFE4:
/* 804ADFE4  3C 60 80 64 */	lis r3, lit_622@ha /* 0x80645F78@ha */
/* 804ADFE8  3C 80 80 64 */	lis r4, lit_623@ha /* 0x80645F7C@ha */
/* 804ADFEC  38 A3 5F 78 */	addi r5, r3, lit_622@l /* 0x80645F78@l */
/* 804ADFF0  C0 44 5F 7C */	lfs f2, lit_623@l(r4)  /* 0x80645F7C@l */
/* 804ADFF4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804ADFF8  38 7E 00 74 */	addi r3, r30, 0x74
/* 804ADFFC  4B F0 CC 6D */	bl chase_f
/* 804AE000  48 00 00 20 */	b lbl_804AE020
lbl_804AE004:
/* 804AE004  3C 60 80 64 */	lis r3, lit_624@ha /* 0x80645F80@ha */
/* 804AE008  3C 80 80 64 */	lis r4, lit_623@ha /* 0x80645F7C@ha */
/* 804AE00C  38 A3 5F 80 */	addi r5, r3, lit_624@l /* 0x80645F80@l */
/* 804AE010  C0 44 5F 7C */	lfs f2, lit_623@l(r4)  /* 0x80645F7C@l */
/* 804AE014  C0 25 00 00 */	lfs f1, 0(r5)
/* 804AE018  38 7E 00 74 */	addi r3, r30, 0x74
/* 804AE01C  4B F0 CC 4D */	bl chase_f
lbl_804AE020:
/* 804AE020  7F A3 EB 78 */	mr r3, r29
/* 804AE024  4B F0 CA CD */	bl sin_s
/* 804AE028  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804AE02C  7F A3 EB 78 */	mr r3, r29
/* 804AE030  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AE034  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 804AE038  4B F0 CA 65 */	bl cos_s
/* 804AE03C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804AE040  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AE044  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 804AE048  48 00 00 58 */	b lbl_804AE0A0
lbl_804AE04C:
/* 804AE04C  80 1E 02 88 */	lwz r0, 0x288(r30)
/* 804AE050  2C 00 00 01 */	cmpwi r0, 1
/* 804AE054  41 82 00 18 */	beq lbl_804AE06C
/* 804AE058  A8 1E 02 66 */	lha r0, 0x266(r30)
/* 804AE05C  2C 00 00 05 */	cmpwi r0, 5
/* 804AE060  41 82 00 0C */	beq lbl_804AE06C
/* 804AE064  38 00 00 00 */	li r0, 0
/* 804AE068  B0 1E 02 66 */	sth r0, 0x266(r30)
lbl_804AE06C:
/* 804AE06C  3C 60 80 64 */	lis r3, lit_625@ha /* 0x80645F84@ha */
/* 804AE070  C0 03 5F 84 */	lfs f0, lit_625@l(r3)  /* 0x80645F84@l */
/* 804AE074  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 804AE078  A8 7E 00 B6 */	lha r3, 0xb6(r30)
/* 804AE07C  4B F0 CA 75 */	bl sin_s
/* 804AE080  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804AE084  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AE088  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 804AE08C  A8 7E 00 B6 */	lha r3, 0xb6(r30)
/* 804AE090  4B F0 CA 0D */	bl cos_s
/* 804AE094  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 804AE098  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AE09C  D0 1E 00 70 */	stfs f0, 0x70(r30)
lbl_804AE0A0:
/* 804AE0A0  3C 60 80 64 */	lis r3, lit_626@ha /* 0x80645F88@ha */
/* 804AE0A4  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 804AE0A8  C0 03 5F 88 */	lfs f0, lit_626@l(r3)  /* 0x80645F88@l */
/* 804AE0AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE0B0  40 81 00 2C */	ble lbl_804AE0DC
/* 804AE0B4  80 9F 20 90 */	lwz r4, 0x2090(r31)
/* 804AE0B8  38 60 00 0A */	li r3, 0xa
/* 804AE0BC  7C 04 1B 96 */	divwu r0, r4, r3
/* 804AE0C0  7C 00 19 D6 */	mullw r0, r0, r3
/* 804AE0C4  7C 00 20 51 */	subf. r0, r0, r4
/* 804AE0C8  40 82 00 14 */	bne lbl_804AE0DC
/* 804AE0CC  7F C3 F3 78 */	mr r3, r30
/* 804AE0D0  7F E4 FB 78 */	mr r4, r31
/* 804AE0D4  38 A0 00 04 */	li r5, 4
/* 804AE0D8  4B FF FD C5 */	bl aUKI_effect_hamon
lbl_804AE0DC:
/* 804AE0DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804AE0E0  4B BE CE 41 */	bl func_8009AF20
/* 804AE0E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AE0E8  7C 08 03 A6 */	mtlr r0
/* 804AE0EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804AE0F0  4E 80 00 20 */	blr 
