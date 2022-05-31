lbl_804AFD58:
/* 804AFD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AFD5C  7C 08 02 A6 */	mflr r0
/* 804AFD60  7C 65 1B 78 */	mr r5, r3
/* 804AFD64  7C 83 23 78 */	mr r3, r4
/* 804AFD68  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AFD6C  7C A4 2B 78 */	mr r4, r5
/* 804AFD70  38 A5 01 74 */	addi r5, r5, 0x174
/* 804AFD74  48 00 61 75 */	bl bg_item_common_destruct
/* 804AFD78  48 00 03 41 */	bl bIT_clip_dt
/* 804AFD7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AFD80  7C 08 03 A6 */	mtlr r0
/* 804AFD84  38 21 00 10 */	addi r1, r1, 0x10
/* 804AFD88  4E 80 00 20 */	blr 
