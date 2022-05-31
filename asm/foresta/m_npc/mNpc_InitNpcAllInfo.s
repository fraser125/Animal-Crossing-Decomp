lbl_803D2104:
/* 803D2104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D2108  7C 08 02 A6 */	mflr r0
/* 803D210C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803D2110  38 80 00 06 */	li r4, 6
/* 803D2114  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D2118  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803D211C  38 00 00 FF */	li r0, 0xff
/* 803D2120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D2124  3F E5 00 01 */	addis r31, r5, 1
/* 803D2128  3B FF 74 38 */	addi r31, r31, 0x7438
/* 803D212C  93 C1 00 08 */	stw r30, 8(r1)
/* 803D2130  7C 7E 1B 78 */	mr r30, r3
/* 803D2134  98 85 00 18 */	stb r4, 0x18(r5)
/* 803D2138  98 05 00 19 */	stb r0, 0x19(r5)
/* 803D213C  4B FF FF A1 */	bl mNpc_InitRemoveHistory
/* 803D2140  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D2144  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2148  3C 63 00 02 */	addis r3, r3, 2
/* 803D214C  38 63 03 30 */	addi r3, r3, 0x330
/* 803D2150  4B FF 92 35 */	bl mNpc_ClearAnimalPersonalID
/* 803D2154  7F E3 FB 78 */	mr r3, r31
/* 803D2158  38 80 00 0F */	li r4, 0xf
/* 803D215C  4B FF A4 0D */	bl mNpc_ClearAnyAnimalInfo
/* 803D2160  7F E3 FB 78 */	mr r3, r31
/* 803D2164  7F C5 F3 78 */	mr r5, r30
/* 803D2168  38 80 00 06 */	li r4, 6
/* 803D216C  4B FF D0 B9 */	bl mNpc_DecideLivingNpcMax
/* 803D2170  7F E3 FB 78 */	mr r3, r31
/* 803D2174  38 80 00 0F */	li r4, 0xf
/* 803D2178  4B FF F5 65 */	bl mNpc_SetNpcNameID
/* 803D217C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D2180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D2184  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D2188  7C 08 03 A6 */	mtlr r0
/* 803D218C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D2190  4E 80 00 20 */	blr 
