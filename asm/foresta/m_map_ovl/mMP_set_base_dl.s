lbl_805E725C:
/* 805E725C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E7260  7C 08 02 A6 */	mflr r0
/* 805E7264  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E7268  39 61 00 20 */	addi r11, r1, 0x20
/* 805E726C  4B AB 3C 69 */	bl func_8009AED4
/* 805E7270  80 04 00 38 */	lwz r0, 0x38(r4)
/* 805E7274  7C 7F 1B 78 */	mr r31, r3
/* 805E7278  83 C3 02 D0 */	lwz r30, 0x2d0(r3)
/* 805E727C  2C 00 00 00 */	cmpwi r0, 0
/* 805E7280  40 82 00 24 */	bne lbl_805E72A4
/* 805E7284  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB06002C@ha */
/* 805E7288  3C 60 81 21 */	lis r3, kan_win_color0_mode_p@ha /* 0x812125B4@ha */
/* 805E728C  38 04 00 2C */	addi r0, r4, 0x002C /* 0xDB06002C@l */
/* 805E7290  90 1E 00 00 */	stw r0, 0(r30)
/* 805E7294  80 03 25 B4 */	lwz r0, kan_win_color0_mode_p@l(r3)  /* 0x812125B4@l */
/* 805E7298  90 1E 00 04 */	stw r0, 4(r30)
/* 805E729C  3B DE 00 08 */	addi r30, r30, 8
/* 805E72A0  48 00 00 20 */	b lbl_805E72C0
lbl_805E72A4:
/* 805E72A4  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB06002C@ha */
/* 805E72A8  3C 60 81 21 */	lis r3, kan_win_color1_mode_p@ha /* 0x812125B8@ha */
/* 805E72AC  38 04 00 2C */	addi r0, r4, 0x002C /* 0xDB06002C@l */
/* 805E72B0  90 1E 00 00 */	stw r0, 0(r30)
/* 805E72B4  80 03 25 B8 */	lwz r0, kan_win_color1_mode_p@l(r3)  /* 0x812125B8@l */
/* 805E72B8  90 1E 00 04 */	stw r0, 4(r30)
/* 805E72BC  3B DE 00 08 */	addi r30, r30, 8
lbl_805E72C0:
/* 805E72C0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805E72C4  7F DD F3 78 */	mr r29, r30
/* 805E72C8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805E72CC  7F E3 FB 78 */	mr r3, r31
/* 805E72D0  90 1E 00 00 */	stw r0, 0(r30)
/* 805E72D4  3B DE 00 08 */	addi r30, r30, 8
/* 805E72D8  4B E2 60 FD */	bl _Matrix_to_Mtx_new
/* 805E72DC  90 7D 00 04 */	stw r3, 4(r29)
/* 805E72E0  7F C4 F3 78 */	mr r4, r30
/* 805E72E4  3C 00 DE 00 */	lis r0, 0xde00
/* 805E72E8  3C 60 80 B0 */	lis r3, kan_win_model@ha /* 0x80B07310@ha */
/* 805E72EC  90 1E 00 00 */	stw r0, 0(r30)
/* 805E72F0  38 03 73 10 */	addi r0, r3, kan_win_model@l /* 0x80B07310@l */
/* 805E72F4  3B DE 00 08 */	addi r30, r30, 8
/* 805E72F8  90 04 00 04 */	stw r0, 4(r4)
/* 805E72FC  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 805E7300  39 61 00 20 */	addi r11, r1, 0x20
/* 805E7304  4B AB 3C 1D */	bl func_8009AF20
/* 805E7308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E730C  7C 08 03 A6 */	mtlr r0
/* 805E7310  38 21 00 20 */	addi r1, r1, 0x20
/* 805E7314  4E 80 00 20 */	blr 
