lbl_803E9F18:
/* 803E9F18  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803E9F1C  2C 04 00 05 */	cmpwi r4, 5
/* 803E9F20  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803E9F24  3C A5 00 02 */	addis r5, r5, 2
/* 803E9F28  38 A5 03 40 */	addi r5, r5, 0x340
/* 803E9F2C  40 82 00 08 */	bne lbl_803E9F34
/* 803E9F30  38 80 00 00 */	li r4, 0
lbl_803E9F34:
/* 803E9F34  7C 05 20 AE */	lbzx r0, r5, r4
/* 803E9F38  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 803E9F3C  98 03 00 00 */	stb r0, 0(r3)
/* 803E9F40  7C 05 20 AE */	lbzx r0, r5, r4
/* 803E9F44  54 00 E7 BE */	rlwinm r0, r0, 0x1c, 0x1e, 0x1f
/* 803E9F48  98 03 00 01 */	stb r0, 1(r3)
/* 803E9F4C  7C 05 20 AE */	lbzx r0, r5, r4
/* 803E9F50  54 00 F7 BE */	rlwinm r0, r0, 0x1e, 0x1e, 0x1f
/* 803E9F54  98 03 00 02 */	stb r0, 2(r3)
/* 803E9F58  4E 80 00 20 */	blr 
