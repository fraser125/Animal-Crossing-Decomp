lbl_80604C90:
/* 80604C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80604C94  7C 08 02 A6 */	mflr r0
/* 80604C98  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80604C9C  38 80 00 3C */	li r4, 0x3c
/* 80604CA0  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 80604CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80604CA8  3C C6 00 02 */	addis r6, r6, 2
/* 80604CAC  38 A0 00 78 */	li r5, 0x78
/* 80604CB0  80 C6 60 9C */	lwz r6, 0x609c(r6)
/* 80604CB4  81 86 00 10 */	lwz r12, 0x10(r6)
/* 80604CB8  7D 89 03 A6 */	mtctr r12
/* 80604CBC  4E 80 04 21 */	bctrl 
/* 80604CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80604CC4  7C 08 03 A6 */	mtlr r0
/* 80604CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80604CCC  4E 80 00 20 */	blr 
