lbl_803EF1A8:
/* 803EF1A8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EF1AC  54 65 10 3A */	slwi r5, r3, 2
/* 803EF1B0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EF1B4  38 60 00 01 */	li r3, 1
/* 803EF1B8  3C 84 00 02 */	addis r4, r4, 2
/* 803EF1BC  38 05 0B C8 */	addi r0, r5, 0xbc8
/* 803EF1C0  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 803EF1C4  54 04 D9 7A */	rlwinm r4, r0, 0x1b, 5, 0x1d
/* 803EF1C8  54 00 F6 FE */	rlwinm r0, r0, 0x1e, 0x1b, 0x1f
/* 803EF1CC  7C 85 22 14 */	add r4, r5, r4
/* 803EF1D0  80 84 11 08 */	lwz r4, 0x1108(r4)
/* 803EF1D4  7C 60 00 30 */	slw r0, r3, r0
/* 803EF1D8  7C 83 00 38 */	and r3, r4, r0
/* 803EF1DC  30 03 FF FF */	addic r0, r3, -1
/* 803EF1E0  7C 60 19 10 */	subfe r3, r0, r3
/* 803EF1E4  4E 80 00 20 */	blr 
