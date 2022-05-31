lbl_803A9E24:
/* 803A9E24  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 803A9E28  7C CB 33 78 */	mr r11, r6
/* 803A9E2C  2C 00 00 05 */	cmpwi r0, 5
/* 803A9E30  7C EC 3B 78 */	mr r12, r7
/* 803A9E34  54 A8 04 3E */	clrlwi r8, r5, 0x10
/* 803A9E38  40 82 00 5C */	bne lbl_803A9E94
/* 803A9E3C  3C A0 80 65 */	lis r5, l_structure_set_type@ha /* 0x80653F38@ha */
/* 803A9E40  38 05 3F 38 */	addi r0, r5, l_structure_set_type@l /* 0x80653F38@l */
/* 803A9E44  7C A8 02 14 */	add r5, r8, r0
/* 803A9E48  88 05 A8 00 */	lbz r0, -0x5800(r5)
/* 803A9E4C  28 00 00 0C */	cmplwi r0, 0xc
/* 803A9E50  40 80 00 44 */	bge lbl_803A9E94
/* 803A9E54  3C A0 80 65 */	lis r5, set_area_table@ha /* 0x80653FC8@ha */
/* 803A9E58  54 08 15 BA */	rlwinm r8, r0, 2, 0x16, 0x1d
/* 803A9E5C  38 05 3F C8 */	addi r0, r5, set_area_table@l /* 0x80653FC8@l */
/* 803A9E60  7D 40 42 14 */	add r10, r0, r8
/* 803A9E64  88 0A 00 00 */	lbz r0, 0(r10)
/* 803A9E68  89 0A 00 01 */	lbz r8, 1(r10)
/* 803A9E6C  88 AA 00 02 */	lbz r5, 2(r10)
/* 803A9E70  7C 09 07 74 */	extsb r9, r0
/* 803A9E74  88 0A 00 03 */	lbz r0, 3(r10)
/* 803A9E78  7D 08 07 74 */	extsb r8, r8
/* 803A9E7C  7C A5 07 74 */	extsb r5, r5
/* 803A9E80  7C C6 4A 14 */	add r6, r6, r9
/* 803A9E84  7C 00 07 74 */	extsb r0, r0
/* 803A9E88  7D 6B 42 14 */	add r11, r11, r8
/* 803A9E8C  7C E7 2A 14 */	add r7, r7, r5
/* 803A9E90  7D 8C 02 14 */	add r12, r12, r0
lbl_803A9E94:
/* 803A9E94  39 0B 00 01 */	addi r8, r11, 1
/* 803A9E98  38 AC 00 01 */	addi r5, r12, 1
/* 803A9E9C  7C 06 40 50 */	subf r0, r6, r8
/* 803A9EA0  48 00 00 38 */	b lbl_803A9ED8
lbl_803A9EA4:
/* 803A9EA4  7C C9 33 78 */	mr r9, r6
/* 803A9EA8  7C 09 03 A6 */	mtctr r0
/* 803A9EAC  7C 06 40 00 */	cmpw r6, r8
/* 803A9EB0  40 80 00 24 */	bge lbl_803A9ED4
lbl_803A9EB4:
/* 803A9EB4  7C 03 48 00 */	cmpw r3, r9
/* 803A9EB8  40 82 00 14 */	bne lbl_803A9ECC
/* 803A9EBC  7C 04 38 00 */	cmpw r4, r7
/* 803A9EC0  40 82 00 0C */	bne lbl_803A9ECC
/* 803A9EC4  38 60 00 01 */	li r3, 1
/* 803A9EC8  4E 80 00 20 */	blr 
lbl_803A9ECC:
/* 803A9ECC  39 29 00 01 */	addi r9, r9, 1
/* 803A9ED0  42 00 FF E4 */	bdnz lbl_803A9EB4
lbl_803A9ED4:
/* 803A9ED4  38 E7 00 01 */	addi r7, r7, 1
lbl_803A9ED8:
/* 803A9ED8  7C 07 28 00 */	cmpw r7, r5
/* 803A9EDC  41 80 FF C8 */	blt lbl_803A9EA4
/* 803A9EE0  38 60 00 00 */	li r3, 0
/* 803A9EE4  4E 80 00 20 */	blr 
