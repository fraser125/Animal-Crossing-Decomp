lbl_8053DD50:
/* 8053DD50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DD54  7C 08 02 A6 */	mflr r0
/* 8053DD58  3C A0 80 6A */	lis r5, data_806A2B78@ha /* 0x806A2B78@ha */
/* 8053DD5C  38 C5 2B 78 */	addi r6, r5, data_806A2B78@l /* 0x806A2B78@l */
/* 8053DD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DD64  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 8053DD68  38 E6 0D 78 */	addi r7, r6, 0xd78
/* 8053DD6C  39 06 08 DC */	addi r8, r6, 0x8dc
/* 8053DD70  7C E7 02 14 */	add r7, r7, r0
/* 8053DD74  88 07 00 06 */	lbz r0, 6(r7)
/* 8053DD78  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8053DD7C  98 83 08 32 */	stb r4, 0x832(r3)
/* 8053DD80  A8 07 00 04 */	lha r0, 4(r7)
/* 8053DD84  7D 08 2A 14 */	add r8, r8, r5
/* 8053DD88  B0 03 09 26 */	sth r0, 0x926(r3)
/* 8053DD8C  C0 08 00 00 */	lfs f0, 0(r8)
/* 8053DD90  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8053DD94  C0 08 00 04 */	lfs f0, 4(r8)
/* 8053DD98  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8053DD9C  C0 08 00 08 */	lfs f0, 8(r8)
/* 8053DDA0  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8053DDA4  88 07 00 06 */	lbz r0, 6(r7)
/* 8053DDA8  28 00 00 00 */	cmplwi r0, 0
/* 8053DDAC  40 82 00 10 */	bne lbl_8053DDBC
/* 8053DDB0  3C A0 80 65 */	lis r5, data_80649374@ha /* 0x80649374@ha */
/* 8053DDB4  C0 05 93 74 */	lfs f0, data_80649374@l(r5)  /* 0x80649374@l */
/* 8053DDB8  D0 03 00 74 */	stfs f0, 0x74(r3)
lbl_8053DDBC:
/* 8053DDBC  38 A0 00 00 */	li r5, 0
/* 8053DDC0  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 8053DDC4  98 A3 09 72 */	stb r5, 0x972(r3)
/* 8053DDC8  38 86 07 E0 */	addi r4, r6, 0x7e0
/* 8053DDCC  7C 84 02 AE */	lhax r4, r4, r0
/* 8053DDD0  80 A7 00 00 */	lwz r5, 0(r7)
/* 8053DDD4  4B FF D8 4D */	bl aNPC_Animation_init
/* 8053DDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DDDC  7C 08 03 A6 */	mtlr r0
/* 8053DDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DDE4  4E 80 00 20 */	blr 
