lbl_8039A4F8:
/* 8039A4F8  3C C0 AA 48 */	lis r6, 0xAA48 /* 0xAA478422@ha */
/* 8039A4FC  3C A0 81 16 */	lis r5, crcTable@ha /* 0x81167288@ha */
/* 8039A500  39 00 00 00 */	li r8, 0
/* 8039A504  38 E6 84 22 */	addi r7, r6, 0x8422 /* 0xAA478422@l */
/* 8039A508  38 A5 72 88 */	addi r5, r5, crcTable@l /* 0x81167288@l */
lbl_8039A50C:
/* 8039A50C  88 03 00 00 */	lbz r0, 0(r3)
/* 8039A510  39 08 00 01 */	addi r8, r8, 1
/* 8039A514  7C 08 20 40 */	cmplw r8, r4
/* 8039A518  54 E6 C2 3E */	srwi r6, r7, 8
/* 8039A51C  7C E0 02 78 */	xor r0, r7, r0
/* 8039A520  38 63 00 01 */	addi r3, r3, 1
/* 8039A524  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8039A528  7C 05 00 2E */	lwzx r0, r5, r0
/* 8039A52C  7C C7 02 78 */	xor r7, r6, r0
/* 8039A530  40 82 FF DC */	bne lbl_8039A50C
/* 8039A534  7C E3 3B 78 */	mr r3, r7
/* 8039A538  4E 80 00 20 */	blr 
