lbl_805B6020:
/* 805B6020  81 44 00 00 */	lwz r10, 0(r4)
/* 805B6024  3C A0 D5 02 */	lis r5, 0xD502 /* 0xD5020001@ha */
/* 805B6028  3C 80 80 6C */	lis r4, edge_alpha@ha /* 0x806C5FFC@ha */
/* 805B602C  38 E0 00 00 */	li r7, 0
/* 805B6030  81 2A 02 D0 */	lwz r9, 0x2d0(r10)
/* 805B6034  39 05 00 01 */	addi r8, r5, 0x0001 /* 0xD5020001@l */
/* 805B6038  3C C0 CE 00 */	lis r6, 0xce00
/* 805B603C  38 A4 5F FC */	addi r5, r4, edge_alpha@l /* 0x806C5FFC@l */
/* 805B6040  38 09 00 08 */	addi r0, r9, 8
/* 805B6044  90 0A 02 D0 */	stw r0, 0x2d0(r10)
/* 805B6048  91 09 00 00 */	stw r8, 0(r9)
/* 805B604C  90 E9 00 04 */	stw r7, 4(r9)
/* 805B6050  80 8A 03 00 */	lwz r4, 0x300(r10)
/* 805B6054  38 04 00 08 */	addi r0, r4, 8
/* 805B6058  90 0A 03 00 */	stw r0, 0x300(r10)
/* 805B605C  91 04 00 00 */	stw r8, 0(r4)
/* 805B6060  90 E4 00 04 */	stw r7, 4(r4)
/* 805B6064  80 8A 02 D0 */	lwz r4, 0x2d0(r10)
/* 805B6068  38 04 00 08 */	addi r0, r4, 8
/* 805B606C  90 0A 02 D0 */	stw r0, 0x2d0(r10)
/* 805B6070  90 C4 00 00 */	stw r6, 0(r4)
/* 805B6074  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 805B6078  7C 05 00 AE */	lbzx r0, r5, r0
/* 805B607C  90 04 00 04 */	stw r0, 4(r4)
/* 805B6080  80 8A 03 00 */	lwz r4, 0x300(r10)
/* 805B6084  38 04 00 08 */	addi r0, r4, 8
/* 805B6088  90 0A 03 00 */	stw r0, 0x300(r10)
/* 805B608C  90 C4 00 00 */	stw r6, 0(r4)
/* 805B6090  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 805B6094  7C 05 00 AE */	lbzx r0, r5, r0
/* 805B6098  90 04 00 04 */	stw r0, 4(r4)
/* 805B609C  4E 80 00 20 */	blr 