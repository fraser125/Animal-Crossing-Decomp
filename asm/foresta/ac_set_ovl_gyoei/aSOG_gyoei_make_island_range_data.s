lbl_8049A69C:
/* 8049A69C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049A6A0  7C 08 02 A6 */	mflr r0
/* 8049A6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049A6A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8049A6AC  4B C0 08 29 */	bl func_8009AED4
/* 8049A6B0  7C 9E 23 78 */	mr r30, r4
/* 8049A6B4  3C 80 80 69 */	lis r4, f_island@ha /* 0x8068CBE8@ha */
/* 8049A6B8  57 C5 18 38 */	slwi r5, r30, 3
/* 8049A6BC  7C 7D 1B 78 */	mr r29, r3
/* 8049A6C0  38 04 CB E8 */	addi r0, r4, f_island@l /* 0x8068CBE8@l */
/* 8049A6C4  7C DF 33 78 */	mr r31, r6
/* 8049A6C8  7C 80 2A 15 */	add. r4, r0, r5
/* 8049A6CC  41 82 00 20 */	beq lbl_8049A6EC
/* 8049A6D0  3C A0 80 64 */	lis r5, lit_750@ha /* 0x80644CFC@ha */
/* 8049A6D4  C0 25 4C FC */	lfs f1, lit_750@l(r5)  /* 0x80644CFC@l */
/* 8049A6D8  4B FF FC E1 */	bl aSOG_gyoei_copy_range_data
/* 8049A6DC  7F A3 EB 78 */	mr r3, r29
/* 8049A6E0  7F C4 F3 78 */	mr r4, r30
/* 8049A6E4  7F E5 FB 78 */	mr r5, r31
/* 8049A6E8  4B FF FD 49 */	bl aSOG_add_kaseki_range_data
lbl_8049A6EC:
/* 8049A6EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8049A6F0  4B C0 08 31 */	bl func_8009AF20
/* 8049A6F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049A6F8  7C 08 03 A6 */	mtlr r0
/* 8049A6FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8049A700  4E 80 00 20 */	blr 
