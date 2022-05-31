lbl_8058EA44:
/* 8058EA44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EA48  7C 08 02 A6 */	mflr r0
/* 8058EA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EA50  88 03 09 A9 */	lbz r0, 0x9a9(r3)
/* 8058EA54  28 00 00 00 */	cmplwi r0, 0
/* 8058EA58  40 82 00 1C */	bne lbl_8058EA74
/* 8058EA5C  3C A0 80 59 */	lis r5, func_8058E9B0@ha /* 0x8058E9B0@ha */
/* 8058EA60  7C 64 1B 78 */	mr r4, r3
/* 8058EA64  38 A5 E9 B0 */	addi r5, r5, func_8058E9B0@l /* 0x8058E9B0@l */
/* 8058EA68  38 60 00 07 */	li r3, 7
/* 8058EA6C  4B E0 B6 F1 */	bl mDemo_Request
/* 8058EA70  48 00 00 0C */	b lbl_8058EA7C
lbl_8058EA74:
/* 8058EA74  38 00 00 00 */	li r0, 0
/* 8058EA78  98 03 09 A9 */	stb r0, 0x9a9(r3)
lbl_8058EA7C:
/* 8058EA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058EA80  7C 08 03 A6 */	mtlr r0
/* 8058EA84  38 21 00 10 */	addi r1, r1, 0x10
/* 8058EA88  4E 80 00 20 */	blr 
