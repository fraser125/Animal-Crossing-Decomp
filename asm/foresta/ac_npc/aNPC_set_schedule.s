lbl_805380E8:
/* 805380E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805380EC  7C 08 02 A6 */	mflr r0
/* 805380F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805380F4  80 A3 01 84 */	lwz r5, 0x184(r3)
/* 805380F8  88 A5 00 08 */	lbz r5, 8(r5)
/* 805380FC  4B FF FF C9 */	bl aNPC_chg_schedule
/* 80538100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80538104  7C 08 03 A6 */	mtlr r0
/* 80538108  38 21 00 10 */	addi r1, r1, 0x10
/* 8053810C  4E 80 00 20 */	blr 