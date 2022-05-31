lbl_803F007C:
/* 803F007C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803F0080  54 64 08 3C */	slwi r4, r3, 1
/* 803F0084  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 803F0088  3C 63 00 02 */	addis r3, r3, 2
/* 803F008C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803F0090  80 03 00 88 */	lwz r0, 0x88(r3)
/* 803F0094  7C 63 22 14 */	add r3, r3, r4
/* 803F0098  A0 63 00 68 */	lhz r3, 0x68(r3)
/* 803F009C  7C 00 24 30 */	srw r0, r0, r4
/* 803F00A0  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 803F00A4  40 82 00 24 */	bne lbl_803F00C8
/* 803F00A8  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803F00AC  2C 00 00 02 */	cmpwi r0, 2
/* 803F00B0  40 82 00 18 */	bne lbl_803F00C8
/* 803F00B4  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 803F00B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 803F00BC  40 82 00 0C */	bne lbl_803F00C8
/* 803F00C0  38 60 00 01 */	li r3, 1
/* 803F00C4  4E 80 00 20 */	blr 
lbl_803F00C8:
/* 803F00C8  38 60 00 00 */	li r3, 0
/* 803F00CC  4E 80 00 20 */	blr 
