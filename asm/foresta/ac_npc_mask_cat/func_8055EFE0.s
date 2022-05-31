lbl_8055EFE0:
/* 8055EFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055EFE4  7C 08 02 A6 */	mflr r0
/* 8055EFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055EFEC  4B E6 06 BD */	bl func_803BF6A8
/* 8055EFF0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8055EFF4  38 80 00 00 */	li r4, 0
/* 8055EFF8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8055EFFC  38 C0 00 08 */	li r6, 8
/* 8055F000  3C A5 00 02 */	addis r5, r5, 2
/* 8055F004  38 A5 3F 20 */	addi r5, r5, 0x3f20
/* 8055F008  4B E6 0C 4D */	bl mMsg_Set_free_str
/* 8055F00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055F010  7C 08 03 A6 */	mtlr r0
/* 8055F014  38 21 00 10 */	addi r1, r1, 0x10
/* 8055F018  4E 80 00 20 */	blr 
