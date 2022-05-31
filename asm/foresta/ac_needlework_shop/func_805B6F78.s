lbl_805B6F78:
/* 805B6F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B6F7C  2C 05 00 05 */	cmpwi r5, 5
/* 805B6F80  81 23 00 00 */	lwz r9, 0(r3)
/* 805B6F84  40 82 00 74 */	bne lbl_805B6FF8
/* 805B6F88  3C 60 80 65 */	lis r3, lit_672@ha /* 0x8064A9EC@ha */
/* 805B6F8C  3C 80 80 65 */	lis r4, lit_671@ha /* 0x8064A9E8@ha */
/* 805B6F90  C0 68 02 C8 */	lfs f3, 0x2c8(r8)
/* 805B6F94  3C E0 80 65 */	lis r7, lit_599@ha /* 0x8064A9E0@ha */
/* 805B6F98  C0 03 A9 EC */	lfs f0, lit_672@l(r3)  /* 0x8064A9EC@l */
/* 805B6F9C  3C 00 FA 00 */	lis r0, 0xfa00
/* 805B6FA0  C0 24 A9 E8 */	lfs f1, lit_671@l(r4)  /* 0x8064A9E8@l */
/* 805B6FA4  C0 47 A9 E0 */	lfs f2, lit_599@l(r7)  /* 0x8064A9E0@l */
/* 805B6FA8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805B6FAC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805B6FB0  80 E9 02 D0 */	lwz r7, 0x2d0(r9)
/* 805B6FB4  EC 02 00 2A */	fadds f0, f2, f0
/* 805B6FB8  90 07 00 00 */	stw r0, 0(r7)
/* 805B6FBC  EC 22 08 2A */	fadds f1, f2, f1
/* 805B6FC0  7C E8 3B 78 */	mr r8, r7
/* 805B6FC4  38 E7 00 08 */	addi r7, r7, 8
/* 805B6FC8  FC 00 00 1E */	fctiwz f0, f0
/* 805B6FCC  FC 20 08 1E */	fctiwz f1, f1
/* 805B6FD0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B6FD4  D8 21 00 08 */	stfd f1, 8(r1)
/* 805B6FD8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805B6FDC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805B6FE0  54 60 82 1E */	rlwinm r0, r3, 0x10, 8, 0xf
/* 805B6FE4  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805B6FE8  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805B6FEC  60 00 00 FF */	ori r0, r0, 0xff
/* 805B6FF0  90 08 00 04 */	stw r0, 4(r8)
/* 805B6FF4  90 E9 02 D0 */	stw r7, 0x2d0(r9)
lbl_805B6FF8:
/* 805B6FF8  2C 05 00 06 */	cmpwi r5, 6
/* 805B6FFC  40 82 00 0C */	bne lbl_805B7008
/* 805B7000  38 00 00 00 */	li r0, 0
/* 805B7004  90 06 00 00 */	stw r0, 0(r6)
lbl_805B7008:
/* 805B7008  38 60 00 01 */	li r3, 1
/* 805B700C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B7010  4E 80 00 20 */	blr 
