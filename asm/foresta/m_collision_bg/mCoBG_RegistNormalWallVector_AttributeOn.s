lbl_8038BFB0:
/* 8038BFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038BFB4  7C 08 02 A6 */	mflr r0
/* 8038BFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038BFBC  80 03 00 00 */	lwz r0, 0(r3)
/* 8038BFC0  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038BFC4  40 80 00 28 */	bge lbl_8038BFEC
/* 8038BFC8  81 24 00 28 */	lwz r9, 0x28(r4)
/* 8038BFCC  3D 00 80 65 */	lis r8, make_normal_wall_proc_1210@ha /* 0x80650A80@ha */
/* 8038BFD0  80 05 00 28 */	lwz r0, 0x28(r5)
/* 8038BFD4  39 08 0A 80 */	addi r8, r8, make_normal_wall_proc_1210@l /* 0x80650A80@l */
/* 8038BFD8  7D 20 03 78 */	or r0, r9, r0
/* 8038BFDC  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 8038BFE0  7D 88 00 2E */	lwzx r12, r8, r0
/* 8038BFE4  7D 89 03 A6 */	mtctr r12
/* 8038BFE8  4E 80 04 21 */	bctrl 
lbl_8038BFEC:
/* 8038BFEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038BFF0  7C 08 03 A6 */	mtlr r0
/* 8038BFF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8038BFF8  4E 80 00 20 */	blr 
