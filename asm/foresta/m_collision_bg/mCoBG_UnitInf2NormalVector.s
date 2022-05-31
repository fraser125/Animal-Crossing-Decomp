lbl_8038BFFC:
/* 8038BFFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038C000  7C 08 02 A6 */	mflr r0
/* 8038C004  3D 00 80 65 */	lis r8, make_normal_wall_proc_1217@ha /* 0x80650A88@ha */
/* 8038C008  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038C00C  39 08 0A 88 */	addi r8, r8, make_normal_wall_proc_1217@l /* 0x80650A88@l */
/* 8038C010  81 24 00 28 */	lwz r9, 0x28(r4)
/* 8038C014  80 05 00 28 */	lwz r0, 0x28(r5)
/* 8038C018  7D 20 03 78 */	or r0, r9, r0
/* 8038C01C  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 8038C020  7D 88 00 2E */	lwzx r12, r8, r0
/* 8038C024  7D 89 03 A6 */	mtctr r12
/* 8038C028  4E 80 04 21 */	bctrl 
/* 8038C02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038C030  7C 08 03 A6 */	mtlr r0
/* 8038C034  38 21 00 10 */	addi r1, r1, 0x10
/* 8038C038  4E 80 00 20 */	blr 
