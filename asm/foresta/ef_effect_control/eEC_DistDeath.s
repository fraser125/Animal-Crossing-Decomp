lbl_804CD9C8:
/* 804CD9C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CD9CC  7C 08 02 A6 */	mflr r0
/* 804CD9D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CD9D4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804CD9D8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804CD9DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD9E0  93 C1 00 08 */	stw r30, 8(r1)
/* 804CD9E4  7C A0 07 34 */	extsh r0, r5
/* 804CD9E8  7C 7E 1B 78 */	mr r30, r3
/* 804CD9EC  2C 00 FF FF */	cmpwi r0, -1
/* 804CD9F0  3B E0 00 00 */	li r31, 0
/* 804CD9F4  41 82 00 C8 */	beq lbl_804CDABC
/* 804CD9F8  A8 1E 00 02 */	lha r0, 2(r30)
/* 804CD9FC  3C A0 80 6A */	lis r5, data_8069BC10@ha /* 0x8069BC10@ha */
/* 804CDA00  3C 60 80 64 */	lis r3, lit_784@ha /* 0x806462D4@ha */
/* 804CDA04  54 00 10 3A */	slwi r0, r0, 2
/* 804CDA08  38 A5 BC 10 */	addi r5, r5, data_8069BC10@l /* 0x8069BC10@l */
/* 804CDA0C  7C A5 00 2E */	lwzx r5, r5, r0
/* 804CDA10  C0 03 62 D4 */	lfs f0, lit_784@l(r3)  /* 0x806462D4@l */
/* 804CDA14  C3 E5 00 14 */	lfs f31, 0x14(r5)
/* 804CDA18  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 804CDA1C  41 82 00 A0 */	beq lbl_804CDABC
/* 804CDA20  7C 83 23 78 */	mr r3, r4
/* 804CDA24  4B F0 BC 1D */	bl get_player_actor_withoutCheck
/* 804CDA28  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 804CDA2C  3C 80 80 64 */	lis r4, lit_445@ha /* 0x80646288@ha */
/* 804CDA30  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 804CDA34  C0 04 62 88 */	lfs f0, lit_445@l(r4)  /* 0x80646288@l */
/* 804CDA38  EC 22 08 28 */	fsubs f1, f2, f1
/* 804CDA3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CDA40  4C 41 13 82 */	cror 2, 1, 2
/* 804CDA44  40 82 00 08 */	bne lbl_804CDA4C
/* 804CDA48  48 00 00 08 */	b lbl_804CDA50
lbl_804CDA4C:
/* 804CDA4C  FC 20 08 50 */	fneg f1, f1
lbl_804CDA50:
/* 804CDA50  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804CDA54  41 81 00 64 */	bgt lbl_804CDAB8
/* 804CDA58  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 804CDA5C  3C 80 80 64 */	lis r4, lit_445@ha /* 0x80646288@ha */
/* 804CDA60  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 804CDA64  C0 04 62 88 */	lfs f0, lit_445@l(r4)  /* 0x80646288@l */
/* 804CDA68  EC 22 08 28 */	fsubs f1, f2, f1
/* 804CDA6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CDA70  4C 41 13 82 */	cror 2, 1, 2
/* 804CDA74  40 82 00 08 */	bne lbl_804CDA7C
/* 804CDA78  48 00 00 08 */	b lbl_804CDA80
lbl_804CDA7C:
/* 804CDA7C  FC 20 08 50 */	fneg f1, f1
lbl_804CDA80:
/* 804CDA80  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804CDA84  41 81 00 34 */	bgt lbl_804CDAB8
/* 804CDA88  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 804CDA8C  3C 60 80 64 */	lis r3, lit_445@ha /* 0x80646288@ha */
/* 804CDA90  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 804CDA94  C0 03 62 88 */	lfs f0, lit_445@l(r3)  /* 0x80646288@l */
/* 804CDA98  EC 22 08 28 */	fsubs f1, f2, f1
/* 804CDA9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CDAA0  4C 41 13 82 */	cror 2, 1, 2
/* 804CDAA4  40 82 00 08 */	bne lbl_804CDAAC
/* 804CDAA8  48 00 00 08 */	b lbl_804CDAB0
lbl_804CDAAC:
/* 804CDAAC  FC 20 08 50 */	fneg f1, f1
lbl_804CDAB0:
/* 804CDAB0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804CDAB4  40 81 00 08 */	ble lbl_804CDABC
lbl_804CDAB8:
/* 804CDAB8  3B E0 00 01 */	li r31, 1
lbl_804CDABC:
/* 804CDABC  7F E3 FB 78 */	mr r3, r31
/* 804CDAC0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804CDAC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CDAC8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804CDACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CDAD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804CDAD4  7C 08 03 A6 */	mtlr r0
/* 804CDAD8  38 21 00 20 */	addi r1, r1, 0x20
/* 804CDADC  4E 80 00 20 */	blr 
