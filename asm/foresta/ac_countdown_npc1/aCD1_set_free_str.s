lbl_80517F2C:
/* 80517F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517F30  7C 08 02 A6 */	mflr r0
/* 80517F34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80517F38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80517F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517F40  3C 63 00 02 */	addis r3, r3, 2
/* 80517F44  A0 63 61 26 */	lhz r3, 0x6126(r3)
/* 80517F48  38 63 00 01 */	addi r3, r3, 1
/* 80517F4C  4B FF FF 29 */	bl aCD1_set_free_str_year
/* 80517F50  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80517F54  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80517F58  3C 63 00 02 */	addis r3, r3, 2
/* 80517F5C  88 03 61 21 */	lbz r0, 0x6121(r3)
/* 80517F60  20 60 00 3B */	subfic r3, r0, 0x3b
/* 80517F64  4B FF FF 61 */	bl aCD1_set_free_str_min
/* 80517F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517F6C  7C 08 03 A6 */	mtlr r0
/* 80517F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80517F74  4E 80 00 20 */	blr 
