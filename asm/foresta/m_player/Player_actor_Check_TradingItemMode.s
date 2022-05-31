lbl_804D7630:
/* 804D7630  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D7634  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D7638  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804D763C  3C 63 00 02 */	addis r3, r3, 2
/* 804D7640  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 804D7644  88 63 00 0C */	lbz r3, 0xc(r3)
/* 804D7648  7C 03 00 50 */	subf r0, r3, r0
/* 804D764C  7C 00 00 34 */	cntlzw r0, r0
/* 804D7650  54 03 D9 7E */	srwi r3, r0, 5
/* 804D7654  4E 80 00 20 */	blr 
