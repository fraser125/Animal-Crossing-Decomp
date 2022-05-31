lbl_80375CBC:
/* 80375CBC  7C 80 07 34 */	extsh r0, r4
/* 80375CC0  48 00 00 14 */	b lbl_80375CD4
lbl_80375CC4:
/* 80375CC4  A8 83 00 00 */	lha r4, 0(r3)
/* 80375CC8  7C 04 00 00 */	cmpw r4, r0
/* 80375CCC  4D 82 00 20 */	beqlr 
/* 80375CD0  80 63 01 58 */	lwz r3, 0x158(r3)
lbl_80375CD4:
/* 80375CD4  28 03 00 00 */	cmplwi r3, 0
/* 80375CD8  40 82 FF EC */	bne lbl_80375CC4
/* 80375CDC  4E 80 00 20 */	blr 
