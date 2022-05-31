lbl_8049A4B0:
/* 8049A4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049A4B4  7C 08 02 A6 */	mflr r0
/* 8049A4B8  3C C0 80 69 */	lis r6, r_month@ha /* 0x8068CAA8@ha */
/* 8049A4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049A4C0  7C A0 0E 70 */	srawi r0, r5, 1
/* 8049A4C4  54 07 18 38 */	slwi r7, r0, 3
/* 8049A4C8  38 C6 CA A8 */	addi r6, r6, r_month@l /* 0x8068CAA8@l */
/* 8049A4CC  54 80 18 38 */	slwi r0, r4, 3
/* 8049A4D0  54 A5 17 7A */	rlwinm r5, r5, 2, 0x1d, 0x1d
/* 8049A4D4  7C 86 3A 14 */	add r4, r6, r7
/* 8049A4D8  7C 84 28 2E */	lwzx r4, r4, r5
/* 8049A4DC  7C 84 02 15 */	add. r4, r4, r0
/* 8049A4E0  41 82 00 08 */	beq lbl_8049A4E8
/* 8049A4E4  4B FF FE D5 */	bl aSOG_gyoei_copy_range_data
lbl_8049A4E8:
/* 8049A4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049A4EC  7C 08 03 A6 */	mtlr r0
/* 8049A4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8049A4F4  4E 80 00 20 */	blr 
