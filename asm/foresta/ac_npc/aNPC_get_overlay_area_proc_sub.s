lbl_80539C90:
/* 80539C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80539C94  7C 08 02 A6 */	mflr r0
/* 80539C98  7C E4 3B 78 */	mr r4, r7
/* 80539C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80539CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80539CA4  7C DF 33 78 */	mr r31, r6
/* 80539CA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80539CAC  7C 7E 1B 78 */	mr r30, r3
/* 80539CB0  7F E3 FB 78 */	mr r3, r31
/* 80539CB4  4B FF FF A5 */	bl aNPC_get_overlay_free_area_idx
/* 80539CB8  2C 03 FF FF */	cmpwi r3, -1
/* 80539CBC  41 82 00 20 */	beq lbl_80539CDC
/* 80539CC0  54 63 18 38 */	slwi r3, r3, 3
/* 80539CC4  38 00 00 01 */	li r0, 1
/* 80539CC8  7C 9F 18 2E */	lwzx r4, r31, r3
/* 80539CCC  7C 7F 1A 14 */	add r3, r31, r3
/* 80539CD0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80539CD4  90 03 00 04 */	stw r0, 4(r3)
/* 80539CD8  48 00 00 0C */	b lbl_80539CE4
lbl_80539CDC:
/* 80539CDC  38 00 00 00 */	li r0, 0
/* 80539CE0  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_80539CE4:
/* 80539CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80539CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80539CEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80539CF0  7C 08 03 A6 */	mtlr r0
/* 80539CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80539CF8  4E 80 00 20 */	blr 
