lbl_803D18F8:
/* 803D18F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D18FC  7C 08 02 A6 */	mflr r0
/* 803D1900  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D1904  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1908  4B CC 95 CD */	bl func_8009AED4
/* 803D190C  28 03 00 00 */	cmplwi r3, 0
/* 803D1910  3C C0 81 17 */	lis r6, l_npc_name_cache@ha /* 0x8116C520@ha */
/* 803D1914  7C 9D 23 78 */	mr r29, r4
/* 803D1918  7C BE 2B 78 */	mr r30, r5
/* 803D191C  3B E6 C5 20 */	addi r31, r6, l_npc_name_cache@l /* 0x8116C520@l */
/* 803D1920  41 82 00 18 */	beq lbl_803D1938
/* 803D1924  7C 64 1B 78 */	mr r4, r3
/* 803D1928  38 7F 00 02 */	addi r3, r31, 2
/* 803D192C  48 00 E5 91 */	bl mPr_CopyPlayerName
/* 803D1930  B3 BF 00 00 */	sth r29, 0(r31)
/* 803D1934  9B DF 00 0A */	stb r30, 0xa(r31)
lbl_803D1938:
/* 803D1938  39 61 00 20 */	addi r11, r1, 0x20
/* 803D193C  4B CC 95 E5 */	bl func_8009AF20
/* 803D1940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D1944  7C 08 03 A6 */	mtlr r0
/* 803D1948  38 21 00 20 */	addi r1, r1, 0x20
/* 803D194C  4E 80 00 20 */	blr 
