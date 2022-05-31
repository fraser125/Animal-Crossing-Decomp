lbl_8056ECB8:
/* 8056ECB8  3C A0 80 6C */	lis r5, talk_permit@ha /* 0x806BECD4@ha */
/* 8056ECBC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8056ECC0  38 85 EC D4 */	addi r4, r5, talk_permit@l /* 0x806BECD4@l */
/* 8056ECC4  7C 04 00 AE */	lbzx r0, r4, r0
/* 8056ECC8  98 03 09 9F */	stb r0, 0x99f(r3)
/* 8056ECCC  4E 80 00 20 */	blr 
