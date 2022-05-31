lbl_803B34D8:
/* 803B34D8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803B34DC  28 00 00 04 */	cmplwi r0, 4
/* 803B34E0  40 80 00 3C */	bge lbl_803B351C
/* 803B34E4  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 803B34E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B34EC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803B34F0  7C 60 22 14 */	add r3, r0, r4
/* 803B34F4  3C 83 00 01 */	addis r4, r3, 1
/* 803B34F8  8C 04 9D 0C */	lbzu r0, -0x62f4(r4)
/* 803B34FC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 803B3500  40 82 00 1C */	bne lbl_803B351C
/* 803B3504  88 04 00 00 */	lbz r0, 0(r4)
/* 803B3508  38 60 00 01 */	li r3, 1
/* 803B350C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 803B3510  38 60 00 01 */	li r3, 1
/* 803B3514  98 04 00 00 */	stb r0, 0(r4)
/* 803B3518  4E 80 00 20 */	blr 
lbl_803B351C:
/* 803B351C  38 60 00 00 */	li r3, 0
/* 803B3520  4E 80 00 20 */	blr 
