lbl_8049A4F8:
/* 8049A4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049A4FC  7C 08 02 A6 */	mflr r0
/* 8049A500  3C A0 80 69 */	lis r5, f_event@ha /* 0x8068CBC8@ha */
/* 8049A504  54 84 18 38 */	slwi r4, r4, 3
/* 8049A508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049A50C  38 05 CB C8 */	addi r0, r5, f_event@l /* 0x8068CBC8@l */
/* 8049A510  7C 80 22 15 */	add. r4, r0, r4
/* 8049A514  41 82 00 10 */	beq lbl_8049A524
/* 8049A518  3C A0 80 64 */	lis r5, lit_750@ha /* 0x80644CFC@ha */
/* 8049A51C  C0 25 4C FC */	lfs f1, lit_750@l(r5)  /* 0x80644CFC@l */
/* 8049A520  4B FF FE 99 */	bl aSOG_gyoei_copy_range_data
lbl_8049A524:
/* 8049A524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049A528  7C 08 03 A6 */	mtlr r0
/* 8049A52C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049A530  4E 80 00 20 */	blr 
