lbl_804B70DC:
/* 804B70DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B70E0  7C 08 02 A6 */	mflr r0
/* 804B70E4  7C 65 1B 78 */	mr r5, r3
/* 804B70E8  7C 83 23 78 */	mr r3, r4
/* 804B70EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B70F0  7C A4 2B 78 */	mr r4, r5
/* 804B70F4  38 A5 01 74 */	addi r5, r5, 0x174
/* 804B70F8  48 00 61 75 */	bl bg_item_common_destruct
/* 804B70FC  48 00 03 41 */	bl bIT_clip_dt
/* 804B7100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B7104  7C 08 03 A6 */	mtlr r0
/* 804B7108  38 21 00 10 */	addi r1, r1, 0x10
/* 804B710C  4E 80 00 20 */	blr 
