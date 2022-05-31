lbl_8042AAC4:
/* 8042AAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042AAC8  7C 08 02 A6 */	mflr r0
/* 8042AACC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8042AAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AAD4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8042AAD8  38 00 00 03 */	li r0, 3
/* 8042AADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042AAE0  7C 9F 23 78 */	mr r31, r4
/* 8042AAE4  3C 85 00 03 */	addis r4, r5, 3
/* 8042AAE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8042AAEC  7C 7E 1B 78 */	mr r30, r3
/* 8042AAF0  7F E3 FB 78 */	mr r3, r31
/* 8042AAF4  98 04 88 3E */	stb r0, -0x77c2(r4)
/* 8042AAF8  4B FF FE FD */	bl func_8042A9F4
/* 8042AAFC  7F C3 F3 78 */	mr r3, r30
/* 8042AB00  7F E4 FB 78 */	mr r4, r31
/* 8042AB04  38 A0 00 01 */	li r5, 1
/* 8042AB08  48 00 0A 0D */	bl aID_setupAction
/* 8042AB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AB10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042AB14  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042AB18  7C 08 03 A6 */	mtlr r0
/* 8042AB1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AB20  4E 80 00 20 */	blr 
