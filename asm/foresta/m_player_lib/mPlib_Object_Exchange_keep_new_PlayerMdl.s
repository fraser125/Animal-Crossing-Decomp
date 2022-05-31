lbl_803D8ECC:
/* 803D8ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D8ED0  7C 08 02 A6 */	mflr r0
/* 803D8ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D8ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D8EDC  83 E3 20 98 */	lwz r31, 0x2098(r3)
/* 803D8EE0  48 00 08 1D */	bl mPlib_get_player_Object_Bank
/* 803D8EE4  A8 1F 00 00 */	lha r0, 0(r31)
/* 803D8EE8  3C 80 80 65 */	lis r4, actor_dlftbls@ha /* 0x8064D528@ha */
/* 803D8EEC  38 84 D5 28 */	addi r4, r4, actor_dlftbls@l /* 0x8064D528@l */
/* 803D8EF0  54 00 28 34 */	slwi r0, r0, 5
/* 803D8EF4  7C 84 02 14 */	add r4, r4, r0
/* 803D8EF8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 803D8EFC  B0 64 00 0A */	sth r3, 0xa(r4)
/* 803D8F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D8F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D8F08  7C 08 03 A6 */	mtlr r0
/* 803D8F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D8F10  4E 80 00 20 */	blr 
