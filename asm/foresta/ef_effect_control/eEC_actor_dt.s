lbl_804CD8F4:
/* 804CD8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD8F8  7C 08 02 A6 */	mflr r0
/* 804CD8FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804CD900  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD904  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804CD908  3C A3 00 02 */	addis r5, r3, 2
/* 804CD90C  38 00 00 00 */	li r0, 0
/* 804CD910  90 05 60 9C */	stw r0, 0x609c(r5)
/* 804CD914  7C 83 23 78 */	mr r3, r4
/* 804CD918  4B FF FE F5 */	bl eEC_DeleteEffectLight
/* 804CD91C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD920  7C 08 03 A6 */	mtlr r0
/* 804CD924  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD928  4E 80 00 20 */	blr 
