lbl_80527CF4:
/* 80527CF4  3C A0 80 6A */	lis r5, talk_proc@ha /* 0x806A0F38@ha */
/* 80527CF8  54 80 10 3A */	slwi r0, r4, 2
/* 80527CFC  38 85 0F 38 */	addi r4, r5, talk_proc@l /* 0x806A0F38@l */
/* 80527D00  7C 04 00 2E */	lwzx r0, r4, r0
/* 80527D04  90 03 09 A0 */	stw r0, 0x9a0(r3)
/* 80527D08  4E 80 00 20 */	blr 
