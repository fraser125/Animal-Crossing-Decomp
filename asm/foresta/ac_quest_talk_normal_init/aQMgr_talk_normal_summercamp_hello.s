lbl_80495B78:
/* 80495B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495B7C  7C 08 02 A6 */	mflr r0
/* 80495B80  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 80495B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495B88  38 00 00 00 */	li r0, 0
/* 80495B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495B90  7C 7F 1B 78 */	mr r31, r3
/* 80495B94  38 64 EC A4 */	addi r3, r4, l_normal_info@l /* 0x811CECA4@l */
/* 80495B98  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 80495B9C  4B FF B9 71 */	bl aQMgr_init_normal_info
/* 80495BA0  38 60 00 07 */	li r3, 7
/* 80495BA4  38 00 00 01 */	li r0, 1
/* 80495BA8  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80495BAC  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80495BB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495BB8  7C 08 03 A6 */	mtlr r0
/* 80495BBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80495BC0  4E 80 00 20 */	blr 
