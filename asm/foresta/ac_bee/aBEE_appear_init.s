lbl_8050D64C:
/* 8050D64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050D650  7C 08 02 A6 */	mflr r0
/* 8050D654  3C 80 80 6A */	lis r4, Size_data@ha /* 0x8069F054@ha */
/* 8050D658  38 63 04 20 */	addi r3, r3, 0x420
/* 8050D65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050D660  38 84 F0 54 */	addi r4, r4, Size_data@l /* 0x8069F054@l */
/* 8050D664  4B EA D8 59 */	bl xyz_t_move
/* 8050D668  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050D66C  38 00 00 01 */	li r0, 1
/* 8050D670  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050D674  3C 63 00 03 */	addis r3, r3, 3
/* 8050D678  98 03 88 39 */	stb r0, -0x77c7(r3)
/* 8050D67C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050D680  7C 08 03 A6 */	mtlr r0
/* 8050D684  38 21 00 10 */	addi r1, r1, 0x10
/* 8050D688  4E 80 00 20 */	blr 
