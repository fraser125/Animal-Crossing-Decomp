lbl_80496C8C:
/* 80496C8C  88 04 01 75 */	lbz r0, 0x175(r4)
/* 80496C90  38 60 00 00 */	li r3, 0
/* 80496C94  28 00 00 01 */	cmplwi r0, 1
/* 80496C98  4C 82 00 20 */	bnelr 
/* 80496C9C  A8 A4 44 EC */	lha r5, 0x44ec(r4)
/* 80496CA0  2C 05 00 00 */	cmpwi r5, 0
/* 80496CA4  40 82 00 0C */	bne lbl_80496CB0
/* 80496CA8  38 00 00 00 */	li r0, 0
/* 80496CAC  48 00 00 10 */	b lbl_80496CBC
lbl_80496CB0:
/* 80496CB0  38 05 FF FF */	addi r0, r5, -1
/* 80496CB4  B0 04 44 EC */	sth r0, 0x44ec(r4)
/* 80496CB8  7C 00 07 34 */	extsh r0, r0
lbl_80496CBC:
/* 80496CBC  2C 00 00 00 */	cmpwi r0, 0
/* 80496CC0  4C 82 00 20 */	bnelr 
/* 80496CC4  38 60 00 02 */	li r3, 2
/* 80496CC8  38 00 00 05 */	li r0, 5
/* 80496CCC  98 64 01 75 */	stb r3, 0x175(r4)
/* 80496CD0  38 60 00 01 */	li r3, 1
/* 80496CD4  B0 04 44 EC */	sth r0, 0x44ec(r4)
/* 80496CD8  4E 80 00 20 */	blr 
