lbl_804AB728:
/* 804AB728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB72C  7C 08 02 A6 */	mflr r0
/* 804AB730  3C C0 80 69 */	lis r6, init_table@ha /* 0x8068F338@ha */
/* 804AB734  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB738  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 804AB73C  38 A6 F3 38 */	addi r5, r6, init_table@l /* 0x8068F338@l */
/* 804AB740  7D 85 00 2E */	lwzx r12, r5, r0
/* 804AB744  7D 89 03 A6 */	mtctr r12
/* 804AB748  4E 80 04 21 */	bctrl 
/* 804AB74C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB750  7C 08 03 A6 */	mtlr r0
/* 804AB754  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB758  4E 80 00 20 */	blr 
