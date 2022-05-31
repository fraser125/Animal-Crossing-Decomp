lbl_803EF300:
/* 803EF300  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EF304  54 65 10 3A */	slwi r5, r3, 2
/* 803EF308  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EF30C  38 60 00 01 */	li r3, 1
/* 803EF310  3C 84 00 02 */	addis r4, r4, 2
/* 803EF314  38 05 0C 68 */	addi r0, r5, 0xc68
/* 803EF318  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 803EF31C  54 04 D9 7A */	rlwinm r4, r0, 0x1b, 5, 0x1d
/* 803EF320  54 00 F6 FE */	rlwinm r0, r0, 0x1e, 0x1b, 0x1f
/* 803EF324  7C 85 22 14 */	add r4, r5, r4
/* 803EF328  80 84 11 08 */	lwz r4, 0x1108(r4)
/* 803EF32C  7C 60 00 30 */	slw r0, r3, r0
/* 803EF330  7C 83 00 38 */	and r3, r4, r0
/* 803EF334  30 03 FF FF */	addic r0, r3, -1
/* 803EF338  7C 60 19 10 */	subfe r3, r0, r3
/* 803EF33C  4E 80 00 20 */	blr 
