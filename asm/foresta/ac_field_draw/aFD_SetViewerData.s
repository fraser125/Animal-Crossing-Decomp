lbl_80423534:
/* 80423534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80423538  7C 08 02 A6 */	mflr r0
/* 8042353C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80423540  7C 60 1B 79 */	or. r0, r3, r3
/* 80423544  41 82 00 14 */	beq lbl_80423558
/* 80423548  7C 83 23 78 */	mr r3, r4
/* 8042354C  7C 04 03 78 */	mr r4, r0
/* 80423550  4B F5 00 0D */	bl Evw_Anime_Set
/* 80423554  48 00 00 0C */	b lbl_80423560
lbl_80423558:
/* 80423558  7C 83 23 78 */	mr r3, r4
/* 8042355C  4B FF FF B1 */	bl aFD_SetRiverFlow
lbl_80423560:
/* 80423560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80423564  7C 08 03 A6 */	mtlr r0
/* 80423568  38 21 00 10 */	addi r1, r1, 0x10
/* 8042356C  4E 80 00 20 */	blr 