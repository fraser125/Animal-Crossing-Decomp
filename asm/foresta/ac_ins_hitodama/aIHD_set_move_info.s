lbl_8059AB70:
/* 8059AB70  80 C4 00 A0 */	lwz r6, 0xa0(r4)
/* 8059AB74  3C 80 80 6C */	lis r4, angl_add@ha /* 0x806C3374@ha */
/* 8059AB78  80 03 02 38 */	lwz r0, 0x238(r3)
/* 8059AB7C  38 84 33 74 */	addi r4, r4, angl_add@l /* 0x806C3374@l */
/* 8059AB80  54 C5 17 3A */	rlwinm r5, r6, 2, 0x1c, 0x1d
/* 8059AB84  2C 00 00 00 */	cmpwi r0, 0
/* 8059AB88  7C 04 28 2E */	lwzx r0, r4, r5
/* 8059AB8C  40 81 00 08 */	ble lbl_8059AB94
/* 8059AB90  1C 00 FF FF */	mulli r0, r0, -1
lbl_8059AB94:
/* 8059AB94  90 03 02 38 */	stw r0, 0x238(r3)
/* 8059AB98  3C 80 80 6C */	lis r4, move_tim@ha /* 0x806C3384@ha */
/* 8059AB9C  54 C0 07 3A */	rlwinm r0, r6, 0, 0x1c, 0x1d
/* 8059ABA0  38 64 33 84 */	addi r3, r4, move_tim@l /* 0x806C3384@l */
/* 8059ABA4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8059ABA8  4E 80 00 20 */	blr 
