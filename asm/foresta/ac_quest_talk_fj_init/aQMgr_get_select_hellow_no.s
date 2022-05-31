lbl_80487B8C:
/* 80487B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487B90  7C 08 02 A6 */	mflr r0
/* 80487B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487B98  81 83 09 54 */	lwz r12, 0x954(r3)
/* 80487B9C  7C 83 23 78 */	mr r3, r4
/* 80487BA0  7D 89 03 A6 */	mtctr r12
/* 80487BA4  4E 80 04 21 */	bctrl 
/* 80487BA8  3C 80 80 69 */	lis r4, data_8068ACF8@ha /* 0x8068ACF8@ha */
/* 80487BAC  54 60 10 3A */	slwi r0, r3, 2
/* 80487BB0  38 64 AC F8 */	addi r3, r4, data_8068ACF8@l /* 0x8068ACF8@l */
/* 80487BB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80487BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487BBC  7C 08 03 A6 */	mtlr r0
/* 80487BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80487BC4  4E 80 00 20 */	blr 
