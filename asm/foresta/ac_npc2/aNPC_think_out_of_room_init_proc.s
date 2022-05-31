lbl_80542BB4:
/* 80542BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542BB8  7C 08 02 A6 */	mflr r0
/* 80542BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542BC0  38 00 00 00 */	li r0, 0
/* 80542BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80542BC8  7C 7F 1B 78 */	mr r31, r3
/* 80542BCC  98 03 07 C9 */	stb r0, 0x7c9(r3)
/* 80542BD0  4B FF FD B9 */	bl func_80542988
/* 80542BD4  3C 80 80 6A */	lis r4, data_806A2B78@ha /* 0x806A2B78@ha */
/* 80542BD8  7C 65 1B 78 */	mr r5, r3
/* 80542BDC  38 E4 2B 78 */	addi r7, r4, data_806A2B78@l /* 0x806A2B78@l */
/* 80542BE0  7F E3 FB 78 */	mr r3, r31
/* 80542BE4  38 80 00 01 */	li r4, 1
/* 80542BE8  38 C0 00 00 */	li r6, 0
/* 80542BEC  4B FF C7 B5 */	bl aNPC_set_request_act
/* 80542BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542BF8  7C 08 03 A6 */	mtlr r0
/* 80542BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80542C00  4E 80 00 20 */	blr 
