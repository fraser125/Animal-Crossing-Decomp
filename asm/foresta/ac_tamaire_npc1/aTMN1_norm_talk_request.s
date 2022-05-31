lbl_8058A580:
/* 8058A580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A584  7C 08 02 A6 */	mflr r0
/* 8058A588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A58C  88 03 09 AE */	lbz r0, 0x9ae(r3)
/* 8058A590  28 00 00 00 */	cmplwi r0, 0
/* 8058A594  40 82 00 1C */	bne lbl_8058A5B0
/* 8058A598  3C A0 80 59 */	lis r5, func_8058A4F0@ha /* 0x8058A4F0@ha */
/* 8058A59C  7C 64 1B 78 */	mr r4, r3
/* 8058A5A0  38 A5 A4 F0 */	addi r5, r5, func_8058A4F0@l /* 0x8058A4F0@l */
/* 8058A5A4  38 60 00 07 */	li r3, 7
/* 8058A5A8  4B E0 FB B5 */	bl mDemo_Request
/* 8058A5AC  48 00 00 0C */	b lbl_8058A5B8
lbl_8058A5B0:
/* 8058A5B0  38 00 00 00 */	li r0, 0
/* 8058A5B4  98 03 09 AE */	stb r0, 0x9ae(r3)
lbl_8058A5B8:
/* 8058A5B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A5BC  7C 08 03 A6 */	mtlr r0
/* 8058A5C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A5C4  4E 80 00 20 */	blr 
