lbl_80526458:
/* 80526458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052645C  7C 08 02 A6 */	mflr r0
/* 80526460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526464  4B FF FE C5 */	bl func_80526328
/* 80526468  28 03 00 00 */	cmplwi r3, 0
/* 8052646C  40 82 00 18 */	bne lbl_80526484
/* 80526470  38 60 00 20 */	li r3, 0x20
/* 80526474  38 80 00 00 */	li r4, 0
/* 80526478  4B E7 77 AD */	bl mEv_reserve_save_area
/* 8052647C  4B FF FE AD */	bl func_80526328
/* 80526480  4B FF FF 31 */	bl setUp_yomise_goods
lbl_80526484:
/* 80526484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80526488  7C 08 03 A6 */	mtlr r0
/* 8052648C  38 21 00 10 */	addi r1, r1, 0x10
/* 80526490  4E 80 00 20 */	blr 
