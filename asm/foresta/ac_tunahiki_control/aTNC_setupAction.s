lbl_804AD540:
/* 804AD540  3C A0 80 69 */	lis r5, process@ha /* 0x8068F754@ha */
/* 804AD544  90 83 01 78 */	stw r4, 0x178(r3)
/* 804AD548  54 80 10 3A */	slwi r0, r4, 2
/* 804AD54C  38 85 F7 54 */	addi r4, r5, process@l /* 0x8068F754@l */
/* 804AD550  7C 04 00 2E */	lwzx r0, r4, r0
/* 804AD554  90 03 01 74 */	stw r0, 0x174(r3)
/* 804AD558  4E 80 00 20 */	blr 
