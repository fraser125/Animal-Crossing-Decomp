lbl_8063FC9C:
/* 8063FC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063FCA0  7C 08 02 A6 */	mflr r0
/* 8063FCA4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063FCA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063FCAC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063FCB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063FCB4  93 C1 00 08 */	stw r30, 8(r1)
/* 8063FCB8  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063FCBC  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063FCC0  38 7E 00 08 */	addi r3, r30, 8
/* 8063FCC4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063FCC8  90 1E 00 00 */	stw r0, 0(r30)
/* 8063FCCC  80 65 00 00 */	lwz r3, 0(r5)
/* 8063FCD0  4B DC D7 05 */	bl _Matrix_to_Mtx_new
/* 8063FCD4  90 7E 00 04 */	stw r3, 4(r30)
/* 8063FCD8  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 8063FCDC  3C A0 80 6E */	lis r5, int_yaz_fish_trophy2_pal@ha /* 0x806DFB40@ha */
/* 8063FCE0  3C 80 81 12 */	lis r4, int_yaz_fish_trophy_cup_model@ha /* 0x8111A290@ha */
/* 8063FCE4  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8063FCE8  3C 60 81 12 */	lis r3, int_yaz_fish_trophy_base_model@ha /* 0x8111A388@ha */
/* 8063FCEC  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 8063FCF0  38 C5 FB 40 */	addi r6, r5, int_yaz_fish_trophy2_pal@l /* 0x806DFB40@l */
/* 8063FCF4  38 08 00 08 */	addi r0, r8, 8
/* 8063FCF8  3C A0 DE 00 */	lis r5, 0xde00
/* 8063FCFC  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063FD00  38 84 A2 90 */	addi r4, r4, int_yaz_fish_trophy_cup_model@l /* 0x8111A290@l */
/* 8063FD04  38 03 A3 88 */	addi r0, r3, int_yaz_fish_trophy_base_model@l /* 0x8111A388@l */
/* 8063FD08  90 E8 00 00 */	stw r7, 0(r8)
/* 8063FD0C  90 C8 00 04 */	stw r6, 4(r8)
/* 8063FD10  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063FD14  38 66 00 08 */	addi r3, r6, 8
/* 8063FD18  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063FD1C  90 A6 00 00 */	stw r5, 0(r6)
/* 8063FD20  90 86 00 04 */	stw r4, 4(r6)
/* 8063FD24  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063FD28  38 64 00 08 */	addi r3, r4, 8
/* 8063FD2C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063FD30  90 A4 00 00 */	stw r5, 0(r4)
/* 8063FD34  90 04 00 04 */	stw r0, 4(r4)
/* 8063FD38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063FD3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063FD40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063FD44  7C 08 03 A6 */	mtlr r0
/* 8063FD48  38 21 00 10 */	addi r1, r1, 0x10
/* 8063FD4C  4E 80 00 20 */	blr 
