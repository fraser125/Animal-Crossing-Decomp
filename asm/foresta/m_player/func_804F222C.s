lbl_804F222C:
/* 804F222C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F2230  7C 08 02 A6 */	mflr r0
/* 804F2234  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F2238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F223C  7C 9F 23 78 */	mr r31, r4
/* 804F2240  7F E5 FB 78 */	mr r5, r31
/* 804F2244  38 80 00 2B */	li r4, 0x2b
/* 804F2248  93 C1 00 08 */	stw r30, 8(r1)
/* 804F224C  7C 7E 1B 78 */	mr r30, r3
/* 804F2250  4B FE 82 09 */	bl Player_actor_check_request_main_able
/* 804F2254  2C 03 00 00 */	cmpwi r3, 0
/* 804F2258  41 82 00 1C */	beq lbl_804F2274
/* 804F225C  7F C3 F3 78 */	mr r3, r30
/* 804F2260  7F E5 FB 78 */	mr r5, r31
/* 804F2264  38 80 00 2B */	li r4, 0x2b
/* 804F2268  4B FE 2D AD */	bl Player_actor_request_main_index
/* 804F226C  38 60 00 01 */	li r3, 1
/* 804F2270  48 00 00 08 */	b lbl_804F2278
lbl_804F2274:
/* 804F2274  38 60 00 00 */	li r3, 0
lbl_804F2278:
/* 804F2278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F227C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F2280  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F2284  7C 08 03 A6 */	mtlr r0
/* 804F2288  38 21 00 10 */	addi r1, r1, 0x10
/* 804F228C  4E 80 00 20 */	blr 
