lbl_8045C154:
/* 8045C154  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8045C158  7C 08 02 A6 */	mflr r0
/* 8045C15C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8045C160  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8045C164  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8045C168  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8045C16C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8045C170  39 61 00 30 */	addi r11, r1, 0x30
/* 8045C174  4B C3 ED 59 */	bl func_8009AECC
/* 8045C178  7C 7E 1B 78 */	mr r30, r3
/* 8045C17C  3C 60 80 64 */	lis r3, lit_5291@ha /* 0x80644984@ha */
/* 8045C180  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8045C184  3C 80 80 68 */	lis r4, tree_pos@ha /* 0x80686A18@ha */
/* 8045C188  C3 E3 49 84 */	lfs f31, lit_5291@l(r3)  /* 0x80644984@l */
/* 8045C18C  3B E0 00 00 */	li r31, 0
/* 8045C190  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8045C194  3B 84 6A 18 */	addi r28, r4, tree_pos@l /* 0x80686A18@l */
/* 8045C198  B0 1E 00 8C */	sth r0, 0x8c(r30)
/* 8045C19C  3B A0 00 00 */	li r29, 0
lbl_8045C1A0:
/* 8045C1A0  7C 7C EA 14 */	add r3, r28, r29
/* 8045C1A4  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8045C1A8  C0 63 00 00 */	lfs f3, 0(r3)
/* 8045C1AC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8045C1B0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8045C1B4  EC 43 10 28 */	fsubs f2, f3, f2
/* 8045C1B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8045C1BC  EC 62 00 B2 */	fmuls f3, f2, f2
/* 8045C1C0  EC 01 00 72 */	fmuls f0, f1, f1
/* 8045C1C4  EF C3 00 2A */	fadds f30, f3, f0
/* 8045C1C8  FC 1E F8 40 */	fcmpo cr0, f30, f31
/* 8045C1CC  40 80 00 D0 */	bge lbl_8045C29C
/* 8045C1D0  4B FA FE 31 */	bl atans_table
/* 8045C1D4  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8045C1D8  7C 7B 1B 78 */	mr r27, r3
/* 8045C1DC  C0 04 45 BC */	lfs f0, lit_459@l(r4)  /* 0x806445BC@l */
/* 8045C1E0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8045C1E4  40 81 00 6C */	ble lbl_8045C250
/* 8045C1E8  FC 20 F0 34 */	frsqrte f1, f30
/* 8045C1EC  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045C1F0  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 8045C1F4  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045C1F8  C8 64 00 00 */	lfd f3, 0(r4)
/* 8045C1FC  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C200  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 8045C204  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C208  FC 1E 00 32 */	fmul f0, f30, f0
/* 8045C20C  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C210  FC 21 00 32 */	fmul f1, f1, f0
/* 8045C214  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C218  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C21C  FC 1E 00 32 */	fmul f0, f30, f0
/* 8045C220  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C224  FC 21 00 32 */	fmul f1, f1, f0
/* 8045C228  FC 01 00 72 */	fmul f0, f1, f1
/* 8045C22C  FC 23 00 72 */	fmul f1, f3, f1
/* 8045C230  FC 1E 00 32 */	fmul f0, f30, f0
/* 8045C234  FC 02 00 28 */	fsub f0, f2, f0
/* 8045C238  FC 01 00 32 */	fmul f0, f1, f0
/* 8045C23C  FC 1E 00 32 */	fmul f0, f30, f0
/* 8045C240  FC 00 00 18 */	frsp f0, f0
/* 8045C244  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045C248  C0 21 00 08 */	lfs f1, 8(r1)
/* 8045C24C  48 00 00 08 */	b lbl_8045C254
lbl_8045C250:
/* 8045C250  FC 20 F0 90 */	fmr f1, f30
lbl_8045C254:
/* 8045C254  3C 80 80 64 */	lis r4, lit_5292@ha /* 0x80644988@ha */
/* 8045C258  7F 63 DB 78 */	mr r3, r27
/* 8045C25C  C0 04 49 88 */	lfs f0, lit_5292@l(r4)  /* 0x80644988@l */
/* 8045C260  EF C0 08 28 */	fsubs f30, f0, f1
/* 8045C264  4B F5 E8 8D */	bl sin_s
/* 8045C268  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8045C26C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8045C270  7F 63 DB 78 */	mr r3, r27
/* 8045C274  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045C278  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8045C27C  4B F5 E8 21 */	bl cos_s
/* 8045C280  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8045C284  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8045C288  EC 00 08 28 */	fsubs f0, f0, f1
/* 8045C28C  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8045C290  A8 1E 00 8C */	lha r0, 0x8c(r30)
/* 8045C294  60 00 00 80 */	ori r0, r0, 0x80
/* 8045C298  B0 1E 00 8C */	sth r0, 0x8c(r30)
lbl_8045C29C:
/* 8045C29C  3B FF 00 01 */	addi r31, r31, 1
/* 8045C2A0  3B BD 00 0C */	addi r29, r29, 0xc
/* 8045C2A4  2C 1F 00 08 */	cmpwi r31, 8
/* 8045C2A8  41 80 FE F8 */	blt lbl_8045C1A0
/* 8045C2AC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8045C2B0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8045C2B4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8045C2B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8045C2BC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8045C2C0  4B C3 EC 59 */	bl func_8009AF18
/* 8045C2C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8045C2C8  7C 08 03 A6 */	mtlr r0
/* 8045C2CC  38 21 00 50 */	addi r1, r1, 0x50
/* 8045C2D0  4E 80 00 20 */	blr 
