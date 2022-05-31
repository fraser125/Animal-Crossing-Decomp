lbl_805BCC90:
/* 805BCC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BCC94  7C 08 02 A6 */	mflr r0
/* 805BCC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BCC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BCCA0  7C 7F 1B 78 */	mr r31, r3
/* 805BCCA4  4B FF FF A5 */	bl aSTR_get_overlay_free_area_idx
/* 805BCCA8  2C 03 FF FF */	cmpwi r3, -1
/* 805BCCAC  41 82 00 38 */	beq lbl_805BCCE4
/* 805BCCB0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BCCB4  54 66 18 38 */	slwi r6, r3, 3
/* 805BCCB8  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805BCCBC  38 80 00 01 */	li r4, 1
/* 805BCCC0  3C E3 00 02 */	addis r7, r3, 2
/* 805BCCC4  38 66 00 5C */	addi r3, r6, 0x5c
/* 805BCCC8  80 A7 60 98 */	lwz r5, 0x6098(r7)
/* 805BCCCC  38 06 00 60 */	addi r0, r6, 0x60
/* 805BCCD0  7C 65 18 2E */	lwzx r3, r5, r3
/* 805BCCD4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 805BCCD8  80 67 60 98 */	lwz r3, 0x6098(r7)
/* 805BCCDC  7C 83 01 2E */	stwx r4, r3, r0
/* 805BCCE0  48 00 00 0C */	b lbl_805BCCEC
lbl_805BCCE4:
/* 805BCCE4  38 00 00 00 */	li r0, 0
/* 805BCCE8  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_805BCCEC:
/* 805BCCEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BCCF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BCCF4  7C 08 03 A6 */	mtlr r0
/* 805BCCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BCCFC  4E 80 00 20 */	blr 
