lbl_805642E8:
/* 805642E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805642EC  7C 08 02 A6 */	mflr r0
/* 805642F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805642F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805642F8  7C 7F 1B 78 */	mr r31, r3
/* 805642FC  38 60 00 08 */	li r3, 8
/* 80564300  93 C1 00 08 */	stw r30, 8(r1)
/* 80564304  7C 9E 23 78 */	mr r30, r4
/* 80564308  7F E4 FB 78 */	mr r4, r31
/* 8056430C  4B E3 5F 59 */	bl mDemo_Check
/* 80564310  2C 03 00 00 */	cmpwi r3, 0
/* 80564314  40 82 00 30 */	bne lbl_80564344
/* 80564318  7F E4 FB 78 */	mr r4, r31
/* 8056431C  38 60 00 07 */	li r3, 7
/* 80564320  4B E3 5F 45 */	bl mDemo_Check
/* 80564324  2C 03 00 00 */	cmpwi r3, 0
/* 80564328  40 82 00 1C */	bne lbl_80564344
/* 8056432C  7F C3 F3 78 */	mr r3, r30
/* 80564330  7F E4 FB 78 */	mr r4, r31
/* 80564334  4B FF D6 25 */	bl aNNW_search_sister
/* 80564338  38 00 00 00 */	li r0, 0
/* 8056433C  98 03 09 BA */	stb r0, 0x9ba(r3)
/* 80564340  98 1F 09 BA */	stb r0, 0x9ba(r31)
lbl_80564344:
/* 80564344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80564348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056434C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80564350  7C 08 03 A6 */	mtlr r0
/* 80564354  38 21 00 10 */	addi r1, r1, 0x10
/* 80564358  4E 80 00 20 */	blr 
