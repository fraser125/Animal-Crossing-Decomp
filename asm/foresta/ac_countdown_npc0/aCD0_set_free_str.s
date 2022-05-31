lbl_80516C78:
/* 80516C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80516C7C  7C 08 02 A6 */	mflr r0
/* 80516C80  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80516C84  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80516C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516C8C  3C 63 00 02 */	addis r3, r3, 2
/* 80516C90  A0 63 61 26 */	lhz r3, 0x6126(r3)
/* 80516C94  38 63 00 01 */	addi r3, r3, 1
/* 80516C98  4B FF FF 29 */	bl aCD0_set_free_str_year
/* 80516C9C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80516CA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80516CA4  3C 63 00 02 */	addis r3, r3, 2
/* 80516CA8  88 03 61 21 */	lbz r0, 0x6121(r3)
/* 80516CAC  20 60 00 3B */	subfic r3, r0, 0x3b
/* 80516CB0  4B FF FF 61 */	bl aCD0_set_free_str_min
/* 80516CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516CB8  7C 08 03 A6 */	mtlr r0
/* 80516CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80516CC0  4E 80 00 20 */	blr 
