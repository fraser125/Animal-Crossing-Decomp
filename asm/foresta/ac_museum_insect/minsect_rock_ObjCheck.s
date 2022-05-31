lbl_8045C2D4:
/* 8045C2D4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045C2D8  7C 08 02 A6 */	mflr r0
/* 8045C2DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8045C2E0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8045C2E4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8045C2E8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8045C2EC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8045C2F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8045C2F4  4B C3 EB D9 */	bl func_8009AECC
/* 8045C2F8  7C 7E 1B 78 */	mr r30, r3
/* 8045C2FC  3C 60 80 64 */	lis r3, lit_5313@ha /* 0x8064498C@ha */
/* 8045C300  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8045C304  3C 80 80 68 */	lis r4, rock_pos@ha /* 0x80686A78@ha */
/* 8045C308  C3 E3 49 8C */	lfs f31, lit_5313@l(r3)  /* 0x8064498C@l */
/* 8045C30C  3B E0 00 00 */	li r31, 0
/* 8045C310  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8045C314  3B 84 6A 78 */	addi r28, r4, rock_pos@l /* 0x80686A78@l */
/* 8045C318  B0 1E 00 8C */	sth r0, 0x8c(r30)
/* 8045C31C  3B A0 00 00 */	li r29, 0
lbl_8045C320:
/* 8045C320  7C 7C EA 14 */	add r3, r28, r29
/* 8045C324  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8045C328  C0 63 00 00 */	lfs f3, 0(r3)
/* 8045C32C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8045C330  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8045C334  EC 43 10 28 */	fsubs f2, f3, f2
/* 8045C338  EC 21 00 28 */	fsubs f1, f1, f0
/* 8045C33C  EC 62 00 B2 */	fmuls f3, f2, f2
/* 8045C340  EC 01 00 72 */	fmuls f0, f1, f1
/* 8045C344  EF C3 00 2A */	fadds f30, f3, f0
/* 8045C348  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 8045C34C  40 80 00 D0 */	bge lbl_8045C41C
/* 8045C350  4B FA FC B1 */	bl atans_table
/* 8045C354  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8045C358  7C 7B 1B 78 */	mr r27, r3
/* 8045C35C  C0 04 45 BC */	lfs f0, lit_459@l(r4)  /* 0x806445BC@l */
/* 8045C360  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8045C364  40 81 00 6C */	ble lbl_8045C3D0
/* 8045C368  FC 20 F0 34 */	frsqrte f1, f30
/* 8045C36C  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045C370  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 8045C374  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045C378  C8 64 00 00 */	lfd f3, 0(r4)
/* 8045C37C  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C380  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 8045C384  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C388  FC 1E 00 32 */	fmul f0, f30, f0
/* 8045C38C  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C390  FC 21 00 32 */	fmul f1, f1, f0
/* 8045C394  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C398  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C39C  FC 1E 00 32 */	fmul f0, f30, f0
/* 8045C3A0  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C3A4  FC 21 00 32 */	fmul f1, f1, f0
/* 8045C3A8  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C3AC  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C3B0  FC 1E 00 32 */	fmul f0, f30, f0
/* 8045C3B4  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C3B8  FC 01 00 32 */	fmul f0, f1, f0
/* 8045C3BC  FC 1E 00 32 */	fmul f0, f30, f0
/* 8045C3C0  FC 00 00 18 */	frsp f0, f0
/* 8045C3C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045C3C8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045C3CC  48 00 00 08 */	b lbl_8045C3D4
lbl_8045C3D0:
/* 8045C3D0  FC 20 F0 90 */	fmr f1, f30
lbl_8045C3D4:
/* 8045C3D4  3C 80 80 64 */	lis r4, lit_5314@ha /* 0x80644990@ha */
/* 8045C3D8  7F 63 DB 78 */	mr r3, r27
/* 8045C3DC  C0 04 49 90 */	lfs f0, lit_5314@l(r4)  /* 0x80644990@l */
/* 8045C3E0  EF C0 08 28 */	fsubs f30, f0, f1
/* 8045C3E4  4B F5 E7 0D */	bl sin_s
/* 8045C3E8  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8045C3EC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8045C3F0  7F 63 DB 78 */	mr r3, r27
/* 8045C3F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045C3F8  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8045C3FC  4B F5 E6 A1 */	bl cos_s
/* 8045C400  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8045C404  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8045C408  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045C40C  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8045C410  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8045C414  60 00 00 40 */	ori r0, r0, 0x40
/* 8045C418  B0 1E 00 8C */	sth r0, 0x8c(r30)
lbl_8045C41C:
/* 8045C41C  3B FF 00 01 */	addi r31, r31, 1
/* 8045C420  3B BD 00 0C */	addi r29, r29, 0xc
/* 8045C424  2C 1F 00 02 */	cmpwi r31, 2
/* 8045C428  41 80 FE F8 */	blt lbl_8045C320
/* 8045C42C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8045C430  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8045C434  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8045C438  39 61 00 30 */	addi r11, r1, 0x30
/* 8045C43C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8045C440  4B C3 EA D9 */	bl func_8009AF18
/* 8045C444  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8045C448  7C 08 03 A6 */	mtlr r0
/* 8045C44C  38 21 00 50 */	addi r1, r1, 0x50
/* 8045C450  4E 80 00 20 */	blr 
