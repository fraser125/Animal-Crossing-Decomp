lbl_805482DC:
/* 805482DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805482E0  7C 08 02 A6 */	mflr r0
/* 805482E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805482E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805482EC  7C 9F 23 78 */	mr r31, r4
/* 805482F0  38 80 00 01 */	li r4, 1
/* 805482F4  93 C1 00 08 */	stw r30, 8(r1)
/* 805482F8  7C 7E 1B 78 */	mr r30, r3
/* 805482FC  38 60 00 04 */	li r3, 4
/* 80548300  4B E5 01 7D */	bl mDemo_Get_OrderValue
/* 80548304  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80548308  2C 00 00 02 */	cmpwi r0, 2
/* 8054830C  40 82 00 14 */	bne lbl_80548320
/* 80548310  7F C3 F3 78 */	mr r3, r30
/* 80548314  7F E4 FB 78 */	mr r4, r31
/* 80548318  38 A0 00 08 */	li r5, 8
/* 8054831C  48 00 2C 01 */	bl aNSC_setupAction
lbl_80548320:
/* 80548320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80548324  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80548328  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054832C  7C 08 03 A6 */	mtlr r0
/* 80548330  38 21 00 10 */	addi r1, r1, 0x10
/* 80548334  4E 80 00 20 */	blr 