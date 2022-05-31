lbl_8063F074:
/* 8063F074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063F078  7C 08 02 A6 */	mflr r0
/* 8063F07C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063F080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063F084  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063F088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063F08C  93 C1 00 08 */	stw r30, 8(r1)
/* 8063F090  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063F094  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 8063F098  38 7E 00 08 */	addi r3, r30, 8
/* 8063F09C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F0A0  90 1E 00 00 */	stw r0, 0(r30)
/* 8063F0A4  80 65 00 00 */	lwz r3, 0(r5)
/* 8063F0A8  4B DC E3 2D */	bl _Matrix_to_Mtx_new
/* 8063F0AC  90 7E 00 04 */	stw r3, 4(r30)
/* 8063F0B0  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 8063F0B4  3C A0 80 6E */	lis r5, int_yaz_fish_trophy_pal@ha /* 0x806DF3C0@ha */
/* 8063F0B8  3C 80 81 12 */	lis r4, int_yaz_fish_trophy_cup_model@ha /* 0x8111A290@ha */
/* 8063F0BC  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 8063F0C0  3C 60 81 12 */	lis r3, int_yaz_fish_trophy_base_model@ha /* 0x8111A388@ha */
/* 8063F0C4  38 E6 00 20 */	addi r7, r6, 0x0020 /* 0xDB060020@l */
/* 8063F0C8  38 C5 F3 C0 */	addi r6, r5, int_yaz_fish_trophy_pal@l /* 0x806DF3C0@l */
/* 8063F0CC  38 08 00 08 */	addi r0, r8, 8
/* 8063F0D0  3C A0 DE 00 */	lis r5, 0xde00
/* 8063F0D4  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063F0D8  38 84 A2 90 */	addi r4, r4, int_yaz_fish_trophy_cup_model@l /* 0x8111A290@l */
/* 8063F0DC  38 03 A3 88 */	addi r0, r3, int_yaz_fish_trophy_base_model@l /* 0x8111A388@l */
/* 8063F0E0  90 E8 00 00 */	stw r7, 0(r8)
/* 8063F0E4  90 C8 00 04 */	stw r6, 4(r8)
/* 8063F0E8  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063F0EC  38 66 00 08 */	addi r3, r6, 8
/* 8063F0F0  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F0F4  90 A6 00 00 */	stw r5, 0(r6)
/* 8063F0F8  90 86 00 04 */	stw r4, 4(r6)
/* 8063F0FC  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063F100  38 64 00 08 */	addi r3, r4, 8
/* 8063F104  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063F108  90 A4 00 00 */	stw r5, 0(r4)
/* 8063F10C  90 04 00 04 */	stw r0, 4(r4)
/* 8063F110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063F114  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063F118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063F11C  7C 08 03 A6 */	mtlr r0
/* 8063F120  38 21 00 10 */	addi r1, r1, 0x10
/* 8063F124  4E 80 00 20 */	blr 
