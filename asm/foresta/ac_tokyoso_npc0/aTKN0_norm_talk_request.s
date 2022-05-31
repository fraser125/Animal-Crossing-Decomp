lbl_8058B878:
/* 8058B878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B87C  7C 08 02 A6 */	mflr r0
/* 8058B880  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B884  88 03 09 AA */	lbz r0, 0x9aa(r3)
/* 8058B888  28 00 00 00 */	cmplwi r0, 0
/* 8058B88C  40 82 00 1C */	bne lbl_8058B8A8
/* 8058B890  3C A0 80 59 */	lis r5, func_8058B7E8@ha /* 0x8058B7E8@ha */
/* 8058B894  7C 64 1B 78 */	mr r4, r3
/* 8058B898  38 A5 B7 E8 */	addi r5, r5, func_8058B7E8@l /* 0x8058B7E8@l */
/* 8058B89C  38 60 00 07 */	li r3, 7
/* 8058B8A0  4B E0 E8 BD */	bl mDemo_Request
/* 8058B8A4  48 00 00 0C */	b lbl_8058B8B0
lbl_8058B8A8:
/* 8058B8A8  38 00 00 00 */	li r0, 0
/* 8058B8AC  98 03 09 AA */	stb r0, 0x9aa(r3)
lbl_8058B8B0:
/* 8058B8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B8B4  7C 08 03 A6 */	mtlr r0
/* 8058B8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B8BC  4E 80 00 20 */	blr 
