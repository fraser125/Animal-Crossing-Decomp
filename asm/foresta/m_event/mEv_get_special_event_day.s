lbl_8039C04C:
/* 8039C04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039C050  7C 08 02 A6 */	mflr r0
/* 8039C054  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039C058  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039C05C  3B E0 00 00 */	li r31, 0
/* 8039C060  4B FF FF 9D */	bl is_special_event_valid
/* 8039C064  2C 03 00 00 */	cmpwi r3, 0
/* 8039C068  41 82 00 14 */	beq lbl_8039C07C
/* 8039C06C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039C070  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039C074  3C 63 00 02 */	addis r3, r3, 2
/* 8039C078  A3 E3 05 60 */	lhz r31, 0x560(r3)
lbl_8039C07C:
/* 8039C07C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039C080  7F E3 FB 78 */	mr r3, r31
/* 8039C084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039C088  7C 08 03 A6 */	mtlr r0
/* 8039C08C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039C090  4E 80 00 20 */	blr 
