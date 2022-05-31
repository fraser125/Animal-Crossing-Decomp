lbl_8039EFD4:
/* 8039EFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039EFD8  7C 08 02 A6 */	mflr r0
/* 8039EFDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039EFE0  38 80 00 0C */	li r4, 0xc
/* 8039EFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039EFE8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039EFEC  38 A0 00 00 */	li r5, 0
/* 8039EFF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039EFF4  3F E3 00 02 */	addis r31, r3, 2
/* 8039EFF8  3B FF 41 60 */	addi r31, r31, 0x4160
/* 8039EFFC  7F E3 FB 78 */	mr r3, r31
/* 8039F000  48 01 BA 49 */	bl mem_clear
/* 8039F004  38 00 00 00 */	li r0, 0
/* 8039F008  B0 1F 00 00 */	sth r0, 0(r31)
/* 8039F00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039F014  7C 08 03 A6 */	mtlr r0
/* 8039F018  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F01C  4E 80 00 20 */	blr 
