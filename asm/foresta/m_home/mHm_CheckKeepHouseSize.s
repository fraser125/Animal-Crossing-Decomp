lbl_803B3438:
/* 803B3438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B343C  7C 08 02 A6 */	mflr r0
/* 803B3440  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803B3444  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3448  28 03 00 04 */	cmplwi r3, 4
/* 803B344C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B3450  3B E0 00 00 */	li r31, 0
/* 803B3454  40 80 00 6C */	bge lbl_803B34C0
/* 803B3458  48 00 01 61 */	bl mHS_get_arrange_idx
/* 803B345C  1C A3 26 B0 */	mulli r5, r3, 0x26b0
/* 803B3460  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B3464  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803B3468  7C 80 2A 14 */	add r4, r0, r5
/* 803B346C  7C 60 1A 14 */	add r3, r0, r3
/* 803B3470  3C A4 00 01 */	addis r5, r4, 1
/* 803B3474  88 05 9D 12 */	lbz r0, -0x62ee(r5)
/* 803B3478  3C 63 00 02 */	addis r3, r3, 2
/* 803B347C  88 83 13 A0 */	lbz r4, 0x13a0(r3)
/* 803B3480  38 A5 9C E8 */	addi r5, r5, -25368
/* 803B3484  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 803B3488  54 83 07 7E */	clrlwi r3, r4, 0x1d
/* 803B348C  7C 03 00 00 */	cmpw r3, r0
/* 803B3490  40 82 00 30 */	bne lbl_803B34C0
/* 803B3494  88 05 00 2A */	lbz r0, 0x2a(r5)
/* 803B3498  54 83 EF 7E */	rlwinm r3, r4, 0x1d, 0x1d, 0x1f
/* 803B349C  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 803B34A0  7C 03 00 00 */	cmpw r3, r0
/* 803B34A4  40 82 00 1C */	bne lbl_803B34C0
/* 803B34A8  88 05 00 2B */	lbz r0, 0x2b(r5)
/* 803B34AC  54 83 D7 FE */	rlwinm r3, r4, 0x1a, 0x1f, 0x1f
/* 803B34B0  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 803B34B4  7C 03 00 00 */	cmpw r3, r0
/* 803B34B8  40 82 00 08 */	bne lbl_803B34C0
/* 803B34BC  3B E0 00 01 */	li r31, 1
lbl_803B34C0:
/* 803B34C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B34C4  7F E3 FB 78 */	mr r3, r31
/* 803B34C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B34CC  7C 08 03 A6 */	mtlr r0
/* 803B34D0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B34D4  4E 80 00 20 */	blr 
