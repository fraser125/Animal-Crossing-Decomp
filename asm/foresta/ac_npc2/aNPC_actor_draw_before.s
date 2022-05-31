lbl_8053E1DC:
/* 8053E1DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053E1E0  7C 08 02 A6 */	mflr r0
/* 8053E1E4  3C 80 80 6A */	lis r4, before_proc@ha /* 0x806A3A48@ha */
/* 8053E1E8  7D 46 53 78 */	mr r6, r10
/* 8053E1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053E1F0  54 A0 10 3A */	slwi r0, r5, 2
/* 8053E1F4  38 84 3A 48 */	addi r4, r4, before_proc@l /* 0x806A3A48@l */
/* 8053E1F8  7D 25 4B 78 */	mr r5, r9
/* 8053E1FC  7D 84 00 2E */	lwzx r12, r4, r0
/* 8053E200  7D 04 43 78 */	mr r4, r8
/* 8053E204  7D 89 03 A6 */	mtctr r12
/* 8053E208  4E 80 04 21 */	bctrl 
/* 8053E20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053E210  38 60 00 01 */	li r3, 1
/* 8053E214  7C 08 03 A6 */	mtlr r0
/* 8053E218  38 21 00 10 */	addi r1, r1, 0x10
/* 8053E21C  4E 80 00 20 */	blr 
