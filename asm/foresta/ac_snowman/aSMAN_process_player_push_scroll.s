lbl_804A6024:
/* 804A6024  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A6028  7C 08 02 A6 */	mflr r0
/* 804A602C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A6030  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804A6034  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804A6038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A603C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A6040  7C 7F 1B 78 */	mr r31, r3
/* 804A6044  7C 9E 23 78 */	mr r30, r4
/* 804A6048  4B F3 7B 1D */	bl mPlib_Check_Label_main_wade_snowball
/* 804A604C  2C 03 00 00 */	cmpwi r3, 0
/* 804A6050  40 82 00 14 */	bne lbl_804A6064
/* 804A6054  7F E3 FB 78 */	mr r3, r31
/* 804A6058  7F C4 F3 78 */	mr r4, r30
/* 804A605C  4B FF F8 8D */	bl aSMAN_process_player_push_init
/* 804A6060  48 00 01 10 */	b lbl_804A6170
lbl_804A6064:
/* 804A6064  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 804A6068  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A606C  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 804A6070  EC 40 00 32 */	fmuls f2, f0, f0
/* 804A6074  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A6078  EC 21 00 72 */	fmuls f1, f1, f1
/* 804A607C  EF E2 08 2A */	fadds f31, f2, f1
/* 804A6080  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A6084  40 81 00 68 */	ble lbl_804A60EC
/* 804A6088  FC 20 F8 34 */	frsqrte f1, f31
/* 804A608C  3C 60 80 64 */	lis r3, lit_681@ha /* 0x80645CDC@ha */
/* 804A6090  38 83 5C DC */	addi r4, r3, lit_681@l /* 0x80645CDC@l */
/* 804A6094  3C 60 80 64 */	lis r3, lit_682@ha /* 0x80645CE4@ha */
/* 804A6098  C8 64 00 00 */	lfd f3, 0(r4)
/* 804A609C  FC 01 00 72 */	fmul f0, f1, f1
/* 804A60A0  C8 43 5C E4 */	lfd f2, lit_682@l(r3)  /* 0x80645CE4@l */
/* 804A60A4  FC 23 00 72 */	fmul f1, f3, f1
/* 804A60A8  FC 1F 00 32 */	fmul f0, f31, f0
/* 804A60AC  FC 02 00 28 */	fsub f0, f2, f0
/* 804A60B0  FC 21 00 32 */	fmul f1, f1, f0
/* 804A60B4  FC 01 00 72 */	fmul f0, f1, f1
/* 804A60B8  FC 23 00 72 */	fmul f1, f3, f1
/* 804A60BC  FC 1F 00 32 */	fmul f0, f31, f0
/* 804A60C0  FC 02 00 28 */	fsub f0, f2, f0
/* 804A60C4  FC 21 00 32 */	fmul f1, f1, f0
/* 804A60C8  FC 01 00 72 */	fmul f0, f1, f1
/* 804A60CC  FC 23 00 72 */	fmul f1, f3, f1
/* 804A60D0  FC 1F 00 32 */	fmul f0, f31, f0
/* 804A60D4  FC 02 00 28 */	fsub f0, f2, f0
/* 804A60D8  FC 01 00 32 */	fmul f0, f1, f0
/* 804A60DC  FC 1F 00 32 */	fmul f0, f31, f0
/* 804A60E0  FC 00 00 18 */	frsp f0, f0
/* 804A60E4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804A60E8  C3 E1 00 08 */	lfs f31, 8(r1)
lbl_804A60EC:
/* 804A60EC  38 61 00 0C */	addi r3, r1, 0xc
/* 804A60F0  4B F3 7B 39 */	bl mPlib_GetSnowballPos_forWadeSnowball
/* 804A60F4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804A60F8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804A60FC  90 7F 00 28 */	stw r3, 0x28(r31)
/* 804A6100  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 804A6104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A6108  90 1F 00 30 */	stw r0, 0x30(r31)
/* 804A610C  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A6110  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804A6114  40 82 00 34 */	bne lbl_804A6148
/* 804A6118  3C 60 80 64 */	lis r3, lit_644@ha /* 0x80645CC4@ha */
/* 804A611C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x80645C90@ha */
/* 804A6120  C0 23 5C C4 */	lfs f1, lit_644@l(r3)  /* 0x80645CC4@l */
/* 804A6124  3C A0 80 64 */	lis r5, lit_680@ha /* 0x80645CD8@ha */
/* 804A6128  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A612C  C0 44 5C 90 */	lfs f2, lit_469@l(r4)  /* 0x80645C90@l */
/* 804A6130  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A6134  C0 25 5C D8 */	lfs f1, lit_680@l(r5)  /* 0x80645CD8@l */
/* 804A6138  EC 02 00 2A */	fadds f0, f2, f0
/* 804A613C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A6140  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804A6144  40 81 00 2C */	ble lbl_804A6170
lbl_804A6148:
/* 804A6148  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A614C  38 60 00 01 */	li r3, 1
/* 804A6150  60 00 00 04 */	ori r0, r0, 4
/* 804A6154  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A6158  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A615C  60 00 00 02 */	ori r0, r0, 2
/* 804A6160  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A6164  4B F3 7B F5 */	bl mPlib_Set_crash_snowball_for_wade
/* 804A6168  38 60 00 00 */	li r3, 0
/* 804A616C  48 00 00 08 */	b lbl_804A6174
lbl_804A6170:
/* 804A6170  38 60 00 01 */	li r3, 1
lbl_804A6174:
/* 804A6174  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804A6178  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A617C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804A6180  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A6184  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A6188  7C 08 03 A6 */	mtlr r0
/* 804A618C  38 21 00 30 */	addi r1, r1, 0x30
/* 804A6190  4E 80 00 20 */	blr 
