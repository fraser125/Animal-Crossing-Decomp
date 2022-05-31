lbl_805E606C:
/* 805E606C  1C C5 00 0E */	mulli r6, r5, 0xe
/* 805E6070  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805E6074  54 80 08 3C */	slwi r0, r4, 1
/* 805E6078  80 83 00 B8 */	lwz r4, 0xb8(r3)
/* 805E607C  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805E6080  7C 63 32 14 */	add r3, r3, r6
/* 805E6084  7C 63 02 14 */	add r3, r3, r0
/* 805E6088  3C 63 00 01 */	addis r3, r3, 1
/* 805E608C  A0 03 73 A8 */	lhz r0, 0x73a8(r3)
/* 805E6090  54 00 F4 BE */	rlwinm r0, r0, 0x1e, 0x12, 0x1f
/* 805E6094  1C 00 00 06 */	mulli r0, r0, 6
/* 805E6098  7C 64 02 14 */	add r3, r4, r0
/* 805E609C  A0 63 00 02 */	lhz r3, 2(r3)
/* 805E60A0  4E 80 00 20 */	blr 
