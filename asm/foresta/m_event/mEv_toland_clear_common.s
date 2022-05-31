lbl_8039EF54:
/* 8039EF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039EF58  7C 08 02 A6 */	mflr r0
/* 8039EF5C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039EF60  38 60 00 00 */	li r3, 0
/* 8039EF64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039EF68  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039EF6C  3C A4 00 03 */	addis r5, r4, 3
/* 8039EF70  38 00 00 04 */	li r0, 4
/* 8039EF74  7C 64 1B 78 */	mr r4, r3
/* 8039EF78  7C 09 03 A6 */	mtctr r0
/* 8039EF7C  38 A5 85 98 */	addi r5, r5, -31336
lbl_8039EF80:
/* 8039EF80  7C 85 19 2E */	stwx r4, r5, r3
/* 8039EF84  38 63 00 04 */	addi r3, r3, 4
/* 8039EF88  42 00 FF F8 */	bdnz lbl_8039EF80
/* 8039EF8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039EF90  38 80 02 30 */	li r4, 0x230
/* 8039EF94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039EF98  38 A0 00 00 */	li r5, 0
/* 8039EF9C  3C 63 00 03 */	addis r3, r3, 3
/* 8039EFA0  38 63 85 C8 */	addi r3, r3, -31288
/* 8039EFA4  48 01 BA A5 */	bl mem_clear
/* 8039EFA8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039EFAC  38 80 00 18 */	li r4, 0x18
/* 8039EFB0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039EFB4  38 A0 00 00 */	li r5, 0
/* 8039EFB8  3C 63 00 02 */	addis r3, r3, 2
/* 8039EFBC  38 63 66 84 */	addi r3, r3, 0x6684
/* 8039EFC0  48 01 BA 89 */	bl mem_clear
/* 8039EFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039EFC8  7C 08 03 A6 */	mtlr r0
/* 8039EFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8039EFD0  4E 80 00 20 */	blr 
