lbl_80416044:
/* 80416044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80416048  7C 08 02 A6 */	mflr r0
/* 8041604C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80416050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80416054  7C 7F 1B 78 */	mr r31, r3
/* 80416058  7C 83 23 78 */	mr r3, r4
/* 8041605C  4B FC 35 E5 */	bl get_player_actor_withoutCheck
/* 80416060  28 03 00 00 */	cmplwi r3, 0
/* 80416064  41 82 00 8C */	beq lbl_804160F0
/* 80416068  3C A0 80 64 */	lis r5, lit_519@ha /* 0x80643BD8@ha */
/* 8041606C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80416070  C0 45 3B D8 */	lfs f2, lit_519@l(r5)  /* 0x80643BD8@l */
/* 80416074  3C 80 80 64 */	lis r4, lit_520@ha /* 0x80643BDC@ha */
/* 80416078  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8041607C  EC 62 08 2A */	fadds f3, f2, f1
/* 80416080  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80416084  EC 22 00 2A */	fadds f1, f2, f0
/* 80416088  C0 43 00 30 */	lfs f2, 0x30(r3)
/* 8041608C  C0 04 3B DC */	lfs f0, lit_520@l(r4)  /* 0x80643BDC@l */
/* 80416090  EC 64 18 28 */	fsubs f3, f4, f3
/* 80416094  EC 82 08 28 */	fsubs f4, f2, f1
/* 80416098  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8041609C  EC 24 01 32 */	fmuls f1, f4, f4
/* 804160A0  EC 22 08 2A */	fadds f1, f2, f1
/* 804160A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804160A8  40 80 00 48 */	bge lbl_804160F0
/* 804160AC  3C 80 80 64 */	lis r4, lit_521@ha /* 0x80643BE0@ha */
/* 804160B0  EC 23 20 2A */	fadds f1, f3, f4
/* 804160B4  C0 04 3B E0 */	lfs f0, lit_521@l(r4)  /* 0x80643BE0@l */
/* 804160B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804160BC  40 80 00 34 */	bge lbl_804160F0
/* 804160C0  A8 03 00 DE */	lha r0, 0xde(r3)
/* 804160C4  2C 00 80 00 */	cmpwi r0, -32768
/* 804160C8  40 81 00 28 */	ble lbl_804160F0
/* 804160CC  2C 00 C0 00 */	cmpwi r0, -16384
/* 804160D0  40 80 00 20 */	bge lbl_804160F0
/* 804160D4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804160D8  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804160DC  4B F7 FE 35 */	bl chkTrigger
/* 804160E0  2C 03 00 00 */	cmpwi r3, 0
/* 804160E4  41 82 00 0C */	beq lbl_804160F0
/* 804160E8  38 60 00 01 */	li r3, 1
/* 804160EC  48 00 00 08 */	b lbl_804160F4
lbl_804160F0:
/* 804160F0  38 60 00 00 */	li r3, 0
lbl_804160F4:
/* 804160F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804160F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804160FC  7C 08 03 A6 */	mtlr r0
/* 80416100  38 21 00 10 */	addi r1, r1, 0x10
/* 80416104  4E 80 00 20 */	blr 
