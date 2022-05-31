lbl_805BE7A8:
/* 805BE7A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BE7AC  3C A0 80 65 */	lis r5, lit_598@ha /* 0x8064ABBC@ha */
/* 805BE7B0  C0 25 AB BC */	lfs f1, lit_598@l(r5)  /* 0x8064ABBC@l */
/* 805BE7B4  3C C0 FA 00 */	lis r6, 0xFA00 /* 0xFA0000FF@ha */
/* 805BE7B8  81 24 00 00 */	lwz r9, 0(r4)
/* 805BE7BC  3C 80 80 65 */	lis r4, lit_599@ha /* 0x8064ABC0@ha */
/* 805BE7C0  C0 04 AB C0 */	lfs f0, lit_599@l(r4)  /* 0x8064ABC0@l */
/* 805BE7C4  38 A6 00 FF */	addi r5, r6, 0x00FF /* 0xFA0000FF@l */
/* 805BE7C8  80 E9 02 D4 */	lwz r7, 0x2d4(r9)
/* 805BE7CC  3C 80 DF 00 */	lis r4, 0xdf00
/* 805BE7D0  38 00 00 00 */	li r0, 0
/* 805BE7D4  39 07 FF F0 */	addi r8, r7, -16
/* 805BE7D8  91 09 02 D4 */	stw r8, 0x2d4(r9)
/* 805BE7DC  C0 43 02 C8 */	lfs f2, 0x2c8(r3)
/* 805BE7E0  7D 03 43 78 */	mr r3, r8
/* 805BE7E4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805BE7E8  90 A7 FF F0 */	stw r5, -0x10(r7)
/* 805BE7EC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 805BE7F0  FC 00 00 1E */	fctiwz f0, f0
/* 805BE7F4  FC 20 08 1E */	fctiwz f1, f1
/* 805BE7F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BE7FC  D8 21 00 08 */	stfd f1, 8(r1)
/* 805BE800  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805BE804  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 805BE808  54 C5 82 1E */	rlwinm r5, r6, 0x10, 8, 0xf
/* 805BE80C  50 C5 C0 0E */	rlwimi r5, r6, 0x18, 0, 7
/* 805BE810  50 E5 44 2E */	rlwimi r5, r7, 8, 0x10, 0x17
/* 805BE814  60 A5 00 FF */	ori r5, r5, 0xff
/* 805BE818  90 A8 00 04 */	stw r5, 4(r8)
/* 805BE81C  90 88 00 08 */	stw r4, 8(r8)
/* 805BE820  90 08 00 0C */	stw r0, 0xc(r8)
/* 805BE824  38 21 00 20 */	addi r1, r1, 0x20
/* 805BE828  4E 80 00 20 */	blr 
