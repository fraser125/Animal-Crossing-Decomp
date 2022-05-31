lbl_80629CA4:
/* 80629CA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80629CA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80629CAC  3C A3 00 02 */	addis r5, r3, 2
/* 80629CB0  80 85 61 3C */	lwz r4, 0x613c(r5)
/* 80629CB4  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 80629CB8  28 00 00 00 */	cmplwi r0, 0
/* 80629CBC  4D 82 00 20 */	beqlr 
/* 80629CC0  A0 65 61 26 */	lhz r3, 0x6126(r5)
/* 80629CC4  A0 04 10 A0 */	lhz r0, 0x10a0(r4)
/* 80629CC8  7C 03 00 40 */	cmplw r3, r0
/* 80629CCC  40 82 00 24 */	bne lbl_80629CF0
/* 80629CD0  88 65 61 25 */	lbz r3, 0x6125(r5)
/* 80629CD4  88 04 10 9F */	lbz r0, 0x109f(r4)
/* 80629CD8  7C 03 00 40 */	cmplw r3, r0
/* 80629CDC  40 82 00 14 */	bne lbl_80629CF0
/* 80629CE0  88 65 61 23 */	lbz r3, 0x6123(r5)
/* 80629CE4  88 04 10 9D */	lbz r0, 0x109d(r4)
/* 80629CE8  7C 03 00 40 */	cmplw r3, r0
/* 80629CEC  4D 82 00 20 */	beqlr 
lbl_80629CF0:
/* 80629CF0  38 00 00 00 */	li r0, 0
/* 80629CF4  98 04 10 A2 */	stb r0, 0x10a2(r4)
/* 80629CF8  4E 80 00 20 */	blr 
