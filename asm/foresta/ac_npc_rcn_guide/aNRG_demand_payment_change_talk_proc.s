lbl_8056F3D8:
/* 8056F3D8  3C A0 80 6C */	lis r5, talk_proc@ha /* 0x806BED68@ha */
/* 8056F3DC  54 80 10 3A */	slwi r0, r4, 2
/* 8056F3E0  38 85 ED 68 */	addi r4, r5, talk_proc@l /* 0x806BED68@l */
/* 8056F3E4  7C 04 00 2E */	lwzx r0, r4, r0
/* 8056F3E8  90 03 09 A4 */	stw r0, 0x9a4(r3)
/* 8056F3EC  4E 80 00 20 */	blr 
