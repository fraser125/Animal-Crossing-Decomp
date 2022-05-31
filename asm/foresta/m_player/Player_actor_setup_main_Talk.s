lbl_804FA930:
/* 804FA930  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FA934  7C 08 02 A6 */	mflr r0
/* 804FA938  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FA93C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804FA940  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804FA944  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FA948  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FA94C  7C 7E 1B 78 */	mr r30, r3
/* 804FA950  7C 9F 23 78 */	mr r31, r4
/* 804FA954  80 03 0D 6C */	lwz r0, 0xd6c(r3)
/* 804FA958  C3 E3 0D 68 */	lfs f31, 0xd68(r3)
/* 804FA95C  2C 00 00 00 */	cmpwi r0, 0
/* 804FA960  41 82 00 0C */	beq lbl_804FA96C
/* 804FA964  38 00 00 01 */	li r0, 1
/* 804FA968  98 1E 0E 6C */	stb r0, 0xe6c(r30)
lbl_804FA96C:
/* 804FA96C  80 BE 0D 60 */	lwz r5, 0xd60(r30)
/* 804FA970  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FA974  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804FA978  38 00 00 00 */	li r0, 0
/* 804FA97C  90 BE 0D 18 */	stw r5, 0xd18(r30)
/* 804FA980  7F C3 F3 78 */	mr r3, r30
/* 804FA984  C0 04 00 00 */	lfs f0, 0(r4)
/* 804FA988  38 80 00 00 */	li r4, 0
/* 804FA98C  80 BE 0D 64 */	lwz r5, 0xd64(r30)
/* 804FA990  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804FA994  90 BE 0D 1C */	stw r5, 0xd1c(r30)
/* 804FA998  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 804FA99C  4C 41 13 82 */	cror 2, 1, 2
/* 804FA9A0  40 82 00 0C */	bne lbl_804FA9AC
/* 804FA9A4  FC 00 F8 90 */	fmr f0, f31
/* 804FA9A8  48 00 00 08 */	b lbl_804FA9B0
lbl_804FA9AC:
/* 804FA9AC  FC 00 F8 50 */	fneg f0, f31
lbl_804FA9B0:
/* 804FA9B0  FC 20 00 50 */	fneg f1, f0
/* 804FA9B4  38 A1 00 0C */	addi r5, r1, 0xc
/* 804FA9B8  38 C1 00 08 */	addi r6, r1, 8
/* 804FA9BC  4B FD F5 A5 */	bl Player_actor_SetupItem_Base1
/* 804FA9C0  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FA9C4  3C 60 80 64 */	lis r3, lit_2671@ha /* 0x80646C4C@ha */
/* 804FA9C8  C0 24 65 64 */	lfs f1, lit_603@l(r4)  /* 0x80646564@l */
/* 804FA9CC  38 83 6C 4C */	addi r4, r3, lit_2671@l /* 0x80646C4C@l */
/* 804FA9D0  C0 64 00 00 */	lfs f3, 0(r4)
/* 804FA9D4  FC 80 F8 90 */	fmr f4, f31
/* 804FA9D8  FC 40 08 90 */	fmr f2, f1
/* 804FA9DC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804FA9E0  80 E1 00 08 */	lwz r7, 8(r1)
/* 804FA9E4  7F C3 F3 78 */	mr r3, r30
/* 804FA9E8  7F E4 FB 78 */	mr r4, r31
/* 804FA9EC  38 A0 00 00 */	li r5, 0
/* 804FA9F0  4B FD BD 09 */	bl Player_actor_InitAnimation_Base1
/* 804FA9F4  7F C3 F3 78 */	mr r3, r30
/* 804FA9F8  7F E4 FB 78 */	mr r4, r31
/* 804FA9FC  4B FD AE FD */	bl Player_actor_setup_main_Base
/* 804FAA00  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804FAA04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FAA08  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804FAA0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FAA10  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FAA14  7C 08 03 A6 */	mtlr r0
/* 804FAA18  38 21 00 30 */	addi r1, r1, 0x30
/* 804FAA1C  4E 80 00 20 */	blr 
