lbl_8052FD2C:
/* 8052FD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FD30  7C 08 02 A6 */	mflr r0
/* 8052FD34  3C A0 80 6A */	lis r5, data_806A1400@ha /* 0x806A1400@ha */
/* 8052FD38  38 C5 14 00 */	addi r6, r5, data_806A1400@l /* 0x806A1400@l */
/* 8052FD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FD40  54 80 1D 78 */	rlwinm r0, r4, 3, 0x15, 0x1c
/* 8052FD44  38 E6 0D A0 */	addi r7, r6, 0xda0
/* 8052FD48  39 06 08 F8 */	addi r8, r6, 0x8f8
/* 8052FD4C  7C E7 02 14 */	add r7, r7, r0
/* 8052FD50  88 07 00 06 */	lbz r0, 6(r7)
/* 8052FD54  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8052FD58  98 83 08 32 */	stb r4, 0x832(r3)
/* 8052FD5C  A8 07 00 04 */	lha r0, 4(r7)
/* 8052FD60  7D 08 2A 14 */	add r8, r8, r5
/* 8052FD64  B0 03 09 26 */	sth r0, 0x926(r3)
/* 8052FD68  C0 08 00 00 */	lfs f0, 0(r8)
/* 8052FD6C  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8052FD70  C0 08 00 04 */	lfs f0, 4(r8)
/* 8052FD74  D0 03 08 FC */	stfs f0, 0x8fc(r3)
/* 8052FD78  C0 08 00 08 */	lfs f0, 8(r8)
/* 8052FD7C  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8052FD80  88 07 00 06 */	lbz r0, 6(r7)
/* 8052FD84  28 00 00 00 */	cmplwi r0, 0
/* 8052FD88  40 82 00 10 */	bne lbl_8052FD98
/* 8052FD8C  3C A0 80 65 */	lis r5, data_80649274@ha /* 0x80649274@ha */
/* 8052FD90  C0 05 92 74 */	lfs f0, data_80649274@l(r5)  /* 0x80649274@l */
/* 8052FD94  D0 03 00 74 */	stfs f0, 0x74(r3)
lbl_8052FD98:
/* 8052FD98  38 A0 00 00 */	li r5, 0
/* 8052FD9C  54 80 0D FC */	rlwinm r0, r4, 1, 0x17, 0x1e
/* 8052FDA0  98 A3 09 72 */	stb r5, 0x972(r3)
/* 8052FDA4  38 86 07 E0 */	addi r4, r6, 0x7e0
/* 8052FDA8  7C 84 02 AE */	lhax r4, r4, r0
/* 8052FDAC  80 A7 00 00 */	lwz r5, 0(r7)
/* 8052FDB0  4B FF CC 61 */	bl aNPC_Animation_init
/* 8052FDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FDB8  7C 08 03 A6 */	mtlr r0
/* 8052FDBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FDC0  4E 80 00 20 */	blr 
