lbl_803E9964:
/* 803E9964  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E9968  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E996C  3C 63 00 02 */	addis r3, r3, 2
/* 803E9970  88 03 04 66 */	lbz r0, 0x466(r3)
/* 803E9974  54 03 D7 BE */	rlwinm r3, r0, 0x1a, 0x1e, 0x1f
/* 803E9978  4E 80 00 20 */	blr 
