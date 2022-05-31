lbl_80495AE4:
/* 80495AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495AE8  7C 08 02 A6 */	mflr r0
/* 80495AEC  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 80495AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495AF4  38 00 00 00 */	li r0, 0
/* 80495AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495AFC  7C 7F 1B 78 */	mr r31, r3
/* 80495B00  38 64 EC A4 */	addi r3, r4, l_normal_info@l /* 0x811CECA4@l */
/* 80495B04  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 80495B08  4B FF BA 05 */	bl aQMgr_init_normal_info
/* 80495B0C  38 60 00 07 */	li r3, 7
/* 80495B10  38 00 00 01 */	li r0, 1
/* 80495B14  98 7F 01 85 */	stb r3, 0x185(r31)
/* 80495B18  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80495B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495B24  7C 08 03 A6 */	mtlr r0
/* 80495B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80495B2C  4E 80 00 20 */	blr 
