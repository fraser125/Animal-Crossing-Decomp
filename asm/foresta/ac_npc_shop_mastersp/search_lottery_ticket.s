lbl_8057CBF4:
/* 8057CBF4  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8057CBF8  54 65 08 3C */	slwi r5, r3, 1
/* 8057CBFC  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 8057CC00  3C 63 00 02 */	addis r3, r3, 2
/* 8057CC04  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057CC08  80 03 00 88 */	lwz r0, 0x88(r3)
/* 8057CC0C  7C 63 2A 14 */	add r3, r3, r5
/* 8057CC10  A0 C3 00 68 */	lhz r6, 0x68(r3)
/* 8057CC14  7C 00 2C 30 */	srw r0, r0, r5
/* 8057CC18  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8057CC1C  40 82 00 3C */	bne lbl_8057CC58
/* 8057CC20  54 C0 A7 3E */	rlwinm r0, r6, 0x14, 0x1c, 0x1f
/* 8057CC24  2C 00 00 02 */	cmpwi r0, 2
/* 8057CC28  40 82 00 30 */	bne lbl_8057CC58
/* 8057CC2C  38 06 E0 00 */	addi r0, r6, -8192
/* 8057CC30  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 8057CC34  2C 00 00 0C */	cmpwi r0, 0xc
/* 8057CC38  40 82 00 20 */	bne lbl_8057CC58
/* 8057CC3C  54 C3 EF 3E */	rlwinm r3, r6, 0x1d, 0x1c, 0x1f
/* 8057CC40  38 03 00 01 */	addi r0, r3, 1
/* 8057CC44  7C 00 20 00 */	cmpw r0, r4
/* 8057CC48  40 82 00 10 */	bne lbl_8057CC58
/* 8057CC4C  54 C3 07 7E */	clrlwi r3, r6, 0x1d
/* 8057CC50  38 63 00 01 */	addi r3, r3, 1
/* 8057CC54  4E 80 00 20 */	blr 
lbl_8057CC58:
/* 8057CC58  38 60 00 00 */	li r3, 0
/* 8057CC5C  4E 80 00 20 */	blr 
