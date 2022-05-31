lbl_80575F6C:
/* 80575F6C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80575F70  3C A0 80 6C */	lis r5, talk_proc@ha /* 0x806BF8A0@ha */
/* 80575F74  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80575F78  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80575F7C  38 85 F8 A0 */	addi r4, r5, talk_proc@l /* 0x806BF8A0@l */
/* 80575F80  7C 04 00 2E */	lwzx r0, r4, r0
/* 80575F84  90 03 09 A0 */	stw r0, 0x9a0(r3)
/* 80575F88  4E 80 00 20 */	blr 
