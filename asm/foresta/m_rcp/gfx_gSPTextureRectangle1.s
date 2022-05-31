lbl_803E5A20:
/* 803E5A20  54 C0 6A 24 */	rlwinm r0, r6, 0xd, 8, 0x12
/* 803E5A24  54 84 6A 24 */	rlwinm r4, r4, 0xd, 8, 0x12
/* 803E5A28  64 06 E4 00 */	oris r6, r0, 0xe400
/* 803E5A2C  51 2A 80 1E */	rlwimi r10, r9, 0x10, 0, 0xf
/* 803E5A30  54 E0 0D 3C */	rlwinm r0, r7, 1, 0x14, 0x1e
/* 803E5A34  51 04 C1 4E */	rlwimi r4, r8, 0x18, 5, 7
/* 803E5A38  7C C0 03 78 */	or r0, r6, r0
/* 803E5A3C  80 C1 00 08 */	lwz r6, 8(r1)
/* 803E5A40  90 03 00 00 */	stw r0, 0(r3)
/* 803E5A44  50 A4 0D 3C */	rlwimi r4, r5, 1, 0x14, 0x1e
/* 803E5A48  3C 00 E1 00 */	lis r0, 0xe100
/* 803E5A4C  3C A0 F1 00 */	lis r5, 0xf100
/* 803E5A50  90 83 00 04 */	stw r4, 4(r3)
/* 803E5A54  7C C4 0E 70 */	srawi r4, r6, 1
/* 803E5A58  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803E5A5C  90 03 00 08 */	stw r0, 8(r3)
/* 803E5A60  7C C0 0E 70 */	srawi r0, r6, 1
/* 803E5A64  38 C3 00 18 */	addi r6, r3, 0x18
/* 803E5A68  91 43 00 0C */	stw r10, 0xc(r3)
/* 803E5A6C  50 80 80 1E */	rlwimi r0, r4, 0x10, 0, 0xf
/* 803E5A70  90 A3 00 10 */	stw r5, 0x10(r3)
/* 803E5A74  90 03 00 14 */	stw r0, 0x14(r3)
/* 803E5A78  7C C3 33 78 */	mr r3, r6
/* 803E5A7C  4E 80 00 20 */	blr 
