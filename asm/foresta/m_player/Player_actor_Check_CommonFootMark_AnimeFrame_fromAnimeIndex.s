lbl_804DAFB0:
/* 804DAFB0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804DAFB4  7C 08 02 A6 */	mflr r0
/* 804DAFB8  90 01 00 74 */	stw r0, 0x74(r1)
/* 804DAFBC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804DAFC0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804DAFC4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804DAFC8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804DAFCC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 804DAFD0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 804DAFD4  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 804DAFD8  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 804DAFDC  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 804DAFE0  F3 61 00 28 */	psq_st f27, 40(r1), 0, 0 /* qr0 */
/* 804DAFE4  39 61 00 20 */	addi r11, r1, 0x20
/* 804DAFE8  4B BB FE E9 */	bl func_8009AED0
/* 804DAFEC  FF 60 08 90 */	fmr f27, f1
/* 804DAFF0  2C 03 00 00 */	cmpwi r3, 0
/* 804DAFF4  FF 80 10 90 */	fmr f28, f2
/* 804DAFF8  FF A0 18 90 */	fmr f29, f3
/* 804DAFFC  41 80 00 94 */	blt lbl_804DB090
/* 804DB000  2C 03 00 9D */	cmpwi r3, 0x9d
/* 804DB004  40 80 00 8C */	bge lbl_804DB090
/* 804DB008  54 60 10 3A */	slwi r0, r3, 2
/* 804DB00C  7F C4 00 2E */	lwzx r30, r4, r0
/* 804DB010  28 1E 00 00 */	cmplwi r30, 0
/* 804DB014  41 82 00 7C */	beq lbl_804DB090
/* 804DB018  3C C0 80 64 */	lis r6, lit_1627@ha /* 0x80646A54@ha */
/* 804DB01C  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804DB020  7F A5 18 AE */	lbzx r29, r5, r3
/* 804DB024  3B 80 00 00 */	li r28, 0
/* 804DB028  CB C6 6A 54 */	lfd f30, lit_1627@l(r6)  /* 0x80646A54@l */
/* 804DB02C  3F E0 43 30 */	lis r31, 0x4330
/* 804DB030  C3 E4 65 68 */	lfs f31, lit_604@l(r4)  /* 0x80646568@l */
/* 804DB034  48 00 00 54 */	b lbl_804DB088
lbl_804DB038:
/* 804DB038  A8 1E 00 00 */	lha r0, 0(r30)
/* 804DB03C  93 E1 00 08 */	stw r31, 8(r1)
/* 804DB040  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DB044  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DB048  C8 01 00 08 */	lfd f0, 8(r1)
/* 804DB04C  EC 80 F0 28 */	fsubs f4, f0, f30
/* 804DB050  FC 04 F8 40 */	fcmpo cr0, f4, f31
/* 804DB054  40 80 00 0C */	bge lbl_804DB060
/* 804DB058  38 60 00 00 */	li r3, 0
/* 804DB05C  48 00 00 38 */	b lbl_804DB094
lbl_804DB060:
/* 804DB060  FC 20 D8 90 */	fmr f1, f27
/* 804DB064  FC 40 E0 90 */	fmr f2, f28
/* 804DB068  FC 60 E8 90 */	fmr f3, f29
/* 804DB06C  4B FF C4 85 */	bl Player_actor_Check_AnimationFrame_Common
/* 804DB070  2C 03 00 00 */	cmpwi r3, 0
/* 804DB074  41 82 00 0C */	beq lbl_804DB080
/* 804DB078  38 60 00 01 */	li r3, 1
/* 804DB07C  48 00 00 18 */	b lbl_804DB094
lbl_804DB080:
/* 804DB080  3B DE 00 02 */	addi r30, r30, 2
/* 804DB084  3B 9C 00 01 */	addi r28, r28, 1
lbl_804DB088:
/* 804DB088  7C 1C E8 00 */	cmpw r28, r29
/* 804DB08C  41 80 FF AC */	blt lbl_804DB038
lbl_804DB090:
/* 804DB090  38 60 00 00 */	li r3, 0
lbl_804DB094:
/* 804DB094  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804DB098  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804DB09C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 804DB0A0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 804DB0A4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 804DB0A8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 804DB0AC  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 804DB0B0  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 804DB0B4  E3 61 00 28 */	psq_l f27, 40(r1), 0, 0 /* qr0 */
/* 804DB0B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804DB0BC  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 804DB0C0  4B BB FE 5D */	bl func_8009AF1C
/* 804DB0C4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804DB0C8  7C 08 03 A6 */	mtlr r0
/* 804DB0CC  38 21 00 70 */	addi r1, r1, 0x70
/* 804DB0D0  4E 80 00 20 */	blr 
