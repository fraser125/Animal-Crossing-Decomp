lbl_803BF3D0:
/* 803BF3D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BF3D4  7C 08 02 A6 */	mflr r0
/* 803BF3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BF3DC  80 03 04 34 */	lwz r0, 0x434(r3)
/* 803BF3E0  2C 00 00 00 */	cmpwi r0, 0
/* 803BF3E4  41 80 00 30 */	blt lbl_803BF414
/* 803BF3E8  2C 00 00 08 */	cmpwi r0, 8
/* 803BF3EC  40 80 00 28 */	bge lbl_803BF414
/* 803BF3F0  3C A0 80 66 */	lis r5, proc_2622@ha /* 0x8065A158@ha */
/* 803BF3F4  54 00 10 3A */	slwi r0, r0, 2
/* 803BF3F8  38 A5 A1 58 */	addi r5, r5, proc_2622@l /* 0x8065A158@l */
/* 803BF3FC  7D 85 00 2E */	lwzx r12, r5, r0
/* 803BF400  28 0C 00 00 */	cmplwi r12, 0
/* 803BF404  40 82 00 08 */	bne lbl_803BF40C
/* 803BF408  48 00 00 0C */	b lbl_803BF414
lbl_803BF40C:
/* 803BF40C  7D 89 03 A6 */	mtctr r12
/* 803BF410  4E 80 04 21 */	bctrl 
lbl_803BF414:
/* 803BF414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BF418  7C 08 03 A6 */	mtlr r0
/* 803BF41C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BF420  4E 80 00 20 */	blr 
