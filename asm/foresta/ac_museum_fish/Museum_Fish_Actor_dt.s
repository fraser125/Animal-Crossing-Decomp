lbl_8042FAF8:
/* 8042FAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042FAFC  7C 08 02 A6 */	mflr r0
/* 8042FB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042FB04  48 00 18 ED */	bl mfish_point_light_dt
/* 8042FB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042FB0C  7C 08 03 A6 */	mtlr r0
/* 8042FB10  38 21 00 10 */	addi r1, r1, 0x10
/* 8042FB14  4E 80 00 20 */	blr 
