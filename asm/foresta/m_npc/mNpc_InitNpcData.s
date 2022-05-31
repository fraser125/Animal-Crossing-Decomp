lbl_803CF9D0:
/* 803CF9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CF9D4  7C 08 02 A6 */	mflr r0
/* 803CF9D8  3C 60 81 17 */	lis r3, reserved@ha /* 0x8116BA04@ha */
/* 803CF9DC  38 80 00 3C */	li r4, 0x3c
/* 803CF9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CF9E4  38 00 00 00 */	li r0, 0
/* 803CF9E8  38 63 BA 04 */	addi r3, r3, reserved@l /* 0x8116BA04@l */
/* 803CF9EC  38 A1 00 08 */	addi r5, r1, 8
/* 803CF9F0  98 01 00 08 */	stb r0, 8(r1)
/* 803CF9F4  4B FF FA 0D */	bl mNpc_MakeReservedListBeforeFieldct
/* 803CF9F8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CF9FC  3C 80 81 17 */	lis r4, reserved@ha /* 0x8116BA04@ha */
/* 803CFA00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CFA04  88 A1 00 08 */	lbz r5, 8(r1)
/* 803CFA08  3C 63 00 01 */	addis r3, r3, 1
/* 803CFA0C  38 84 BA 04 */	addi r4, r4, reserved@l /* 0x8116BA04@l */
/* 803CFA10  38 63 74 38 */	addi r3, r3, 0x7438
/* 803CFA14  4B FF FE 5D */	bl mNpc_SetNpcHome
/* 803CFA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CFA1C  7C 08 03 A6 */	mtlr r0
/* 803CFA20  38 21 00 10 */	addi r1, r1, 0x10
/* 803CFA24  4E 80 00 20 */	blr 
