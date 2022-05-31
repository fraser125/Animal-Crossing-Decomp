lbl_8037E448:
/* 8037E448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037E44C  7C 08 02 A6 */	mflr r0
/* 8037E450  2C 05 00 00 */	cmpwi r5, 0
/* 8037E454  38 A3 1B CC */	addi r5, r3, 0x1bcc
/* 8037E458  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037E45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037E460  3B E3 1B 94 */	addi r31, r3, 0x1b94
/* 8037E464  93 C1 00 08 */	stw r30, 8(r1)
/* 8037E468  7C 9E 23 78 */	mr r30, r4
/* 8037E46C  41 82 00 18 */	beq lbl_8037E484
/* 8037E470  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8037E474  7C A3 2B 78 */	mr r3, r5
/* 8037E478  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 8037E47C  48 03 CA 41 */	bl xyz_t_move
/* 8037E480  48 00 00 10 */	b lbl_8037E490
lbl_8037E484:
/* 8037E484  7F C3 F3 78 */	mr r3, r30
/* 8037E488  7F E4 FB 78 */	mr r4, r31
/* 8037E48C  48 03 CA ED */	bl xyz_t_sub
lbl_8037E490:
/* 8037E490  7F E3 FB 78 */	mr r3, r31
/* 8037E494  7F C4 F3 78 */	mr r4, r30
/* 8037E498  48 03 CA 25 */	bl xyz_t_move
/* 8037E49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037E4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037E4A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037E4A8  7C 08 03 A6 */	mtlr r0
/* 8037E4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037E4B0  4E 80 00 20 */	blr 
